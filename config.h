#define CMDLENGTH 45
#define DELIMITER " | "
#define CLICKABLE_BLOCKS

#define SCRIPTS_PATH    "~/.dwmblocks_cozette/"
const Block blocks[] = {
	BLOCK(SCRIPTS_PATH "get_date.sh", 1, 6),
	BLOCK(SCRIPTS_PATH "get_lang.sh", 1, 1),
	BLOCK(SCRIPTS_PATH "get_forecast.sh", 60 * 20, 5),
	BLOCK(SCRIPTS_PATH "get_usd_in_rub.sh", 60 * 60, 4),
	BLOCK(SCRIPTS_PATH "packages_info.sh", 30, 4),
	BLOCK(SCRIPTS_PATH "updates_info.sh", 30, 4),
	BLOCK(SCRIPTS_PATH "get_volume.sh", 1, 1),
	BLOCK(SCRIPTS_PATH "get_ram_usage.sh", 10, 2),
	BLOCK(SCRIPTS_PATH "get_disk_usage.sh", 10, 3),
	BLOCK(SCRIPTS_PATH "get_charge.sh", 5, 7),
};
