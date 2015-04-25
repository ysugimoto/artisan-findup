all: linux-x64 linux-i386 darwin windows-x64 windows-i386

linux-x64:
	GOOS=linux GOARC=amd64 go build -o build/linux_x64/artisanc main.go
	cd build/linux_x64; tar cvfz artisanc_linux64.tar.gz artisanc

linux-i386:
	GOOS=linux GOARC=386 go build -o build/linux_i386/artisanc main.go
	cd build/linux_i386; tar cvfz artisanc_linuxi386.tar.gz artisanc

darwin:
	GOOS=darwin GOARC=amd64 go build -o build/darwin/artisanc main.go
	cd build/darwin; tar cvfz artisanc_macos.tar.gz artisanc

windows-x64:
	GOOS=windows GOARC=amd64 go build -o build/windows_x64/artisanc main.go
	cd build/windows_x64; tar cvfz artisanc_windows64.tar.gz artisanc

windows-i386:
	GOOS=windows GOARC=386 go build -o build/windows_i386/artisanc main.go
	cd build/windows_i386; tar cvfz artisanc_windowsi386.tar.gz artisanc
