.class public Lcom/android/camera/ImageHelper;
.super Ljava/lang/Object;
.source "ImageHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ImageHelper"

.field public static final YUV420PI420:I = 0x0

.field public static final YUV420PYU12:I = 0x0

.field public static final YUV420PYV12:I = 0x3

.field public static final YUV420SPNV12:I = 0x1

.field public static final YUV420SPNV21:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressYuv([BII[IILjava/io/OutputStream;)V
    .locals 7

    .line 1
    new-instance v6, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 2
    new-instance p0, Landroid/graphics/Rect;

    const/4 p3, 0x0

    invoke-direct {p0, p3, p3, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, p0, p4, p5}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    return-void
.end method

.method public static encodeEarlyImageToJpeg(Landroid/media/Image;I)[B
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/android/camera/ImageHelper;->getBytesFromImageAsType(Landroid/media/Image;I)[B

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Lcom/android/camera/ImageHelper;->encodeNv21ToJpeg([BIII)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeNv21ToJpeg([BIII)[B
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p3

    move-object v6, v7

    .line 2
    :try_start_1
    invoke-static/range {v1 .. v6}, Lcom/android/camera/ImageHelper;->compressYuv([BII[IILjava/io/OutputStream;)V

    .line 3
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    invoke-static {v7}, Lcom/android/camera/Util;->closeSafely(Ljava/io/Closeable;)V

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v7, v0

    :goto_0
    :try_start_2
    const-string p1, "ImageHelper"

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "encodeNv21 error, "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6
    invoke-static {v7}, Lcom/android/camera/Util;->closeSafely(Ljava/io/Closeable;)V

    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v7

    :goto_1
    invoke-static {v0}, Lcom/android/camera/Util;->closeSafely(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static getBytesFromImageAsType(Landroid/media/Image;I)[B
    .locals 22

    move/from16 v0, p1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v3

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v4

    mul-int v5, v3, v4

    const/16 v6, 0x23

    .line 4
    invoke-static {v6}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v6

    mul-int/2addr v6, v5

    div-int/lit8 v6, v6, 0x8

    new-array v1, v6, [B

    .line 5
    div-int/lit8 v6, v5, 0x4

    new-array v7, v6, [B

    .line 6
    div-int/lit8 v8, v5, 0x4

    new-array v9, v8, [B

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 7
    :goto_0
    array-length v15, v2

    if-ge v11, v15, :cond_e

    .line 8
    aget-object v15, v2, v11

    invoke-virtual {v15}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v15

    .line 9
    aget-object v16, v2, v11

    invoke-virtual/range {v16 .. v16}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v16

    .line 10
    aget-object v17, v2, v11

    invoke-virtual/range {v17 .. v17}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    move-object/from16 v17, v2

    const-string v2, "malloc_buffer"

    move/from16 v18, v13

    .line 11
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v14

    const-string v14, "==="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-lt v2, v5, :cond_0

    .line 13
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    new-array v2, v2, [B

    const-string v13, "malloc1"

    .line 14
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v2

    const-string v2, "1==="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object/from16 v2, v20

    goto :goto_2

    .line 15
    :cond_0
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    div-int/lit8 v13, v5, 0x2

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    if-lt v2, v13, :cond_1

    .line 16
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    new-array v2, v2, [B

    const-string v13, "malloc2"

    .line 17
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v2

    const-string v2, "2==="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    new-array v2, v2, [B

    const-string v13, "malloc3"

    .line 19
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v2

    const-string v2, "3==="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 20
    :goto_2
    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    if-nez v11, :cond_3

    move v13, v12

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_3
    if-ge v10, v4, :cond_2

    .line 21
    invoke-static {v2, v12, v1, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v12, v12, v16

    add-int/2addr v13, v3

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_2
    move/from16 v21, v4

    move/from16 v20, v5

    move v12, v13

    goto/16 :goto_d

    :cond_3
    const/4 v10, 0x1

    if-ne v11, v10, :cond_8

    const/4 v10, 0x0

    const/4 v13, 0x0

    .line 22
    :goto_4
    div-int/lit8 v14, v4, 0x2

    if-ge v10, v14, :cond_7

    move v14, v13

    const/4 v13, 0x0

    :goto_5
    move/from16 v20, v5

    .line 23
    div-int/lit8 v5, v3, 0x2

    if-ge v13, v5, :cond_4

    add-int/lit8 v5, v18, 0x1

    .line 24
    aget-byte v21, v2, v14

    aput-byte v21, v7, v18

    add-int/2addr v14, v15

    add-int/lit8 v13, v13, 0x1

    move/from16 v18, v5

    move/from16 v5, v20

    goto :goto_5

    :cond_4
    const/4 v5, 0x2

    if-ne v15, v5, :cond_5

    sub-int v5, v16, v3

    :goto_6
    add-int/2addr v14, v5

    goto :goto_7

    :cond_5
    const/4 v5, 0x1

    if-ne v15, v5, :cond_6

    .line 25
    div-int/lit8 v5, v3, 0x2

    sub-int v5, v16, v5

    goto :goto_6

    :cond_6
    :goto_7
    move v13, v14

    add-int/lit8 v10, v10, 0x1

    move/from16 v5, v20

    goto :goto_4

    :cond_7
    move/from16 v20, v5

    goto :goto_c

    :cond_8
    move/from16 v20, v5

    const/4 v5, 0x2

    if-ne v11, v5, :cond_d

    move/from16 v14, v19

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 26
    :goto_8
    div-int/lit8 v13, v4, 0x2

    if-ge v5, v13, :cond_c

    move v13, v10

    const/4 v10, 0x0

    :goto_9
    move/from16 v21, v4

    .line 27
    div-int/lit8 v4, v3, 0x2

    if-ge v10, v4, :cond_9

    add-int/lit8 v4, v14, 0x1

    .line 28
    aget-byte v19, v2, v13

    aput-byte v19, v9, v14

    add-int/2addr v13, v15

    add-int/lit8 v10, v10, 0x1

    move v14, v4

    move/from16 v4, v21

    goto :goto_9

    :cond_9
    const/4 v4, 0x2

    if-ne v15, v4, :cond_a

    sub-int v4, v16, v3

    :goto_a
    add-int/2addr v13, v4

    goto :goto_b

    :cond_a
    const/4 v4, 0x1

    if-ne v15, v4, :cond_b

    .line 29
    div-int/lit8 v4, v3, 0x2

    sub-int v4, v16, v4

    goto :goto_a

    :cond_b
    :goto_b
    move v10, v13

    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v21

    goto :goto_8

    :cond_c
    move/from16 v21, v4

    move/from16 v13, v18

    goto :goto_e

    :cond_d
    :goto_c
    move/from16 v21, v4

    :goto_d
    move/from16 v13, v18

    move/from16 v14, v19

    :goto_e
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v17

    move/from16 v5, v20

    move/from16 v4, v21

    goto/16 :goto_0

    :cond_e
    if-eqz v0, :cond_12

    const/4 v2, 0x1

    if-eq v0, v2, :cond_11

    const/4 v2, 0x2

    if-eq v0, v2, :cond_10

    const/4 v2, 0x3

    if-eq v0, v2, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    .line 30
    invoke-static {v9, v0, v1, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v12, v8

    .line 31
    invoke-static {v7, v0, v1, v12, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_11

    :cond_10
    const/4 v10, 0x0

    :goto_f
    if-ge v10, v8, :cond_13

    add-int/lit8 v0, v12, 0x1

    .line 32
    aget-byte v2, v9, v10

    aput-byte v2, v1, v12

    add-int/lit8 v12, v0, 0x1

    .line 33
    aget-byte v2, v7, v10

    aput-byte v2, v1, v0

    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    :cond_11
    const/4 v10, 0x0

    :goto_10
    if-ge v10, v8, :cond_13

    add-int/lit8 v0, v12, 0x1

    .line 34
    aget-byte v2, v7, v10

    aput-byte v2, v1, v12

    add-int/lit8 v12, v0, 0x1

    .line 35
    aget-byte v2, v9, v10

    aput-byte v2, v1, v0

    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    :cond_12
    const/4 v0, 0x0

    .line 36
    invoke-static {v7, v0, v1, v12, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v12, v6

    .line 37
    invoke-static {v9, v0, v1, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_11

    :catch_0
    move-exception v0

    const-string v2, "ImageHelper"

    .line 38
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->warning(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    :goto_11
    return-object v1
.end method

.method public static saveYuvToJpg([BII[ILjava/lang/String;)V
    .locals 9

    const-string v0, "ImageHelper"

    if-nez p0, :cond_0

    const-string/jumbo p0, "saveYuvToJpg: null data"

    .line 1
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sdcard/DCIM/Camera/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ".jpg"

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveYuvToJpg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v7, 0x64

    .line 5
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v3 .. v8}, Lcom/android/camera/ImageHelper;->compressYuv([BII[IILjava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    invoke-static {v2}, Lcom/android/camera/Util;->closeSafely(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 7
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    invoke-static {v1}, Lcom/android/camera/Util;->closeSafely(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :goto_2
    invoke-static {v1}, Lcom/android/camera/Util;->closeSafely(Ljava/io/Closeable;)V

    throw p0
.end method
