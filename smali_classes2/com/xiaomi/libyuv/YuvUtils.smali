.class public Lcom/xiaomi/libyuv/YuvUtils;
.super Ljava/lang/Object;
.source "YuvUtils.java"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "camera_yuv_jni"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native I420ToNV21([B[BIIZ)I
.end method

.method public static native NV21Crop([BII[BIIIII)I
.end method

.method public static native NV21Mirror([BII[B)V
.end method

.method public static native NV21Rotate([BII[BI)I
.end method

.method public static native NV21Scale([BII[BIII)V
.end method

.method public static native NV21ToRGBA([B[BII)I
.end method

.method public static native RGBAToNv21([B[BII)I
.end method

.method public static horizontalSplicing(Landroid/graphics/YuvImage;Landroid/graphics/YuvImage;)Landroid/graphics/YuvImage;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v1

    .line 3
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v4, v2, [B

    .line 4
    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    .line 5
    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v3

    .line 6
    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v6, v2, :cond_0

    mul-int v8, v6, v3

    .line 7
    invoke-static {v0, v8, v4, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v7, v3

    mul-int v8, v6, v5

    .line 8
    invoke-static {v1, v8, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v7, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v5, 0x11

    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getWidth()I

    move-result p1

    add-int v6, v1, p1

    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    return-object v0
.end method

.method public static verticalSplicing([BLandroid/graphics/YuvImage;Landroid/graphics/YuvImage;)Landroid/graphics/YuvImage;
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    const/4 v3, 0x0

    .line 4
    invoke-static {v0, v3, p0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v2, 0x0

    .line 5
    invoke-virtual {p2}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    .line 6
    invoke-static {v1, v3, p0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v5

    .line 7
    div-int/lit8 v3, v2, 0x2

    .line 8
    invoke-static {v0, v2, p0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v3

    .line 9
    div-int/lit8 v0, v5, 0x2

    .line 10
    invoke-static {v1, v5, p0, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    new-instance v0, Landroid/graphics/YuvImage;

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getHeight()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/YuvImage;->getHeight()I

    move-result p2

    add-int v10, p1, p2

    const/16 v8, 0x11

    const/4 v11, 0x0

    move-object v6, v0

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    return-object v0
.end method
