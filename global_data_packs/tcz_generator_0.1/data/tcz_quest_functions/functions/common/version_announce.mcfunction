tellraw @a [{"text": "Текущая версия квестов: "},{"score":{"name": "#questsMajor","objective": "tcz_versions"}},{"text": "."},{"score":{"name": "#questsMinor","objective": "tcz_versions"}}]
tellraw @a [{"text": "ВНИМАНИЕ! ВЫ ИГРАЕТЕ В ЗБТ ВЕРСИЮ. ОБО ВСЕХ ОШИБКАХ СООБЩАТЬ В ГРУППУ ВКОНТАКТЕ: ", "color": "red"},{"text": "vk.com/thecreeezchannel", "color":"gold","clickEvent": {"action": "open_url", "value": "https://vk.com/thecreeezchannel"}}]

scoreboard players set #isQuestsAnnounced tcz_versions 1