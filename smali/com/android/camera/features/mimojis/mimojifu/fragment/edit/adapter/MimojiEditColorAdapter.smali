.class public Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditColorAdapter;
.super Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;
.source "MimojiEditColorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditColorAdapter$MimojiColorHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter<",
        "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MimojiEditColorAdapter"


# instance fields
.field public mLastSelectPosition:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditColorAdapter;->mLastSelectPosition:I

    return-void
.end method


# virtual methods
.method public onCreateBaseRecyclerViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00dc

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditColorAdapter$MimojiColorHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditColorAdapter$MimojiColorHolder;-><init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditColorAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setLastSelectPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditColorAdapter;->mLastSelectPosition:I

    return-void
.end method

.method public setSelectState(I)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditColorAdapter;->mLastSelectPosition:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-ne v0, p1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->isAvailablePosion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->setSelect(Z)V

    .line 6
    invoke-virtual {p0, p1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void

    :cond_0
    move v0, v2

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getItemCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;

    .line 9
    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->isSelect()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10
    invoke-virtual {v4, v2}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->setSelect(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_2
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditColorAdapter;->mLastSelectPosition:I

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->isAvailablePosion(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditColorAdapter;->mLastSelectPosition:I

    invoke-virtual {p0, v0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 13
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->isAvailablePosion(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->setSelect(Z)V

    .line 15
    invoke-virtual {p0, p1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 16
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditColorAdapter;->mLastSelectPosition:I

    :cond_4
    return-void
.end method
