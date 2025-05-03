# Dựa trên image gốc
FROM phamvanminh7531/falco_brain:1.1.10

# Ghi đè lại CMD cũ bằng một dòng mới, tối ưu VRAM
CMD ["python3", "main.py", "--listen", "0.0.0.0", "--port", "8188", "--lowvram", "--disable-smart-memory"]