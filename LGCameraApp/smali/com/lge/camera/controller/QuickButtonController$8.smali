.class Lcom/lge/camera/controller/QuickButtonController$8;
.super Ljava/lang/Object;
.source "QuickButtonController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/QuickButtonController;->setButtonRemainEnabled(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/QuickButtonController;

.field final synthetic val$buttonType:I

.field final synthetic val$enable:Z

.field final synthetic val$useDefaultIconDisable:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickButtonController;IZZ)V
    .locals 0

    .prologue
    .line 1111
    iput-object p1, p0, Lcom/lge/camera/controller/QuickButtonController$8;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iput p2, p0, Lcom/lge/camera/controller/QuickButtonController$8;->val$buttonType:I

    iput-boolean p3, p0, Lcom/lge/camera/controller/QuickButtonController$8;->val$enable:Z

    iput-boolean p4, p0, Lcom/lge/camera/controller/QuickButtonController$8;->val$useDefaultIconDisable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v7, 0x64

    .line 1113
    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController$8;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v4, v4, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 1114
    iget v4, p0, Lcom/lge/camera/controller/QuickButtonController$8;->val$buttonType:I

    if-eq v4, v7, :cond_0

    .line 1115
    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController$8;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget v5, p0, Lcom/lge/camera/controller/QuickButtonController$8;->val$buttonType:I

    iget-boolean v6, p0, Lcom/lge/camera/controller/QuickButtonController$8;->val$enable:Z

    # invokes: Lcom/lge/camera/controller/QuickButtonController;->setButtonGroupEnable(IZ)V
    invoke-static {v4, v5, v6}, Lcom/lge/camera/controller/QuickButtonController;->access$1200(Lcom/lge/camera/controller/QuickButtonController;IZ)V

    .line 1117
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController$8;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    # getter for: Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lge/camera/controller/QuickButtonController;->access$800(Lcom/lge/camera/controller/QuickButtonController;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController$8;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    # getter for: Lcom/lge/camera/controller/QuickButtonController;->isForcedMenuDisable:Z
    invoke-static {v4}, Lcom/lge/camera/controller/QuickButtonController;->access$1300(Lcom/lge/camera/controller/QuickButtonController;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1138
    :cond_1
    return-void

    .line 1121
    :cond_2
    const/16 v3, 0x64

    .line 1122
    .local v3, "tag":I
    const/4 v0, 0x0

    .line 1124
    .local v0, "button":Lcom/lge/camera/components/RotateImageButton;
    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController$8;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    # getter for: Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lge/camera/controller/QuickButtonController;->access$800(Lcom/lge/camera/controller/QuickButtonController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    .line 1125
    .local v2, "quickButton":Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    invoke-virtual {v2}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v0

    .line 1126
    if-eqz v0, :cond_3

    .line 1127
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageButton;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1128
    iget v4, p0, Lcom/lge/camera/controller/QuickButtonController$8;->val$buttonType:I

    if-eq v4, v7, :cond_4

    iget v4, p0, Lcom/lge/camera/controller/QuickButtonController$8;->val$buttonType:I

    if-ne v4, v3, :cond_3

    .line 1129
    :cond_4
    iget-boolean v4, p0, Lcom/lge/camera/controller/QuickButtonController$8;->val$enable:Z

    invoke-virtual {v0, v4}, Lcom/lge/camera/components/RotateImageButton;->setEnabled(Z)V

    .line 1130
    iget-boolean v4, p0, Lcom/lge/camera/controller/QuickButtonController$8;->val$enable:Z

    invoke-virtual {v2, v4}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->setEnable(Z)V

    .line 1131
    iget-boolean v4, p0, Lcom/lge/camera/controller/QuickButtonController$8;->val$useDefaultIconDisable:Z

    if-nez v4, :cond_5

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v2, v4}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->setNeedDefault(Z)V

    .line 1132
    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController$8;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-boolean v5, p0, Lcom/lge/camera/controller/QuickButtonController$8;->val$enable:Z

    # invokes: Lcom/lge/camera/controller/QuickButtonController;->setButtonGroupEnable(IZ)V
    invoke-static {v4, v3, v5}, Lcom/lge/camera/controller/QuickButtonController;->access$1200(Lcom/lge/camera/controller/QuickButtonController;IZ)V

    .line 1133
    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController$8;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget v5, p0, Lcom/lge/camera/controller/QuickButtonController$8;->val$buttonType:I

    # invokes: Lcom/lge/camera/controller/QuickButtonController;->setQuickButtonResources(I)V
    invoke-static {v4, v5}, Lcom/lge/camera/controller/QuickButtonController;->access$100(Lcom/lge/camera/controller/QuickButtonController;I)V

    .line 1134
    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController$8;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-boolean v5, p0, Lcom/lge/camera/controller/QuickButtonController$8;->val$enable:Z

    # invokes: Lcom/lge/camera/controller/QuickButtonController;->setMenuDim(Lcom/lge/camera/components/RotateImageButton;Z)V
    invoke-static {v4, v0, v5}, Lcom/lge/camera/controller/QuickButtonController;->access$1100(Lcom/lge/camera/controller/QuickButtonController;Lcom/lge/camera/components/RotateImageButton;Z)V

    goto :goto_0

    .line 1131
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method
