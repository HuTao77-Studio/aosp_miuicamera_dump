.class public abstract Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Extensions;
.super Ljava/lang/Object;
.source "Extensions.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Extensions"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBytes(Landroid/content/res/AssetManager;Ljava/lang/String;)[B
    .locals 0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Extensions;->getBytes(Ljava/io/InputStream;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Extensions;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->warning(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public static getBytes(Ljava/io/InputStream;)[B
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    .line 2
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 4
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Extensions;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->warning(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public static readTextFileFromResource(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Extensions;->getBytes(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
