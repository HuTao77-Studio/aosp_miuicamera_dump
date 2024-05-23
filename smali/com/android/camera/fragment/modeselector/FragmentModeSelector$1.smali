.class public Lcom/android/camera/fragment/modeselector/FragmentModeSelector$1;
.super Ljava/lang/Object;
.source "FragmentModeSelector.java"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->switchModeOrExternalTipLayout(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/modeselector/FragmentModeSelector;

.field public final synthetic val$targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/modeselector/FragmentModeSelector;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector$1;->this$0:Lcom/android/camera/fragment/modeselector/FragmentModeSelector;

    iput-object p2, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector$1;->val$targetView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onComplete"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector$1;->val$targetView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector$1;->this$0:Lcom/android/camera/fragment/modeselector/FragmentModeSelector;

    iget-object v1, v1, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    if-ne v0, v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mExternalModeTipLayout cancel by reset."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector$1;->val$targetView:Landroid/view/View;

    invoke-static {p0}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onError"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onSubscribe"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
