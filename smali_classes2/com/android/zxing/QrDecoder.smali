.class public Lcom/android/zxing/QrDecoder;
.super Lcom/android/zxing/Decoder;
.source "QrDecoder.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "QrDecoder"


# instance fields
.field public final mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

.field public mResetTimerDisposable:Lio/reactivex/disposables/Disposable;

.field public mScanResult:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/zxing/Decoder;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/android/zxing/QrDecoder;->mScanResult:Ljava/lang/String;

    .line 3
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zxing/Decoder;->mSubjects:Lio/reactivex/subjects/PublishSubject;

    .line 4
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/android/zxing/QrDecoder;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    sget-object v3, Lcom/android/zxing/DecodeFormats;->QR_CODE_FORMATS:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    sget-object v3, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v2, p0, Lcom/android/zxing/QrDecoder;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v2, v0}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 10
    iget-object v0, p0, Lcom/android/zxing/Decoder;->mSubjects:Lio/reactivex/subjects/PublishSubject;

    sget-object v2, Lio/reactivex/BackpressureStrategy;->LATEST:Lio/reactivex/BackpressureStrategy;

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->toFlowable(Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 11
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v2, LOooO0O0/OooO0O0/OooO0o0/OooO0oO;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO0o0/OooO0oO;-><init>(Lcom/android/zxing/QrDecoder;)V

    .line 12
    invoke-virtual {v0, v2}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 13
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v2, LOooO0O0/OooO0O0/OooO0o0/OooO0oo;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO0o0/OooO0oo;-><init>(Lcom/android/zxing/QrDecoder;)V

    .line 14
    invoke-virtual {v0, v2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zxing/Decoder;->mDecodeDisposable:Lio/reactivex/disposables/Disposable;

    .line 15
    iput-boolean v1, p0, Lcom/android/zxing/Decoder;->mEnable:Z

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "excess 15s , hide qr code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QrDecoder"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 18
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->hideQrCodeTip()V

    .line 19
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->reConfigAiTip()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lcom/android/zxing/PreviewImage;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decode E: previewImage is null? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QrDecoder"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/zxing/QrDecoder;->decode(Lcom/android/zxing/PreviewImage;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public synthetic OooO00o(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decode X: result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QrDecoder"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 5
    iput-boolean v2, p0, Lcom/android/zxing/Decoder;->mDecoding:Z

    .line 6
    iget-object v0, p0, Lcom/android/zxing/QrDecoder;->mScanResult:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    goto :goto_0

    .line 7
    :cond_0
    iput-boolean v1, p0, Lcom/android/zxing/Decoder;->mDecoding:Z

    .line 8
    iget-object v0, p0, Lcom/android/zxing/QrDecoder;->mScanResult:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    xor-int/2addr v0, v2

    if-nez v0, :cond_1

    return-void

    .line 9
    :cond_1
    iput-object p1, p0, Lcom/android/zxing/QrDecoder;->mScanResult:Ljava/lang/String;

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object v0

    .line 11
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v2

    .line 12
    iget-boolean p0, p0, Lcom/android/zxing/Decoder;->mDecoding:Z

    if-nez p0, :cond_3

    if-eqz v2, :cond_2

    const/16 p0, 0x8

    const-wide/16 v3, 0x0

    .line 13
    invoke-interface {v2, p0, v1, v3, v4}, Lcom/android/camera/protocol/protocols/TopAlert;->alertAiDetectTipHint(IIJ)V

    :cond_2
    if-eqz v0, :cond_4

    .line 14
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->showQrCodeTip(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 15
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->hideQrCodeTip()V

    :cond_4
    :goto_1
    return-void
.end method

.method public decode(Lcom/android/zxing/PreviewImage;)Ljava/lang/String;
    .locals 10

    const-string v0, ""

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getData()[B

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getWidth()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getHeight()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_4

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getData()[B

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getWidth()I

    move-result v8

    .line 5
    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getHeight()I

    move-result v9

    mul-int p1, v8, v9

    .line 6
    new-array v2, p1, [B

    .line 7
    array-length v3, v1

    if-le v3, p1, :cond_1

    const/4 v3, 0x0

    .line 8
    invoke-static {v1, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v2

    goto :goto_0

    :cond_1
    move-object v3, v1

    .line 9
    :goto_0
    new-instance p1, Lcom/android/zxing/YUVLuminanceSource;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move v4, v8

    move v5, v9

    invoke-direct/range {v2 .. v9}, Lcom/android/zxing/YUVLuminanceSource;-><init>([BIIIIII)V

    .line 10
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    new-instance v2, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v2, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v1, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 11
    :try_start_0
    iget-object p1, p0, Lcom/android/zxing/QrDecoder;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p1, v1}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/zxing/QrDecoder;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    :try_start_1
    const-string p1, "QrDecoder"

    const-string v1, "decode: failed...  "

    .line 14
    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-object v0

    .line 15
    :goto_3
    iget-object p0, p0, Lcom/android/zxing/QrDecoder;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 16
    throw p1

    :cond_3
    :goto_4
    return-object v0
.end method

.method public init(I)V
    .locals 0

    return-void
.end method

.method public onPreviewFrame(Lcom/android/zxing/PreviewImage;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/zxing/Decoder;->mSubjects:Lio/reactivex/subjects/PublishSubject;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public resetScanResult()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/zxing/Decoder;->mDecoding:Z

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/android/zxing/QrDecoder;->mScanResult:Ljava/lang/String;

    return-void
.end method

.method public startDecode()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/zxing/Decoder;->mDecoding:Z

    .line 2
    iget-object v1, p0, Lcom/android/zxing/Decoder;->mDecodingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDecode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QrDecoder"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    iget v2, p0, Lcom/android/zxing/Decoder;->mDecodeMaxCount:I

    add-int/2addr v2, v0

    int-to-long v2, v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Lio/reactivex/Observable;->delaySubscription(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 5
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO0o0/OooO0o;->OooO00o:LOooO0O0/OooO0O0/OooO0o0/OooO0o;

    .line 6
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zxing/QrDecoder;->mResetTimerDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public stopDecode()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/zxing/Decoder;->stopDecode()V

    .line 2
    iget-object v0, p0, Lcom/android/zxing/QrDecoder;->mResetTimerDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/zxing/QrDecoder;->mResetTimerDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method
