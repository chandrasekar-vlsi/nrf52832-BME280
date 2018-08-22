rm -r _build 
make

nrfutil settings generate --family NRF52 --application _build/nrf52832_xxaa.hex --application-version 1 --bootloader-version 1 --bl-settings-version 1 settings.hex

~/nrf52/nrf52832/nRF5x-Command-Line-Tools_9_7_3_Linux-x86_64/mergehex/mergehex -m ~/nrf52/nrf52832/nRF5_SDK_12.3.0_d7731ad/components/softdevice/s132/hex/s132_nrf52_3.0.0_softdevice.hex ~/nrf52/nrf52832/bootloader/bootloader.hex settings.hex -o sbc.hex


~/nrf52/nrf52832/nRF5x-Command-Line-Tools_9_7_3_Linux-x86_64/mergehex/mergehex -m sbc.hex _build/nrf52832_xxaa.hex  -o packet.hex


~/nrf52/nrf52832/nRF5x-Command-Line-Tools_9_7_3_Linux-x86_64/nrfjprog/nrfjprog --family nrf52 --eraseall
~/nrf52/nrf52832/nRF5x-Command-Line-Tools_9_7_3_Linux-x86_64/nrfjprog/nrfjprog --family nrf52 --program packet.hex
~/nrf52/nrf52832/nRF5x-Command-Line-Tools_9_7_3_Linux-x86_64/nrfjprog/nrfjprog --family nrf52 --reset



