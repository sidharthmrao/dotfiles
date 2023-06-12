import subprocess

modes = open("/home/crispy/dotfiles/i3/scripts/data/modes", "r").readlines()
current_config = int(open("/home/crispy/dotfiles/i3/scripts/data/current_config_file", "r").readlines()[0])

new_mode = (current_config + 1) % len(modes)
new_config = modes[new_mode].strip()

open("/home/crispy/dotfiles/i3/scripts/data/current_config_file", "w").write(str(new_mode))
open("/home/crispy/dotfiles/i3/scripts/data/current_config_file_poly", "w").write(f"CONFIG: {str(new_config).upper()}")
subprocess.Popen(['cp', f'/home/crispy/dotfiles/picom/configurations/picom-{new_config}', '/home/crispy/dotfiles/picom/picom.conf'])
subprocess.Popen(['ln', '-sf', f'/home/crispy/dotfiles/i3/config_files/i3-config-{new_config}', '/home/crispy/.i3/config'])
subprocess.Popen(["i3-msg", "reload"])

