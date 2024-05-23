.class public Lcom/android/camera/fragment/vv/page/PageIndicatorView;
.super Landroid/widget/LinearLayout;
.source "PageIndicatorView.java"


# instance fields
.field public dotSize:I

.field public indicatorViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public margins:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/vv/page/PageIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/fragment/vv/page/PageIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 4
    iput-object p2, p0, Lcom/android/camera/fragment/vv/page/PageIndicatorView;->mContext:Landroid/content/Context;

    const/4 p3, 0x5

    .line 5
    iput p3, p0, Lcom/android/camera/fragment/vv/page/PageIndicatorView;->dotSize:I

    const/4 p3, 0x4

    .line 6
    iput p3, p0, Lcom/android/camera/fragment/vv/page/PageIndicatorView;->margins:I

    .line 7
    iput-object p2, p0, Lcom/android/camera/fragment/vv/page/PageIndicatorView;->indicatorViews:Ljava/util/List;

    .line 8
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/page/PageIndicatorView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/vv/page/PageIndicatorView;->mContext:Landroid/content/Context;

    const/16 p1, 0x11

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4
    iget p1, p0, Lcom/android/camera/fragment/vv/page/PageIndicatorView;->dotSize:I

    int-to-float p1, p1

    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/vv/page/PageIndicatorView;->dotSize:I

    .line 5
    iget p1, p0, Lcom/android/camera/fragment/vv/page/PageIndicatorView;->margins:I

    int-to-float p1, p1

    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/vv/page/PageIndicatorView;->margins:I

    return-void
.end method


# virtual methods
.method public initIndicator(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/page/PageIndicatorView;->indicatorViews:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/page/PageIndicatorView;->indicatorViews:Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 5
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/camera/fragment/vv/page/PageIndicatorView;->dotSize:I

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 6
    iget v1, p0, Lcom/android/camera/fragment/vv/page/PageIndicatorView;->margins:I

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, p1, :cond_1

    .line 7
    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lcom/android/camera/fragment/vv/page/PageIndicatorView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080133

    .line 8
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 9
    invoke-virtual {p0, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object v4, p0, Lcom/android/camera/fragment/vv/page/PageIndicatorView;->indicatorViews:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/vv/page/PageIndicatorView;->indicatorViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 12
    iget-object p0, p0, Lcom/android/camera/fragment/vv/page/PageIndicatorView;->indicatorViews:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    const p1, 0x7f080132

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2
    return-void
.end method

.method public setSelectedPage(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/page/PageIndicatorView;->indicatorViews:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/vv/page/PageIndicatorView;->indicatorViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    if-ne v0, p1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/vv/page/PageIndicatorView;->indicatorViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const v2, 0x7f080132

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/vv/page/PageIndicatorView;->indicatorViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const v2, 0x7f080133

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
