# Dựa trên image gốc
FROM phamvanminh7531/falco_brain:1.1.10

# Ghi đè lại CMD cũ bằng một dòng mới, tối ưu VRAM

# Fix lỗi "OSError: [Errno 12] Cannot allocate memory" khi chạy trên GPU với VRAM thấp trên Windows 11 cuda 12.6 RTX 4070 Ti
# CMD ["python3", "main.py", "--listen", "0.0.0.0", "--port", "8188", "--lowvram", "--disable-smart-memory"]


# Fix lỗi "OSError: [Errno 12] Cannot allocate memory" khi chạy trên GPU với VRAM thấp trên Ubuntu 22.04 Cuda 12.8 RTX 5070 Ti
CMD ["python3", "main.py", "--listen", "0.0.0.0", "--port", "8188", "--lowvram", "--reserve-vram", "1.0", "--disable-smart-memory"]