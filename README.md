# zig_colored_logger
Simple colored logger for the std.log.LogFn

## Usage

To add the project in your `build.zig.zon`:

`zig fetch --save git+https://github.com/4zv4l/zig_colored_logger`

Then and this in `build.zig`:

```rs
const colored_logger = b.dependency("colored_logger", .{ .project_name = exe.name });
exe.root_module.addImport("colored_logger", colored_logger.module("colored_logger"));
```

> This library depends on Chameleon https://github.com/tr1ckydev/chameleon

## How it looks like
<img width="625" alt="image" src="https://github.com/user-attachments/assets/b74ac911-fead-46f5-a4ee-1b2eb3890918">
