import csv
# import cups
# import RPi.GPIO as GPIO
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

        # GPIO.setmode(GPIO.BCM)
        # GPIO.setup(1, GPIO.OUT)
        # self.m_pwmDutyCycle = 0
        # self.m_pwmFrequency = 1000
        # self.m_pwm = GPIO.PWM(1, self.m_pwmFrequency)
        # self.m_pwm.start(self.m_pwmDutyCycle)

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

    @pyqtSlot(int)
    def toggleGPIO(self, pin):
        # GPIO.setup(pin, GPIO.OUT)
        #
        # current_state = GPIO.input(pinr)
        # GPIO.output(pin, not current_state)
        pass

    @pyqtSlot(float)
    def setPWM(self, value):
        if value < 0:
            value = 0

        if value > 1:
            value = 1

        # self.m_pwmDutyCycle = value * 100
        # self.m_pwm.ChangeDutyCycle(self.m_pwmDutyCycle)

    @pyqtSlot()
    def executePrint(self):
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

    @pyqtSlot()
    def closeApp(self):
        # Clean up GPIO settings
        # self.m_pwm.stop()
        # GPIO.cleanup()
        pass

    @pyqtProperty(str, notify=loggedInUserChanged)
    def loggedInUser(self):
        return self.m_loggedInUser

    @loggedInUser.setter
    def loggedInUser(self, username):
        self.m_loggedInUser = username
        self.loggedInUserChanged.emit()