# 2026-02-19T14:19:32.917637700
import vitis

client = vitis.create_client()
client.set_workspace(path="GT_Zynq_R1")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../../GT_Zybo/design_1_wrapper_06.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",compiler = "gcc")

comp = client.create_app_component(name="GT_App",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_ps7_cortexa9_0",template = "hello_world")

platform = client.get_component(name="platform")
status = platform.build()

status = platform.build()

status = platform.build()

comp = client.get_component(name="GT_App")
comp.build()

status = platform.build()

comp.build()

comp = client.get_component(name="GT_App")
status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../GT_Zynq/main/src", files=["Adafruit_MLX90393.c", "Adafruit_MLX90393.h", "commonDisplayHandler.c", "commonDisplayHandler.h", "compile_commands.json", "displayHandler.c", "displayHandler.h", "drawObjects.h", "gameEngine.c", "gameEngine.h", "gpioHandler.c", "gpioHandler.h", "ioHandler.c", "ioHandler.h", "lscript.ld", "main.c"], dest_dir_in_cmp = "src", is_skip_copy_sources = False)

status = platform.build()

comp = client.get_component(name="GT_App")
comp.build()

status = platform.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

