.class public Lcom/android/camera/KeyKeeper;
.super Ljava/lang/Object;
.source "KeyKeeper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/KeyKeeper$Holder;
    }
.end annotation


# instance fields
.field public mAssistantHash:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/KeyKeeper$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/KeyKeeper;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/camera/KeyKeeper;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/KeyKeeper$Holder;->access$100()Lcom/android/camera/KeyKeeper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAssistantHash()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/KeyKeeper;->mAssistantHash:I

    return p0
.end method

.method public setAssistantHash(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/KeyKeeper;->mAssistantHash:I

    return-void
.end method
