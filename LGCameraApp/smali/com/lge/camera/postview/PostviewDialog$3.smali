.class Lcom/lge/camera/postview/PostviewDialog$3;
.super Ljava/lang/Object;
.source "PostviewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/postview/PostviewDialog;->createDeleteMultiPopup()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/postview/PostviewDialog;


# direct methods
.method constructor <init>(Lcom/lge/camera/postview/PostviewDialog;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/lge/camera/postview/PostviewDialog$3;->this$0:Lcom/lge/camera/postview/PostviewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 220
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewDialog$3;->this$0:Lcom/lge/camera/postview/PostviewDialog;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostviewDialog;->dismiss()V

    .line 221
    return-void
.end method
