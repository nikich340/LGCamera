.class Lcom/lge/camera/dialog/MassStorageRotatableDialog$1;
.super Ljava/lang/Object;
.source "MassStorageRotatableDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/dialog/MassStorageRotatableDialog;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/dialog/MassStorageRotatableDialog;


# direct methods
.method constructor <init>(Lcom/lge/camera/dialog/MassStorageRotatableDialog;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/lge/camera/dialog/MassStorageRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/MassStorageRotatableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    const-string v0, "CameraApp"

    const-string v1, "ok button click...."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/lge/camera/dialog/MassStorageRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/MassStorageRotatableDialog;

    iget-object v0, v0, Lcom/lge/camera/dialog/MassStorageRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 61
    return-void
.end method
