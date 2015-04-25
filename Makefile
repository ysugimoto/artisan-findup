all: linux-x64 linux-i386 darwin windows-x64 windows-i386

linux-x64:
	GOOS=linux GOARC=amd64 go build -o build/linux_x64/artisanc main.go

linux-i386:
	GOOS=linux GOARC=386 go build -o build/linux_i386/artisanc main.go

darwin:
	GOOS=darwin GOARC=amd64 go build -o build/darwin/artisanc main.go

windows-x64:
	GOOS=windows GOARC=amd64 go build -o build/windows_x64/artisanc main.go

windows-i386:
	GOOS=windows GOARC=386 go build -o build/windows_u386/artisanc main.go
