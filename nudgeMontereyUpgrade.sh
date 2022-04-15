#!/bin/sh

cat <<EOF > /Library/Application\ Support/JAMF/nudge.json
{
    "preferences": {
        "button_title_text": "Ready to start the update?",
        "button_sub_titletext": "Click on the button below.",
        "cut_off_date": "2022-04-15-18:00",
        "cut_off_date_warning": 30,
        "days_between_notifications": 0,
        "logo_path": "/Library/nudge/Resources/company_logo.png",
        "main_subtitle_text": " ",
        "main_title_text": "macOS Update",
        "minimum_os_sub_build_version": "21D62",
        "minimum_os_version": "12.2.1",
        "no_timer": false,
        "paragraph_title_text": "A major macOS update is required on your computer.",
        "paragraph1_text": "This update is required to ensure a secure and resilient computing environment.",
        "paragraph2_text": "To begin the update, click on the \"Update Now\" button below and follow the prompts.",
        "paragraph3_text": "You can delay the update for the number of Days Remaining listed on the left. Once this period expires the update will be enforced.",
        "path_to_app": "/Applications/Install macOS Monterey.app",
        "local_url_for_upgrade": "jamfselfservice://content?entity=policy&id=857&action=execute",
        "random_delay": false,
        "screenshot_path": "/Library/nudge/Resources/update_ss.png",
        "timer_day_1": 7200,
        "timer_day_3": 43200,
        "timer_final": 300,
        "timer_elapsed": 60,
        "timer_initial": 43200
    }
}
EOF
