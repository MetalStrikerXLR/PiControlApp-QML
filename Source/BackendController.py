import csv
import cups
import RPi.GPIO as GPIO
from PyQt5.QtCore import QObject, pyqtSignal, pyqtProperty, pyqtSlot


class BackendController(QObject):
    loginSuccessState = pyqtSignal(bool)
    addToTable = pyqtSignal(list)
    loggedInUserChanged = pyqtSignal()

    def __init__(self, parent=None):
        super().__init__(parent)

        self.m_credentials = {}
        self.m_loggedInState = False
        self.m_loggedInUser = ""

        GPIO.setmode(GPIO.BCM)
        self.initializeGPIO()
        # GPIO.setup(1, GPIO.OUT) # Could fix PWM issue
        self.m_pwmDutyCycle = 0
        self.m_pwmFrequency = 1000
        self.m_pwm = GPIO.PWM(1, self.m_pwmFrequency)
        self.m_pwm.start(self.m_pwmDutyCycle)

        self.m_credentialFile = "./CSV/credentials.csv"
        self.m_printDataFile = "./CSV/printdata.csv"
        self.readUserDetails()

        print("Backend init complete")

    @pyqtSlot()
    def readUserDetails(self):
        with open(self.m_credentialFile, newline='') as csvfile:
            reader = csv.DictReader(csvfile)
            for row in reader:
                self.m_credentials[row['username']] = row['password']

    @pyqtSlot()
    def readPrintData(self):
        with open(self.m_printDataFile, newline='') as csvfile:
            reader = csv.DictReader(csvfile)
            for row in reader:
                self.addToTable.emit([row['label1'], row['label2'], row['label3'], row['label4']])

    @pyqtSlot(str, str)
    def checkLogin(self, username, password):

        if username in self.m_credentials and self.m_credentials[username] == password:
            self.m_loggedInState = True
            self.loggedInUser = username
        else:
            self.m_loggedInState = False
            self.loggedInUser = ""

        print("Login Success: ", self.m_loggedInState)
        self.loginSuccessState.emit(self.m_loggedInState)

    @pyqtSlot()
    def initializeGPIO(self):
        GPIO.setup(0, GPIO.OUT)
        GPIO.setup(2, GPIO.OUT)
        GPIO.setup(3, GPIO.OUT)

    @pyqtSlot()
    def restAllGPIO(self):
        GPIO.output(0, False)
        GPIO.output(2, False)
        GPIO.output(3, False)

    @pyqtSlot(int)
    def turnOnGPIO(self, pin):
        if GPIO.input(pin) is True:
            return

        GPIO.output(pin, True)

    @pyqtSlot(int)
    def turnOffGPIO(self, pin):
        if GPIO.input(pin) is False:
            return

        GPIO.output(pin, False)

    @pyqtSlot(float)
    def setPWM(self, value):
        if value < 0:
            value = 0

        if value > 1:
            value = 1

        self.m_pwmDutyCycle = int(value * 100)
        self.m_pwm.ChangeDutyCycle(self.m_pwmDutyCycle)

    @pyqtSlot()
    def executePrint(self):
        print("Starting print job...")
        try:
            conn = cups.Connection()
            printers = conn.getPrinters()
            if printers:
                printer_name = list(printers.keys())[0]  # Use the first printer found
                with open(self.m_printDataFile, "r") as file:
                    contents = file.read()
                    job_id = conn.printFile(printer_name, self.m_printDataFile, "Printing Credentials", {})
                    print(f"Printing content on {printer_name}. Job ID: {job_id}")
            else:
                print("No printers found.")
        except FileNotFoundError:
            print("Error: File with content data not found.")
        pass

    @pyqtSlot()
    def closeApp(self):
        self.m_pwm.stop()
        GPIO.cleanup()

    @pyqtProperty(str, notify=loggedInUserChanged)
    def loggedInUser(self):
        return self.m_loggedInUser

    @loggedInUser.setter
    def loggedInUser(self, username):
        self.m_loggedInUser = username
        self.loggedInUserChanged.emit()
