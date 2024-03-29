.class public Lcom/lge/camera/components/BurstShotProgressBar;
.super Landroid/widget/ImageView;
.source "BurstShotProgressBar.java"


# static fields
.field public static final FORWARD:I = 0x0

.field public static final REVERSE:I = 0x1


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mCurs:I

.field private mDirection:I

.field private mDrawWidth:I

.field private mHeight:I

.field private mMax:I

.field private mPadding:I

.field private mStep:F

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 18
    const-string v0, "CameraApp"

    iput-object v0, p0, Lcom/lge/camera/components/BurstShotProgressBar;->TAG:Ljava/lang/String;

    .line 22
    const/16 v0, 0x14

    iput v0, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mMax:I

    .line 23
    iput v1, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mPadding:I

    .line 24
    iput v1, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mCurs:I

    .line 29
    iput v1, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mDirection:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const-string v0, "CameraApp"

    iput-object v0, p0, Lcom/lge/camera/components/BurstShotProgressBar;->TAG:Ljava/lang/String;

    .line 22
    const/16 v0, 0x14

    iput v0, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mMax:I

    .line 23
    iput v1, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mPadding:I

    .line 24
    iput v1, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mCurs:I

    .line 29
    iput v1, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mDirection:I

    .line 37
    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mMax:I

    return v0
.end method

.method public initBurstShotProgressBar(III)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "maxCount"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mWidth:I

    .line 41
    iput p2, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mHeight:I

    .line 42
    iput p3, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mMax:I

    .line 43
    iget v0, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mWidth:I

    iget v1, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mDrawWidth:I

    .line 44
    iget v0, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mMax:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mDrawWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mStep:F

    .line 45
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 64
    iget v1, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mCurs:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mStep:F

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 65
    .local v0, "value":I
    iget v1, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mDirection:I

    if-nez v1, :cond_0

    .line 66
    iget v1, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mHeight:I

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 70
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 71
    return-void

    .line 68
    :cond_0
    iget v1, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mDrawWidth:I

    sub-int/2addr v1, v0

    iget v2, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mDrawWidth:I

    iget v3, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mHeight:I

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0
.end method

.method public setDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mDirection:I

    .line 53
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 56
    iget v0, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mMax:I

    if-le p1, v0, :cond_0

    .line 57
    iget p1, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mMax:I

    .line 58
    :cond_0
    iput p1, p0, Lcom/lge/camera/components/BurstShotProgressBar;->mCurs:I

    .line 59
    invoke-virtual {p0}, Lcom/lge/camera/components/BurstShotProgressBar;->invalidate()V

    .line 60
    return-void
.end method
