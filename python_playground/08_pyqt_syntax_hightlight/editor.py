
import sys
from PyQt5.QtWidgets import QApplication, QTextEdit

def main():
    app = QApplication(sys.argv)

    editor = QTextEdit()
    editor.show()

    sys.exit(app.exec_())

if __name__ == '__main__':
    main()
