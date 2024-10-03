from rich import print # type: ignore
import psutil # type: ignore
import subprocess
import os
import re
import platform
import time


def get_macos_version():
    return platform.mac_ver()[0]


try:
    if hasattr(os, 'uname'):
        version_info = os.uname().release.split('.')
        kernel_version = '.'.join(version_info[:3])
    else:
        process = subprocess.run(["uname", "-r"], capture_output=True, check=True)
        kernel_version = process.stdout.decode('utf-8').strip()
        kernel_version = '.'.join(kernel_version.split('.')[:3])
except (AttributeError, subprocess.CalledProcessError):
    kernel_version = "Unable to determine kernel version."


def get_zsh_version():
    try:
        process = subprocess.run(["zsh", "--version"], capture_output=True, check=True)
        zsh_version = process.stdout.decode('utf-8').strip()
        match = re.search(r"zsh ([\d.]+)", zsh_version)
        if match:
            return match.group(1)
        else:
            return "Unknown zsh version"
    except subprocess.CalledProcessError:
        return "zsh not found or inaccessible."

zsh_version = get_zsh_version()




def get_uptime():
    uptime = psutil.boot_time()
    uptime_seconds = time.time() - uptime
    uptime_days = int(uptime_seconds / (24 * 60 * 60))
    uptime_hours = int((uptime_seconds % (24 * 60 * 60)) / (60 * 60))
    uptime_minutes = int((uptime_seconds % (60 * 60)) / 60)

    if uptime_days > 0:
        return f"{uptime_days}d {uptime_hours}h {uptime_minutes}m"
    elif uptime_hours > 0:
        return f"{uptime_hours}h {uptime_minutes}m"
    else:
        return f"{uptime_minutes}m"


def get_memory_usage():
    memory = psutil.virtual_memory()
    total_memory_gb = round(memory.total / (1024 * 1024 * 1024), 2)
    used_memory_gb = round(memory.used / (1024 * 1024 * 1024), 2)
    return total_memory_gb, used_memory_gb


if __name__ == "__main__":
    version = get_macos_version()
    uptime = get_uptime()
    total_memory_gb, used_memory_gb = get_memory_usage()

    print("   ")
    print(f"""
               [yellow]napkin@aqua
[medium_purple1]　/l 、        [green]os       [white]macOS {version}
[medium_purple1]（ﾟ､ ｡ ７       [green]kernel   [white]{kernel_version}
[medium_purple1]  l、~ ヽ      [green]uptime   [white]{uptime}
[medium_purple1]  ししと ）ノ  [green]memory   [white]{used_memory_gb} GB / {total_memory_gb} GB
               [green]shell    [white]zsh {zsh_version}""")

    print("   ")
    print(" [white]   [red]   [green]   [magenta]   [yellow]   [blue]   [purple]   [cyan]   [black]   ")
