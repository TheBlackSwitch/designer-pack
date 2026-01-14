dialog clear @s
scoreboard players set @s designer_config 0
tellraw @s [{text: "[\u2692 Designer \u2692]: ", color: "blue", bold: true}, {text: "Use ", color: "yellow", bold: false}, {text: "/trigger designer ", color: "gold", bold: false, hover_event: {action: "show_text", value: {text: "Click to run in chat"}}, click_event: {action: "suggest_command", command: "/trigger designer"}}, {text: "to go to a creative plot.", bold: false, color: "yellow"}]
