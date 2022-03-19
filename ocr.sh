xfce4-screenshooter -r --save /tmp/ocr-tmp.png
# gnome-screenshot -a --save /tmp/ocr-tmp.png
tesseract -l eng /tmp/ocr-tmp.png /tmp/ocr-output
cat /tmp/ocr-output.txt | tr "\n" " " | xclip -in -selection clipboard
rm /tmp/ocr-tmp.png /tmp/ocr-output.txt
