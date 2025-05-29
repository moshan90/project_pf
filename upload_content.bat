@echo off
echo [RCLONE] Unreal ������Ʈ Content ���� ���ε� ����...

REM Google Drive remote �̸� (rclone config���� ������ �̸�)
set REMOTE_NAME=gdrive

REM Google Drive ���� ���
set REMOTE_PATH=%REMOTE_NAME%:/unreal_resource/project_pf/

REM ���� Content ���� ���
set LOCAL_PATH=Content

REM rclone copy ��� ���� (����� ���ϸ� ���ε�)
rclone copy "%LOCAL_PATH%" "%REMOTE_PATH%" --progress

echo [RCLONE] ���ε� �Ϸ�!
pause