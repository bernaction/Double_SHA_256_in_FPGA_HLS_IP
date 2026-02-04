# 2025-06-09T16:12:26.326765400
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_HLS")

comp = client.get_component(name="hls_component")
comp.run(operation="SYNTHESIS")

vitis.dispose()

