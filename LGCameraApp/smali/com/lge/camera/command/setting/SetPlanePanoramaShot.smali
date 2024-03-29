.class public Lcom/lge/camera/command/setting/SetPlanePanoramaShot;
.super Lcom/lge/camera/command/setting/CameraSettingCommand;
.source "SetPlanePanoramaShot.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/CameraSettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 23
    return-void
.end method


# virtual methods
.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;)V
    .locals 1
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetPlanePanoramaShot;->execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V
    .locals 5
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    const-string v0, "CameraApp"

    const-string v1, "SetPlanePanoramaShot"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "dual-recorder"

    invoke-virtual {v0, v1, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 34
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetPlanePanoramaShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "PlanePanoramaShot"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setModule(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetPlanePanoramaShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_plane_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 36
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetPlanePanoramaShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-interface {v0, v1, v4, v4, v3}, Lcom/lge/camera/ControllerFunction;->setTimerAndSceneSmartShutterEnable(Landroid/hardware/Camera$Parameters;ZZZ)V

    .line 37
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetPlanePanoramaShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1}, Lcom/lge/camera/ControllerFunction;->updateFlashIndicator(ZLjava/lang/String;)V

    .line 38
    return-void
.end method
