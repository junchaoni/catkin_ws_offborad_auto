
(cl:in-package :asdf)

(defsystem "mavros_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :mavros_msgs-msg
)
  :components ((:file "_package")
    (:file "CommandTOL" :depends-on ("_package_CommandTOL"))
    (:file "_package_CommandTOL" :depends-on ("_package"))
    (:file "CommandHome" :depends-on ("_package_CommandHome"))
    (:file "_package_CommandHome" :depends-on ("_package"))
    (:file "CommandBool" :depends-on ("_package_CommandBool"))
    (:file "_package_CommandBool" :depends-on ("_package"))
    (:file "CommandTriggerControl" :depends-on ("_package_CommandTriggerControl"))
    (:file "_package_CommandTriggerControl" :depends-on ("_package"))
    (:file "WaypointPull" :depends-on ("_package_WaypointPull"))
    (:file "_package_WaypointPull" :depends-on ("_package"))
    (:file "WaypointSetCurrent" :depends-on ("_package_WaypointSetCurrent"))
    (:file "_package_WaypointSetCurrent" :depends-on ("_package"))
    (:file "ParamPull" :depends-on ("_package_ParamPull"))
    (:file "_package_ParamPull" :depends-on ("_package"))
    (:file "CommandLong" :depends-on ("_package_CommandLong"))
    (:file "_package_CommandLong" :depends-on ("_package"))
    (:file "FileRemoveDir" :depends-on ("_package_FileRemoveDir"))
    (:file "_package_FileRemoveDir" :depends-on ("_package"))
    (:file "FileTruncate" :depends-on ("_package_FileTruncate"))
    (:file "_package_FileTruncate" :depends-on ("_package"))
    (:file "FileOpen" :depends-on ("_package_FileOpen"))
    (:file "_package_FileOpen" :depends-on ("_package"))
    (:file "ParamPush" :depends-on ("_package_ParamPush"))
    (:file "_package_ParamPush" :depends-on ("_package"))
    (:file "FileRename" :depends-on ("_package_FileRename"))
    (:file "_package_FileRename" :depends-on ("_package"))
    (:file "WaypointPush" :depends-on ("_package_WaypointPush"))
    (:file "_package_WaypointPush" :depends-on ("_package"))
    (:file "FileRemove" :depends-on ("_package_FileRemove"))
    (:file "_package_FileRemove" :depends-on ("_package"))
    (:file "FileList" :depends-on ("_package_FileList"))
    (:file "_package_FileList" :depends-on ("_package"))
    (:file "ParamGet" :depends-on ("_package_ParamGet"))
    (:file "_package_ParamGet" :depends-on ("_package"))
    (:file "ParamSet" :depends-on ("_package_ParamSet"))
    (:file "_package_ParamSet" :depends-on ("_package"))
    (:file "FileClose" :depends-on ("_package_FileClose"))
    (:file "_package_FileClose" :depends-on ("_package"))
    (:file "StreamRate" :depends-on ("_package_StreamRate"))
    (:file "_package_StreamRate" :depends-on ("_package"))
    (:file "WaypointClear" :depends-on ("_package_WaypointClear"))
    (:file "_package_WaypointClear" :depends-on ("_package"))
    (:file "CommandInt" :depends-on ("_package_CommandInt"))
    (:file "_package_CommandInt" :depends-on ("_package"))
    (:file "FileRead" :depends-on ("_package_FileRead"))
    (:file "_package_FileRead" :depends-on ("_package"))
    (:file "SetMode" :depends-on ("_package_SetMode"))
    (:file "_package_SetMode" :depends-on ("_package"))
    (:file "FileMakeDir" :depends-on ("_package_FileMakeDir"))
    (:file "_package_FileMakeDir" :depends-on ("_package"))
    (:file "FileWrite" :depends-on ("_package_FileWrite"))
    (:file "_package_FileWrite" :depends-on ("_package"))
    (:file "FileChecksum" :depends-on ("_package_FileChecksum"))
    (:file "_package_FileChecksum" :depends-on ("_package"))
  ))