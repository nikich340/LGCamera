.class Lcom/lge/camera/controller/PreviewController$2;
.super Ljava/lang/Object;
.source "PreviewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/PreviewController;->startPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewController;)V
    .locals 0

    .prologue
    .line 617
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewController$2;->this$0:Lcom/lge/camera/controller/PreviewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$2;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 620
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$2;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showCameraErrorAndFinish()V

    .line 621
    return-void
.end method
