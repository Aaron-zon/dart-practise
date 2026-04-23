# 定义与类的关系

命令行界面 (CLI) 由用户可以在终端中输入的命令、选项和参数定义。

本程序中，介绍了以下内容

```bash
dartpedia help --verbose --command=search
```

以下是各部分的详细说明：

- dartpedia这是可执行文件，也就是您的应用程序的名称。
- help这是一个命令，即您希望应用程序执行的操作。
- --verbose这是一个标志（一种不带值的选项），用于修改命令的行为。
- --command=search这是一个需要取值的选项option。这里，该选项名为command，其值为 search。

## 执行

```bash
cd cli
dart run bin/cli.dart help
```