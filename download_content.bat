@echo off
echo [RCLONE] Google Drive���� Content ���� �ٿ�ε� ����...

REM Google Drive remote �̸� (rclone config���� ������ �̸�)
set REMOTE_NAME=gdrive

REM Google Drive ���� ���
set REMOTE_PATH=%REMOTE_NAME%:/unreal_resource/project_pf/

REM ���� ��� (Content ������ ����)
set LOCAL_PATH=Content

REM rclone copy: ����� ���ϸ� �ٿ�ε�
rclone copy "%REMOTE_PATH%" "%LOCAL_PATH%" --progress

echo [RCLONE] �ٿ�ε� �Ϸ�!
pause
