_electron_ver=0.36.12
_language_archlinux_ver=0.3.0
_language_gfm2_ver=0.90.4
_language_ini_desktop_ver=1.18.2
_language_liquid_ver=0.5.1
_language_patch2_ver=0.1.3
_language_unix_shell_ver=0.32.5
_terminal_fusion_ver=2.1.7
_about_arch_ver=1.5.18
_dark_bint_syntax_ver=0.8.9
_fusion_ui_ver=0.10.8

sed -i -e "/exception-reporting/d" \
       -e "/metrics/d" \
       -e "/-ui/d" \
       -e "/-syntax/d" \
       -e "/-theme/d" \
       -e "s/0.36.8/${_electron_ver}/g" \
       -e "s/\"language-gfm\": \".*\",/\"language-gfm2\": \"${_language_gfm2_ver}\",\n    \"language-ini-desktop\": \"${_language_ini_desktop_ver}\",\n    \"language-liquid\": \"${_language_liquid_ver}\",\n    \"language-patch2\": \"${_language_patch2_ver}\",/g" \
       -e "/\"dependencies\": {/a \
                   \"language-patch2\": \"${_language_patch2_url}\"," \
       -e "s/\"language-shellscript\": \".*\",/\"language-unix-shell\": \"${_language_unix_shell_ver}\",\n    \"language-archlinux\": \"${_language_archlinux_ver}\",\n    \"terminal-fusion\": \"${_terminal_fusion_ver}\",/g" \
       -e "s/\"about\": \".*\"/\"about-arch\": \"${_about_arch_ver}\"/g" \
       -e "/\"packageDependencies\": {/a \
            \"dark-bint-syntax\": \"${_dark_bint_syntax_ver}\",\n    \"fusion-ui\": \"${_fusion_ui_ver}\"," package.json

chmod 755 -R package.json
