.class public Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "FilterSelectViewCV.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV$onFilterSelectedListener;,
        Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV$FilterSnapHelper;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mCurIndex:I

.field public mFilterSelectedListener:Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV$onFilterSelectedListener;

.field public mFitLayoutWidth:I

.field public mInit:Z

.field public mIsModeChange:Z

.field public mIsOnclick:Z

.field public mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation
.end field

.field public mSnapHelper:Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV$FilterSnapHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->mInit:Z

    .line 5
    iput-boolean p1, p0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->mIsOnclick:Z

    return-void
.end method


# virtual methods
.method public fling(II)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    move-result p0

    return p0
.end method

.method public getIndexFromTag(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getItemText(I)Ljava/lang/String;
    .locals 2

    if-gtz p1, :cond_0

    .line 1
    sget-object p0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getItemText fail, pos is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->mItems:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 3
    iget v0, p1, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    iget p1, p1, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    iget-object p0, p1, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameStr:Ljava/lang/String;

    if-eqz p0, :cond_2

    return-object p0

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "can\'t find mode text."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSelectedIndex(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->mSnapHelper:Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV$FilterSnapHelper;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV$FilterSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->TAG:Ljava/lang/String;

    const-string v0, "target is null???"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->getIndexFromTag(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public getSnapHelper()Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV$FilterSnapHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->mSnapHelper:Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV$FilterSnapHelper;

    return-object p0
.end method

.method public init(Lcom/android/camera/data/data/ComponentData;IILcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV$onFilterSelectedListener;)V
    .locals 1

    .line 1
    iput-object p4, p0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->mFilterSelectedListener:Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV$onFilterSelectedListener;

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->mItems:Ljava/util/List;

    .line 3
    sget-object p1, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init mItems = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iput p2, p0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->mCurIndex:I

    .line 5
    sget-object p1, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "init mCurIndex = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->mCurIndex:I

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iput p3, p0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->mFitLayoutWidth:I

    .line 7
    iget-object p1, p0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->mSnapHelper:Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV$FilterSnapHelper;

    if-nez p1, :cond_0

    .line 8
    new-instance p1, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV$FilterSnapHelper;

    invoke-direct {p1, p0}, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV$FilterSnapHelper;-><init>(Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;)V

    iput-object p1, p0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->mSnapHelper:Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV$FilterSnapHelper;

    .line 9
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->mInit:Z

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public isSameIndex(II)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public moveToPosition()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->mSnapHelper:Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV$FilterSnapHelper;

    invoke-virtual {v1, v0}, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV$FilterSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->mSnapHelper:Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV$FilterSnapHelper;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV$FilterSnapHelper;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->scroll(II)V

    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->mInit:Z

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGlobalLayout mCurMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->mCurIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->moveToPosition()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->mInit:Z

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 4
    iget v1, p0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->mCurIndex:I

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 9
    :cond_2
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    const/4 v0, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    .line 11
    invoke-static {v0, v2, v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1200af

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setStateDescription(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->mIsOnclick:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onScrollStateChanged(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 2
    sget-object v0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScrollStateChanged state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-boolean v0, p0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->mIsOnclick:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->mFilterSelectedListener:Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV$onFilterSelectedListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->mIsOnclick:Z

    .line 5
    invoke-interface {p1}, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV$onFilterSelectedListener;->getOnclickIndex()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->mCurIndex:I

    :cond_0
    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    .line 2
    iget-boolean p1, p0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->mInit:Z

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean p1, p0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->mIsOnclick:Z

    if-eqz p1, :cond_1

    return-void

    .line 4
    :cond_1
    iget p1, p0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->mCurIndex:I

    invoke-virtual {p0, p1}, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->getSelectedIndex(I)I

    move-result p1

    .line 5
    iget p2, p0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->mCurIndex:I

    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->isSameIndex(II)Z

    move-result p2

    if-nez p2, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p2

    invoke-virtual {p2}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooOO0O()V

    .line 7
    iput p1, p0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->mCurIndex:I

    .line 8
    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->mFilterSelectedListener:Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV$onFilterSelectedListener;

    if-eqz p0, :cond_2

    .line 9
    invoke-interface {p0, p1}, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV$onFilterSelectedListener;->onItemSelected(I)V

    :cond_2
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x1000

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_1

    .line 2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p1, -0x1

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getMinFlingVelocity()I

    move-result p1

    add-int/2addr p1, v2

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getMinFlingVelocity()I

    move-result p1

    neg-int p1, p1

    sub-int/2addr p1, v2

    goto :goto_0

    :cond_3
    move p1, v1

    :goto_0
    if-nez p1, :cond_4

    return v1

    :cond_4
    const/4 p2, 0x0

    const/high16 v0, -0x80000000

    .line 7
    invoke-virtual {p0, p1, v1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    return v2
.end method

.method public scroll(II)V
    .locals 1

    .line 1
    new-instance v0, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setOnclickStatus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera2/compat/theme/custom/cv/FilterSelectViewCV;->mIsOnclick:Z

    return-void
.end method
