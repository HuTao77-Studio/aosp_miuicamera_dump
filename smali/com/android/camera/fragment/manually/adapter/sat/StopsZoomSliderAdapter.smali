.class public abstract Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;
.super Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;
.source "StopsZoomSliderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "StopsZoomSliderAdapter"


# instance fields
.field public mCurrentIndex:I

.field public final mCurrentMode:I

.field public mEnable:Z

.field public mRulerLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mUnitCount:F

.field public mUnitRatios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mZoomIndexs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final mZoomRatioMax:F

.field public final mZoomRatioMin:F

.field public mZoomStops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ZILcom/android/camera/fragment/manually/ZoomValueListener;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mCurrentIndex:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomStops:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mRulerLines:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mUnitRatios:Ljava/util/List;

    .line 7
    iput p3, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mCurrentMode:I

    .line 8
    iput-object p4, p0, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->mZoomValueListener:Lcom/android/camera/fragment/manually/ZoomValueListener;

    .line 9
    invoke-static {p3}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mCurrentValue:Ljava/lang/String;

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->initStyle(Landroid/content/Context;)V

    const/4 p1, 0x0

    const/4 p4, 0x1

    const/16 v0, 0xbc

    if-ne p3, v0, :cond_0

    move v0, p4

    goto :goto_0

    :cond_0
    move v0, p1

    .line 11
    :goto_0
    invoke-static {p3}, Lcom/android/camera/module/ModuleManager;->isVideoCategory(I)Z

    move-result p3

    .line 12
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    sget-object v2, Lcom/android/camera/HybridZoomingSystem;->ZOOM_INDEXS_DEFAULT:Ljava/lang/String;

    invoke-virtual {v1, v0, p3, v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooO00o(ZZLjava/lang/String;)Ljava/util/List;

    move-result-object p3

    .line 13
    invoke-static {}, Lcom/android/camera/protocol/protocols/ZoomProtocol;->impl2()Lcom/android/camera/protocol/protocols/ZoomProtocol;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_1

    move v3, v2

    goto :goto_1

    .line 14
    :cond_1
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/ZoomProtocol;->getMaxZoomRatio()F

    move-result v3

    :goto_1
    iput v3, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomRatioMax:F

    if-eqz v0, :cond_2

    const/high16 p2, 0x40a00000    # 5.0f

    .line 15
    iput p2, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomRatioMin:F

    goto :goto_4

    :cond_2
    if-nez p2, :cond_4

    if-nez v1, :cond_3

    goto :goto_2

    .line 16
    :cond_3
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/ZoomProtocol;->getMinZoomRatio()F

    move-result p2

    goto :goto_3

    :cond_4
    :goto_2
    move p2, v2

    :goto_3
    iput p2, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomRatioMin:F

    .line 17
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ZOOM RATIO RANGE ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomRatioMin:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomRatioMax:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "StopsZoomSliderAdapter"

    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget p2, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomRatioMin:F

    cmpg-float v0, p2, v2

    if-gez v0, :cond_5

    .line 19
    iget-object p2, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mUnitRatios:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object p2, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mRulerLines:Ljava/util/List;

    iget v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomRatioMin:F

    sub-float v0, v2, v0

    const v1, 0x3dcccccd    # 0.1f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object p2, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    iget v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomRatioMin:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p2, v2

    .line 22
    :cond_5
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p2

    .line 23
    iget v1, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomRatioMax:F

    cmpg-float v3, v0, v1

    if-gtz v3, :cond_6

    .line 24
    iget-object p2, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mUnitRatios:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object p2, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mRulerLines:Ljava/util/List;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object p2, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p2, v0

    goto :goto_5

    .line 27
    :cond_6
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 28
    iget v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomRatioMax:F

    sub-float/2addr v0, p2

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr p2, v1

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 29
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mRulerLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    int-to-float v2, p2

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mUnitCount:F

    .line 30
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mUnitRatios:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mRulerLines:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object p2, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    iget v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomRatioMax:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 33
    :cond_7
    iget-object p2, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mRulerLines:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mUnitCount:F

    :goto_6
    move p2, p1

    move v0, p2

    move v1, v0

    .line 34
    :goto_7
    iget-object v2, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p4

    if-ge p2, v2, :cond_9

    .line 35
    iget-object v2, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    add-int/lit8 v3, p2, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v4, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mRulerLines:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 36
    :goto_8
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_8

    .line 37
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_8

    .line 38
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_8

    .line 39
    iget-object v4, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomStops:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v6, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sub-float/2addr v5, v6

    div-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 40
    :cond_8
    iget-object v2, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mRulerLines:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr v1, p2

    move p2, v3

    goto/16 :goto_7

    .line 41
    :cond_9
    invoke-static {}, Lcom/android/camera/display/Display;->isSupportLandscape()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 42
    iget-object p2, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomStops:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 43
    iget-object p3, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomStops:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, p4

    move v0, p2

    :goto_9
    if-lez p3, :cond_a

    .line 44
    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomStops:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, p4

    iget-object v4, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomStops:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 p3, p3, -0x1

    move v0, v2

    goto :goto_9

    :cond_a
    :goto_a
    add-int/lit8 p3, p2, -0x1

    if-ge p1, p3, :cond_b

    .line 45
    iget-object p3, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomStops:Ljava/util/List;

    invoke-interface {p3, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    .line 46
    :cond_b
    iget-object p1, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mRulerLines:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 47
    iget-object p1, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mUnitRatios:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 48
    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_c
    return-void
.end method


# virtual methods
.method public getAlign(I)Landroid/graphics/Paint$Align;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCount()I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mRulerLines:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public isEnable()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mEnable:Z

    return p0
.end method

.method public isFirstStopPoint(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLastStopPoint(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->getCount()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSingleValueLine(I)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1
    :goto_0
    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_2

    .line 2
    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mRulerLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    if-gt p1, v2, :cond_1

    .line 3
    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    add-int/lit8 v5, v1, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v3, v5

    iget-object v6, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    mul-float/2addr v6, v5

    sub-float/2addr v3, v6

    iget-object v5, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mRulerLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v3, v3

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_0

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v3, v3, v5

    if-nez v3, :cond_1

    :cond_0
    return v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public isStopPoint(F)Z
    .locals 6

    float-to-double v0, p1

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    sub-double v2, v0, v2

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpg-double p1, v2, v4

    if-gez p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomStops:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isStopPoint(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->isFirstStopPoint(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->isLastStopPoint(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomStops:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic mapPositionToValue(F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mapPositionToValue(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public mapPositionToValue(F)Ljava/lang/String;
    .locals 5

    .line 2
    invoke-static {}, Lcom/android/camera/display/Display;->isSupportLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomRatioMax:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomRatioMin:F

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_1
    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_2

    .line 4
    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mRulerLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v3, v2

    cmpg-float v4, p1, v3

    if-gtz v4, :cond_1

    sub-float/2addr p1, v3

    .line 5
    iget-object v2, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mRulerLines:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p1, v2

    iget-object v2, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mRulerLines:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v2, p0

    mul-float/2addr p1, v2

    add-float/2addr v0, p1

    goto :goto_2

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1

    .line 7
    :cond_2
    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mapValueToPosition(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mapValueToPosition(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public mapValueToPosition(Ljava/lang/String;)F
    .locals 6

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 3
    invoke-static {p1}, Lcom/android/camera/HybridZoomingSystem;->toDecimal(F)F

    move-result p1

    .line 4
    invoke-static {}, Lcom/android/camera/display/Display;->isSupportLandscape()Z

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 6
    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    .line 7
    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v3, v1

    iget-object v5, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float/2addr v5, v1

    sub-float/2addr v3, v5

    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mRulerLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v3, v1

    float-to-int v1, v3

    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mRulerLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    .line 9
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    sub-float/2addr v1, p0

    div-float/2addr p1, v1

    .line 10
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v2, p0

    goto/16 :goto_4

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mRulerLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    .line 12
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    sub-float/2addr v1, p0

    div-float/2addr p1, v1

    add-float/2addr v2, p1

    goto/16 :goto_4

    .line 13
    :cond_1
    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mRulerLines:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-lez v0, :cond_5

    .line 15
    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_4

    .line 16
    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v3, v1

    iget-object v5, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float/2addr v5, v1

    sub-float/2addr v3, v5

    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mRulerLines:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v3, v1

    float-to-int v1, v3

    int-to-float v1, v1

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v1, v1, v3

    if-nez v1, :cond_3

    .line 17
    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mRulerLines:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    .line 18
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    .line 19
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    goto :goto_2

    .line 20
    :cond_3
    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mRulerLines:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    .line 21
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mZoomIndexs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    :goto_2
    add-float/2addr v2, p1

    goto :goto_3

    .line 22
    :cond_4
    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mRulerLines:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_1

    .line 23
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    int-to-float p0, p0

    sub-float v2, p0, v2

    :cond_6
    :goto_4
    return v2
.end method

.method public measureGap(I)F
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mIsRSL:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mIsRSL:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    :cond_1
    return v1

    .line 2
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mIsRSL:Z

    if-eqz v0, :cond_3

    add-int/lit8 p1, p1, 0x1

    .line 3
    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mUnitRatios:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mRulerLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_4

    return v1

    .line 4
    :cond_4
    iget v0, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mTotalWidth:F

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->measureWidth(I)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->measureWidth(I)F

    move-result v3

    div-float/2addr v3, v4

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mUnitCount:F

    div-float/2addr v0, v3

    move v3, v2

    .line 5
    :goto_0
    iget-object v4, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mRulerLines:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 6
    iget-object v4, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mRulerLines:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    if-gt p1, v3, :cond_5

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mUnitRatios:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float/2addr v0, p1

    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mRulerLines:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return v1
.end method

.method public measureWidth(I)F
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->isStopPoint(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget p0, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineStopPointWidth:F

    return p0

    .line 3
    :cond_0
    iget p0, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineWidth:F

    return p0
.end method

.method public onChangeValue(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->mZoomValueListener:Lcom/android/camera/fragment/manually/ZoomValueListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/android/camera/fragment/manually/ZoomValueListener;->onManuallyDataChanged(Ljava/lang/String;I)V

    .line 3
    iput-object p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mCurrentValue:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mapValueToPosition(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mCurrentIndex:I

    :cond_0
    return-void
.end method

.method public onPositionSelect(Landroid/view/View;FI)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mEnable:Z

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mapPositionToValue(F)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 4
    iget v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mCurrentIndex:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3f733333    # 0.95f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->mZoomValueListener:Lcom/android/camera/fragment/manually/ZoomValueListener;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 6
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mCurrentIndex:I

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->mZoomValueListener:Lcom/android/camera/fragment/manually/ZoomValueListener;

    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->isStopPoint(I)Z

    move-result v1

    invoke-interface {v0, p2, v1}, Lcom/android/camera/fragment/manually/ZoomValueListener;->onZoomItemSlideOn(IZ)V

    .line 8
    :cond_2
    iget-object p2, p0, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->mZoomValueListener:Lcom/android/camera/fragment/manually/ZoomValueListener;

    if-eqz p2, :cond_3

    .line 9
    invoke-interface {p2, p1, p3}, Lcom/android/camera/fragment/manually/ZoomValueListener;->onManuallyDataChanged(Ljava/lang/String;I)V

    .line 10
    :cond_3
    iput-object p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mCurrentValue:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public setCurrentValue(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mCurrentValue:Ljava/lang/String;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mapValueToPosition(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mCurrentIndex:I

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mEnable:Z

    return-void
.end method
