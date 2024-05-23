.class public interface abstract Lcom/android/camera/SensorStateManager$SensorStateListener;
.super Ljava/lang/Object;
.source "SensorStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SensorStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SensorStateListener"
.end annotation


# virtual methods
.method public abstract isWorking()Z
.end method

.method public notifyDevicePostureChanged()V
    .locals 0

    return-void
.end method

.method public onDeviceBeginMoving()V
    .locals 0

    return-void
.end method

.method public abstract onDeviceKeepMoving(D)V
.end method

.method public onDeviceLieChanged(Z)V
    .locals 0

    return-void
.end method

.method public abstract onDeviceOrientationChanged(FZ)V
.end method

.method public onDeviceRotationChanged([F)V
    .locals 0

    return-void
.end method

.method public abstract onSensorChanged(Landroid/hardware/SensorEvent;)V
.end method
