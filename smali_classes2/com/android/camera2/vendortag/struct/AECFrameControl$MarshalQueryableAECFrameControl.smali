.class public Lcom/android/camera2/vendortag/struct/AECFrameControl$MarshalQueryableAECFrameControl;
.super Ljava/lang/Object;
.source "AECFrameControl.java"

# interfaces
.implements Landroid/hardware/camera2/marshal/MarshalQueryable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/vendortag/struct/AECFrameControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarshalQueryableAECFrameControl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera2/vendortag/struct/AECFrameControl$MarshalQueryableAECFrameControl$MarshalAECFrameControl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/marshal/MarshalQueryable<",
        "Lcom/android/camera2/vendortag/struct/AECFrameControl;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADRC_OFFSET:I = 0x78

.field public static final SIZE:I = 0xde

.field public static final SIZE_ALIGN:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "Lcom/android/camera2/vendortag/struct/AECFrameControl;",
            ">;I)",
            "Landroid/hardware/camera2/marshal/Marshaler<",
            "Lcom/android/camera2/vendortag/struct/AECFrameControl;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/camera2/vendortag/struct/AECFrameControl$MarshalQueryableAECFrameControl$MarshalAECFrameControl;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera2/vendortag/struct/AECFrameControl$MarshalQueryableAECFrameControl$MarshalAECFrameControl;-><init>(Lcom/android/camera2/vendortag/struct/AECFrameControl$MarshalQueryableAECFrameControl;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-object v0
.end method

.method public isTypeMappingSupported(Landroid/hardware/camera2/utils/TypeReference;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "Lcom/android/camera2/vendortag/struct/AECFrameControl;",
            ">;I)Z"
        }
    .end annotation

    .line 1
    const-class p0, Lcom/android/camera2/vendortag/struct/AECFrameControl;

    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
