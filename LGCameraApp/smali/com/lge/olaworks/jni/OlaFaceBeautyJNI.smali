.class public Lcom/lge/olaworks/jni/OlaFaceBeautyJNI;
.super Ljava/lang/Object;
.source "OlaFaceBeautyJNI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OlaFaceBeautyJNI"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 14
    :try_start_0
    const-string v2, "OlaLGECameraJNI_4"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    const-string v2, "OlaFaceBeautyJNI"

    const-string v3, "OlaFaceBeautyJNI-end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :goto_0
    return-void

    .line 15
    :catch_0
    move-exception v0

    .line 16
    .local v0, "se":Ljava/lang/SecurityException;
    :try_start_1
    const-string v2, "OlaFaceBeautyJNI"

    const-string v3, "SecurityException"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    const-string v2, "OlaFaceBeautyJNI"

    const-string v3, "OlaFaceBeautyJNI-end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    .end local v0    # "se":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 18
    .local v1, "ule":Ljava/lang/UnsatisfiedLinkError;
    :try_start_2
    const-string v2, "OlaFaceBeautyJNI"

    const-string v3, "UnsatisfiedLinkError"

    invoke-static {v2, v3, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    const-string v2, "OlaFaceBeautyJNI"

    const-string v3, "OlaFaceBeautyJNI-end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "ule":Ljava/lang/UnsatisfiedLinkError;
    .restart local v0    # "se":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v2

    .end local v0    # "se":Ljava/lang/SecurityException;
    const-string v3, "OlaFaceBeautyJNI"

    const-string v4, "OlaFaceBeautyJNI-end"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native processImage(Landroid/graphics/Bitmap;III)I
.end method

.method public static native processImage(Lcom/lge/olaworks/datastruct/JOlaBitmap;III)I
.end method
