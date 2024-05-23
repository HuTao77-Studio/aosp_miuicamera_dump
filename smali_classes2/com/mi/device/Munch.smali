.class public Lcom/mi/device/Munch;
.super Lcom/mi/device/Common;
.source "Munch.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mi/device/Common;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OooO0O0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OooO0OO()Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Landroid/util/SparseArray;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/util/SparseArray;-><init>(I)V

    const-string v1, "REDMI"

    const-string v2, "K40S"

    .line 2
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "F4"

    const-string v3, "POCO"

    .line 3
    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v4

    .line 4
    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 5
    invoke-virtual {p0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    invoke-virtual {p0, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public OooO0o0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OooO0oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OooOO0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OooOO0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OooOOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OooOOo0()Ljava/lang/String;
    .locals 0

    const-string p0, "mfnr:1"

    return-object p0
.end method

.method public OooOo0()Ljava/lang/String;
    .locals 0

    const-string p0, "true:4012x3008"

    return-object p0
.end method

.method public OooOoOO()I
    .locals 0

    const/16 p0, 0x1cc

    return p0
.end method

.method public OooOoo0()I
    .locals 0

    const/16 p0, 0x1db

    return p0
.end method

.method public Oooo0()Ljava/lang/String;
    .locals 0

    const-string p0, "3.2"

    return-object p0
.end method

.method public Oooo000()I
    .locals 0

    const/16 p0, 0xfac

    return p0
.end method

.method public Oooo0oO()I
    .locals 0

    const p0, 0xc96a80

    return p0
.end method

.method public OoooOOO()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OoooOo0()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public Ooooo0o()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00000O()I
    .locals 0

    const/16 p0, 0x121

    return p0
.end method

.method public o00000O0()F
    .locals 0

    const p0, 0x3f659323

    return p0
.end method

.method public o00000Oo()I
    .locals 0

    const p0, 0x1312d00

    return p0
.end method

.method public o0000O0()Ljava/lang/String;
    .locals 0

    const-string p0, "1:8000x6000"

    return-object p0
.end method

.method public o0000OOO()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public o0000o()Ljava/lang/String;
    .locals 0

    const-string p0, "1.0:2.0"

    return-object p0
.end method

.method public o0000oo()S
    .locals 0

    .line 1
    sget-object p0, Lcom/mi/device/SlowMotionEnum;->OooO0o:Lcom/mi/device/SlowMotionEnum;

    invoke-virtual {p0}, Lcom/mi/device/SlowMotionEnum;->OooO00o()S

    move-result p0

    return p0
.end method

.method public o000O()I
    .locals 0

    const/16 p0, 0x16a8

    return p0
.end method

.method public o000O000()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public o000O0Oo()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000O0o()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public o000O0oO()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000OO00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000Oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000Oo00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000Oo0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000OoO()Ljava/lang/String;
    .locals 0

    const-string p0, "capture:0.6:1.0:2.0"

    return-object p0
.end method

.method public o000OoOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000o0Oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000o0o0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000oOoO()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public o000oOoo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000oo00()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o000ooOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000ooo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0000()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O00OO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0O0O()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00O0OO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0Oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0Oo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0Ooo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0o0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0o0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OO00O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OO00o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OO0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OO0o0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OOOO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OOOoO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OOoo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OOooo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00Oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00Oo0()Ljava/lang/String;
    .locals 0

    const-string p0, "auto"

    return-object p0
.end method

.method public o00Oo00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00Oo00o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00Oo0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00Oo0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00Oo0o0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OoO00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OoOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OoOOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00Ooo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OooO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OooOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OooOo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00OoooO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o000()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00o00Oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0O0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00o0O00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0OO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0OO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0OOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0Oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0Oo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0o00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0o0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0oOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0oOo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00o0oo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oO00o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOOO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOOo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00oOo00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOoO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOoO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOoOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOooO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00ooO0()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00ooOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00ooo00()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public o00ooo0O()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00oooO()I
    .locals 0

    const/16 p0, 0xc

    return p0
.end method

.method public o00oooOo()I
    .locals 0

    const/16 p0, 0xd2

    return p0
.end method

.method public o00oooo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oooo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O000()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0000O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0000o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O000O()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0O000Oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O000o0()I
    .locals 0

    const/16 p0, 0xb

    return p0
.end method

.method public o0O000oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O00O0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O00Ooo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O00o0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O00o00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0O0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0O0oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0OO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0OOO()Ljava/lang/String;
    .locals 0

    const-string p0, "ultra_wide:wide:front"

    return-object p0
.end method

.method public o0O0OOO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0OOo()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public o0O0OOoO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0Oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0OoO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0OoOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0Ooo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0o000()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0o00o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0o0o0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0o0oO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0o0oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0oO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0oOOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0oOo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0oOoo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0oo0o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0OoO00O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OoOo0()S
    .locals 0

    .line 1
    sget-object p0, Lcom/mi/device/SlowMotionEnum;->OooO0OO:Lcom/mi/device/SlowMotionEnum;

    invoke-virtual {p0}, Lcom/mi/device/SlowMotionEnum;->OooO00o()S

    move-result p0

    return p0
.end method

.method public o0OoOoOO()Ljava/lang/String;
    .locals 0

    const-string p0, "macro:capture_intent:ultra_wide:pro"

    return-object p0
.end method

.method public o0o0Oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0oOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0oOOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0oOo0O0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0ooO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public oOO00O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public oo000o()Ljava/lang/String;
    .locals 0

    const-string p0, "90,60"

    return-object p0
.end method

.method public oo00o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public oo00oO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public oo0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public oo0o0O0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
