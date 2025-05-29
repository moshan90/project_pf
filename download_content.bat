@echo off
echo [RCLONE] Google Drive에서 Content 폴더 다운로드 시작...

REM Google Drive remote 이름 (rclone config에서 지정한 이름)
set REMOTE_NAME=gdrive

REM Google Drive 상의 경로
set REMOTE_PATH=%REMOTE_NAME%:/unreal_resource/project_pf/

REM 로컬 경로 (Content 폴더로 저장)
set LOCAL_PATH=Content

REM rclone copy: 변경된 파일만 다운로드
rclone copy "%REMOTE_PATH%" "%LOCAL_PATH%" --progress

echo [RCLONE] 다운로드 완료!
pause
