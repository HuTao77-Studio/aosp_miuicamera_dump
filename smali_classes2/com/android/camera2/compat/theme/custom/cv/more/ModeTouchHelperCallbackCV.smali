.class public final Lcom/android/camera2/compat/theme/custom/cv/more/ModeTouchHelperCallbackCV;
.super Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;
.source "ModeTouchHelperCallbackCV.java"


# instance fields
.field public mNeedUpdate:Z

.field public mOffset:Landroid/graphics/Point;

.field public mTargetDrawable:Lcom/android/camera2/compat/theme/custom/cv/more/SelectDrawable;

.field public mTargetRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/camera/fragment/mode/IMoreMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;",
            "Lcom/android/camera/fragment/mode/IMoreMode;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/camera/fragment/mode/IMoreMode;)V

    .line 2
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeTouchHelperCallbackCV;->mTargetRect:Landroid/graphics/Rect;

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera2/compat/theme/custom/cv/more/ModeTouchHelperCallbackCV;->initDrawable(Landroid/content/Context;)V

    return-void
.end method

.method private initDrawable(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeTouchHelperCallbackCV;->mTargetDrawable:Lcom/android/camera2/compat/theme/custom/cv/more/SelectDrawable;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera2/compat/theme/custom/cv/more/SelectDrawable;

    invoke-direct {v0, p1}, Lcom/android/camera2/compat/theme/custom/cv/more/SelectDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeTouchHelperCallbackCV;->mTargetDrawable:Lcom/android/camera2/compat/theme/custom/cv/more/SelectDrawable;

    :cond_0
    return-void
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    sget-object p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->TAG:Ljava/lang/String;

    const-string p2, "clearView "

    invoke-static {p0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onChildDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 2
    iget-boolean p1, p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeTouchHelperCallbackCV;->mNeedUpdate:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeTouchHelperCallbackCV;->mNeedUpdate:Z

    .line 4
    iget-object p1, p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeTouchHelperCallbackCV;->mTargetRect:Landroid/graphics/Rect;

    float-to-int p2, p4

    neg-int p2, p2

    float-to-int p3, p5

    neg-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->offset(II)V

    .line 5
    iget-object p1, p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeTouchHelperCallbackCV;->mTargetDrawable:Lcom/android/camera2/compat/theme/custom/cv/more/SelectDrawable;

    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeTouchHelperCallbackCV;->mTargetRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/android/camera2/compat/theme/custom/cv/more/SelectDrawable;->update(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public onItemDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    instance-of p2, p1, Lcom/android/camera/fragment/mode/ModeViewHolder;

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3f99999a    # 1.2f

    if-eqz p2, :cond_0

    .line 2
    check-cast p1, Lcom/android/camera/fragment/mode/ModeViewHolder;

    iput-object p1, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->mSelectViewHolder:Lcom/android/camera/fragment/mode/ModeViewHolder;

    .line 3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f080b1d

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->mSelectViewHolder:Lcom/android/camera/fragment/mode/ModeViewHolder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0, v0, v1}, Lcom/android/camera/animation/FolmeUtils;->animationScale(Landroid/view/View;FF)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->mSelectViewHolder:Lcom/android/camera/fragment/mode/ModeViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->mSelectViewHolder:Lcom/android/camera/fragment/mode/ModeViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v1, v0}, Lcom/android/camera/animation/FolmeUtils;->animationScale(Landroid/view/View;FF)V

    .line 7
    iput-object p2, p0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->mSelectViewHolder:Lcom/android/camera/fragment/mode/ModeViewHolder;

    :goto_0
    return-void
.end method

.method public onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V
    .locals 3

    .line 1
    invoke-super/range {p0 .. p7}, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V

    .line 2
    sget-object v0, Lcom/android/camera/fragment/mode/ModeTouchHelperCallback;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMoved "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pos : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "->"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", point : "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "x"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-nez p3, :cond_0

    .line 4
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 5
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 6
    iget-object p5, p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeTouchHelperCallbackCV;->mTargetDrawable:Lcom/android/camera2/compat/theme/custom/cv/more/SelectDrawable;

    invoke-virtual {p5, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 7
    iget-object p5, p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeTouchHelperCallbackCV;->mTargetDrawable:Lcom/android/camera2/compat/theme/custom/cv/more/SelectDrawable;

    invoke-virtual {p1, p5}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 9
    new-instance p5, Landroid/graphics/Point;

    iget p6, p3, Landroid/graphics/Rect;->left:I

    iget p3, p3, Landroid/graphics/Rect;->top:I

    invoke-direct {p5, p6, p3}, Landroid/graphics/Point;-><init>(II)V

    iput-object p5, p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeTouchHelperCallbackCV;->mOffset:Landroid/graphics/Point;

    .line 10
    :cond_0
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p3

    const/4 p5, 0x1

    if-eq p3, p5, :cond_3

    .line 11
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p3

    const/4 p4, 0x6

    if-ne p3, p4, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 13
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeTouchHelperCallbackCV;->mTargetRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 14
    iget-object p1, p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeTouchHelperCallbackCV;->mTargetRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeTouchHelperCallbackCV;->mOffset:Landroid/graphics/Point;

    iget p3, p2, Landroid/graphics/Point;->x:I

    neg-int p3, p3

    iget p2, p2, Landroid/graphics/Point;->y:I

    neg-int p2, p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeTouchHelperCallbackCV;->mTargetDrawable:Lcom/android/camera2/compat/theme/custom/cv/more/SelectDrawable;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Lcom/android/camera2/compat/theme/custom/cv/more/SelectDrawable;->setAlpha(I)V

    .line 16
    iput-boolean p5, p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeTouchHelperCallbackCV;->mNeedUpdate:Z

    goto :goto_1

    .line 17
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/cv/more/ModeTouchHelperCallbackCV;->mTargetDrawable:Lcom/android/camera2/compat/theme/custom/cv/more/SelectDrawable;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera2/compat/theme/custom/cv/more/SelectDrawable;->setAlpha(I)V

    :goto_1
    return-void
.end method
