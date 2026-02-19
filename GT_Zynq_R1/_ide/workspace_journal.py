# 2026-02-19T15:15:01.384993300
import vitis

client = vitis.create_client()
client.set_workspace(path="GT_Zynq_R1")

platform = client.get_component(name="platform")
status = platform.build()

status = platform.build()

comp = client.get_component(name="GT_App")
comp.build()

