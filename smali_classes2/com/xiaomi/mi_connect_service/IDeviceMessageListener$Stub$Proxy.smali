.class public Lcom/xiaomi/mi_connect_service/IDeviceMessageListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDeviceMessageListener.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/IDeviceMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/IDeviceMessageListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# instance fields
.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/IDeviceMessageListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IDeviceMessageListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "com.xiaomi.mi_connect_service.IDeviceMessageListener"

    return-object p0
.end method

.method public onMessage(Lcom/xiaomi/mi_connect_service/DpsCallbackData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaomi.mi_connect_service.IDeviceMessageListener"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    :goto_0
    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IDeviceMessageListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    invoke-interface {p0, v2, v0, p1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8
    throw p0
.end method
