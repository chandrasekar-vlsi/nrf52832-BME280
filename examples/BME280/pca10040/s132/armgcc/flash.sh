rm -r _build 
make

nrfutil settings generate --family NRF52 --application _build/nrf52832_xxaa.hex --application-version 1 --bootloader-version 1 --bl-settings-version 1 settings.hex


/home/chandrasekar/bnode/ruuvitag_fw/nRF5x-Command-Line-Tools_9_7_3_Linux-x86_64/mergehex/mergehex -m /home/chandrasekar/bnode/ruuvitag_fw/nRF5_SDK_12.3.0_d7731ad/components/softdevice/s132/hex/s132_nrf52_3.0.0_softdevice.hex /home/chandrasekar/bnode/ruuvitag_fw/bootloader/ruuvitag_b_debug/armgcc/_build/ruuvitag_b_bootloader.hex settings.hex -o sbc.hex


/home/chandrasekar/bnode/ruuvitag_fw/nRF5x-Command-Line-Tools_9_7_3_Linux-x86_64/mergehex/mergehex -m sbc.hex _build/nrf52832_xxaa.hex  -o packet.hex


/home/chandrasekar/bnode/ruuvitag_fw/nRF5x-Command-Line-Tools_9_7_3_Linux-x86_64/nrfjprog/nrfjprog --family nrf52 --eraseall
/home/chandrasekar/bnode/ruuvitag_fw/nRF5x-Command-Line-Tools_9_7_3_Linux-x86_64/nrfjprog/nrfjprog --family nrf52 --program packet.hex
/home/chandrasekar/bnode/ruuvitag_fw/nRF5x-Command-Line-Tools_9_7_3_Linux-x86_64/nrfjprog/nrfjprog --family nrf52 --reset

