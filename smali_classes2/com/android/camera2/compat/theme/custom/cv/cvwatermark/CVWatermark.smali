.class public Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CVWatermark;
.super Ljava/lang/Object;
.source "CVWatermark.java"


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final FONT_MIPRO_PATH:Ljava/lang/String;

.field public static final FONT_SANS_SERIF:Ljava/lang/String; = "sans-serif"

.field public static final FONT_SANS_SERIF_MEDIUM:Ljava/lang/String; = "sans-serif-medium"

.field public static final IS_MIPRO_EXISTS:Z

.field public static final LETTER_SPACING:F = 0.05f

.field public static final LINE_COLOR:I = 0x33000000

.field public static final LINE_HORIZONTAL_GAP:I = 0x14

.field public static final LINE_PADDING_VERTICAL:I = 0x34

.field public static final LINE_WIDTH:I = 0x2

.field public static final LOGO_SIZE:I = 0x40

.field public static final MAIN_TEXT_COLOR:I = -0x1000000

.field public static final MAIN_TEXT_SIZE:I = 0x1e

.field public static final NS_TO_S:Ljava/lang/Long;

.field public static final PADDING_HORIZONTAL:I = 0x32

.field public static final PADDING_VERTICAL:I = 0x2d

.field public static final SUB_TEXT_COLOR:I

.field public static final SUB_TEXT_SIZE:I = 0x16

.field public static final SUB_TEXT_TOP_MARGIN:I = 0x5e

.field public static final WATERMARK_HEIGHT:I = 0xa8

.field public static final WATER_MARK_WIDTH:I = 0x438


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.miui.ui.font.mi_font_path"

    const-string v1, "system/fonts/MiLanProVF.ttf"

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CVWatermark;->FONT_MIPRO_PATH:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CVWatermark;->FONT_MIPRO_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CVWatermark;->IS_MIPRO_EXISTS:Z

    const-wide/32 v0, 0x3b9aca00

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CVWatermark;->NS_TO_S:Ljava/lang/Long;

    const/16 v0, 0x8c

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CVWatermark;->SUB_TEXT_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatLatLong(D)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-static {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->toExifLatLong(D)[Lcom/android/gallery3d/exif/Rational;

    move-result-object p0

    const/4 p1, 0x0

    .line 3
    aget-object p1, p0, p1

    invoke-virtual {p1}, Lcom/android/gallery3d/exif/Rational;->toDouble()D

    move-result-wide v1

    double-to-int p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u00b0"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    .line 5
    aget-object p1, p0, p1

    invoke-virtual {p1}, Lcom/android/gallery3d/exif/Rational;->toDouble()D

    move-result-wide v1

    double-to-int p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x2

    .line 7
    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/android/gallery3d/exif/Rational;->toDouble()D

    move-result-wide p0

    double-to-int p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\""

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBrand()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000Ooo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOO0:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000O0o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000Ooo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBrandTypeface()Landroid/graphics/Typeface;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CVWatermark;->IS_MIPRO_EXISTS:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Typeface$Builder;

    sget-object v1, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CVWatermark;->FONT_MIPRO_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "\'wght\' 500"

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    const-string v1, "sans-serif-medium"

    .line 5
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getExifStr(JISF)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    if-lez p3, :cond_0

    .line 2
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "mm"

    .line 3
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 p3, 0x0

    cmpl-float p3, p4, p3

    if-lez p3, :cond_1

    const-string p3, "f/"

    .line 5
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-wide/16 p3, 0x0

    cmp-long p3, p0, p3

    if-lez p3, :cond_4

    long-to-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float/2addr p0, p1

    .line 8
    sget-object p1, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CVWatermark;->NS_TO_S:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    long-to-float p1, p3

    div-float/2addr p0, p1

    float-to-double p0, p0

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p0, p3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_2

    .line 9
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    div-double/2addr p3, p0

    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v4, v3

    const-string p0, "1/%d"

    invoke-static {v2, p0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    double-to-int v2, p0

    int-to-double v5, v2

    sub-double/2addr p0, v5

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\'\'"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v5, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v5, p0, v5

    if-lez v5, :cond_3

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    div-double/2addr p3, p0

    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v4, v3

    const-string p0, " 1/%d"

    invoke-static {v2, p0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    move-object p0, v2

    .line 12
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    if-ltz p2, :cond_5

    const-string p0, "ISO"

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLocationStr(Landroid/location/Location;)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 3
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    .line 4
    invoke-static {v1, v2}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CVWatermark;->formatLatLong(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x0

    cmpl-double p0, v1, v5

    if-lez p0, :cond_1

    const-string p0, "N"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p0, "S"

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p0, "  "

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {v3, v4}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CVWatermark;->formatLatLong(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpl-double p0, v3, v5

    if-lez p0, :cond_2

    const-string p0, "E"

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string p0, "W"

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRatio(II)F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float/2addr p0, p1

    const/high16 p1, 0x44870000    # 1080.0f

    div-float/2addr p0, p1

    return p0
.end method

.method public static getSize(FI)Landroid/util/Size;
    .locals 1

    const/high16 v0, 0x43280000    # 168.0f

    mul-float/2addr p0, v0

    .line 3
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    and-int/lit8 p0, p0, -0x2

    .line 4
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public static getSize(II)Landroid/util/Size;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CVWatermark;->getRatio(II)F

    move-result p1

    .line 2
    invoke-static {p1, p0}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CVWatermark;->getSize(FI)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public static getTextPaint(Landroid/graphics/Typeface;F)Landroid/text/TextPaint;
    .locals 2

    .line 1
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    .line 2
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/high16 p1, -0x1000000

    .line 3
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 4
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 5
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object v0
.end method

.method public static getTimeStr(J)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1209ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " HH:mm:ss"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTypeface()Landroid/graphics/Typeface;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CVWatermark;->IS_MIPRO_EXISTS:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Typeface$Builder;

    sget-object v1, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CVWatermark;->FONT_MIPRO_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "\'wght\' 300"

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "sans-serif"

    .line 5
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getWatermarkBitmap(Landroid/util/Size;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11

    .line 1
    invoke-static {}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CVWatermark;->getBrand()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    .line 4
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 6
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, -0x1

    .line 7
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 8
    invoke-static {}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CVWatermark;->getBrandTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    const/high16 v5, 0x41f00000    # 30.0f

    mul-float/2addr v5, p1

    invoke-static {v4, v5}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CVWatermark;->getTextPaint(Landroid/graphics/Typeface;F)Landroid/text/TextPaint;

    move-result-object v4

    .line 9
    invoke-static {}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CVWatermark;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    const/high16 v6, 0x41b00000    # 22.0f

    mul-float/2addr v6, p1

    invoke-static {v5, v6}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CVWatermark;->getTextPaint(Landroid/graphics/Typeface;F)Landroid/text/TextPaint;

    move-result-object v5

    const v6, 0x3d4ccccd    # 0.05f

    .line 10
    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 11
    sget v6, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CVWatermark;->SUB_TEXT_COLOR:I

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 12
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v4, v0, v8, v7, v6}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    const/high16 v6, 0x42480000    # 50.0f

    mul-float/2addr v6, p1

    const/high16 v7, 0x42340000    # 45.0f

    mul-float/2addr v7, p1

    .line 14
    invoke-virtual {v4}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float v9, v9

    sub-float v9, v7, v9

    .line 15
    invoke-virtual {v3, v0, v6, v9, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 16
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 17
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, p2, v8, v9, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    int-to-float v1, v1

    sub-float v9, v1, v6

    .line 18
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    .line 19
    invoke-virtual {v4}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float v10, v10

    sub-float/2addr v7, v10

    .line 20
    invoke-virtual {v3, p2, v9, v7, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 21
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 22
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v5, p3, v8, v4, p2}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    if-nez p4, :cond_0

    move p2, v9

    goto :goto_0

    :cond_0
    move p2, v6

    :goto_0
    const/high16 v4, 0x42bc0000    # 94.0f

    mul-float/2addr v4, p1

    .line 23
    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    .line 24
    invoke-virtual {v3, p3, p2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-eqz p4, :cond_1

    .line 25
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 26
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {v5, p4, v8, p3, p2}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 27
    invoke-virtual {v3, p4, v9, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p2, p1

    const/high16 p3, 0x3f800000    # 1.0f

    .line 28
    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 29
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p3, v6

    const/high16 p4, 0x41a00000    # 20.0f

    mul-float/2addr p4, p1

    add-float/2addr p3, p4

    add-float/2addr p3, p2

    sub-float/2addr v1, p3

    .line 30
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    const/high16 p3, 0x33000000

    .line 31
    invoke-virtual {v9, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    invoke-virtual {v9, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 33
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p2, 0x42500000    # 52.0f

    mul-float v6, p1, p2

    int-to-float p2, p0

    sub-float v8, p2, v6

    move-object v4, v3

    move v5, v1

    move v7, v1

    .line 34
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 35
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f08038d

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/high16 p3, 0x42800000    # 64.0f

    mul-float/2addr p1, p3

    .line 36
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 37
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p3

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    sub-int/2addr p3, p4

    sub-int/2addr p3, p1

    sub-int/2addr p0, p1

    .line 38
    div-int/lit8 p0, p0, 0x2

    add-int p4, p3, p1

    add-int/2addr p1, p0

    .line 39
    invoke-virtual {p2, p3, p0, p4, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 40
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method public static getYuvWatermark([BLandroid/util/Size;FJISFLandroid/location/Location;J)Landroid/graphics/YuvImage;
    .locals 0

    .line 1
    invoke-static {p3, p4, p5, p6, p7}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CVWatermark;->getExifStr(JISF)Ljava/lang/String;

    move-result-object p3

    .line 2
    invoke-static {p9, p10}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CVWatermark;->getTimeStr(J)Ljava/lang/String;

    move-result-object p4

    .line 3
    invoke-static {p8}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CVWatermark;->getLocationStr(Landroid/location/Location;)Ljava/lang/String;

    move-result-object p5

    .line 4
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/camera2/compat/theme/custom/cv/cvwatermark/CVWatermark;->getWatermarkBitmap(Landroid/util/Size;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p5

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p6

    .line 7
    invoke-static {}, Lcom/android/camera/cache/ByteArrayPool;->getInstance()Lcom/android/camera/cache/ByteArrayPool;

    move-result-object p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/camera/cache/ByteArrayPool;->get(I)[B

    move-result-object p2

    .line 8
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 9
    invoke-virtual {p1, p3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 10
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-static {p1, p0, p5, p6}, Lcom/xiaomi/libyuv/YuvUtils;->RGBAToNv21([B[BII)I

    .line 11
    invoke-static {}, Lcom/android/camera/cache/ByteArrayPool;->getInstance()Lcom/android/camera/cache/ByteArrayPool;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/cache/ByteArrayPool;->put([B)V

    .line 12
    new-instance p1, Landroid/graphics/YuvImage;

    const/16 p4, 0x11

    const/4 p7, 0x0

    move-object p2, p1

    move-object p3, p0

    invoke-direct/range {p2 .. p7}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    return-object p1
.end method
