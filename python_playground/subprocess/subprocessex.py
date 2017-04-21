import subprocess

def main():
    print("Python sub process example")
    ret = subprocess.run(["ls", "-l"], stdout=subprocess.PIPE)
    print(ret.stdout)

if __name__ == "__main__":
    main()
