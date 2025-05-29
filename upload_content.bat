@echo off
echo [RCLONE] Unreal 프로젝트 Content 폴더 업로드 시작...

REM Google Drive remote 이름 (rclone config에서 설정한 이름)
set REMOTE_NAME=gdrive

REM Google Drive 내부 경로
set REMOTE_PATH=%REMOTE_NAME%:/unreal_resource/project_pf/

REM 로컬 Content 폴더 경로
set LOCAL_PATH=Content

REM rclone copy 명령 실행 (변경된 파일만 업로드)
rclone copy "%LOCAL_PATH%" "%REMOTE_PATH%" --progress

echo [RCLONE] 업로드 완료!
pause