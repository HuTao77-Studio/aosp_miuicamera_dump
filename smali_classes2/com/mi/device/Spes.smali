.class public Lcom/mi/device/Spes;
.super Lcom/mi/device/Common;
.source "Spes.java"


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

.method public OooO0OO()Landroid/util/SparseArray;
    .locals 3
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

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/SparseArray;-><init>(I)V

    const-string v1, "REDMI"

    const-string v2, "NOTE 11"

    .line 2
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public OooOO0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OooOOo0()Ljava/lang/String;
    .locals 0

    const-string p0, "notelemfnr:1;telesr:1"

    return-object p0
.end method

.method public OooOoOO()I
    .locals 0

    const/16 p0, 0x168

    return p0
.end method

.method public OooOoo0()I
    .locals 0

    const/16 p0, 0x190

    return p0
.end method

.method public Oooo0OO()I
    .locals 0

    const/16 p0, 0x14

    return p0
.end method

.method public OoooO00()Ljava/lang/String;
    .locals 0

    const-string p0, "v2"

    return-object p0
.end method

.method public OoooOOO()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OoooOo0()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public Ooooo0o()I
    .locals 0

    const/16 p0, 0x12c

    return p0
.end method

.method public o000()Ljava/lang/String;
    .locals 0

    const-string p0, "macro:wide:ultra_wide"

    return-object p0
.end method

.method public o00000Oo()I
    .locals 0

    const p0, 0x81b320

    return p0
.end method

.method public o0000O0()Ljava/lang/String;
    .locals 0

    const-string p0, "4:8160x6144"

    return-object p0
.end method

.method public o0000Ooo()I
    .locals 0

    const/4 p0, 0x4

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
    sget-object p0, Lcom/mi/device/SlowMotionEnum;->OooO0OO:Lcom/mi/device/SlowMotionEnum;

    invoke-virtual {p0}, Lcom/mi/device/SlowMotionEnum;->OooO00o()S

    move-result p0

    return p0
.end method

.method public o000O000()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public o000O0o()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public o000O0oo()I
    .locals 0

    const p0, 0x4c4b40

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

.method public o000OoO()Ljava/lang/String;
    .locals 0

    const-string p0, "capture:0.6:1.0:2.0"

    return-object p0
.end method

.method public o000OoOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000OoOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000OooO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000o0O0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000oo00()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o000oo0o()Z
    .locals 0

    const/4 p0, 0x1

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

.method public o00O00OO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O00o0()Z
    .locals 0

    const/4 p0, 0x0

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

.method public o00O0Ooo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0oo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00O0oo0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00OO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00OO00o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OOO00()Z
    .locals 0

    const/4 p0, 0x0

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

.method public o00Oo0()Ljava/lang/String;
    .locals 0

    const-string p0, "auto"

    return-object p0
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

.method public o00Oo0Oo()Z
    .locals 0

    const/4 p0, 0x0

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

.method public o00OoO0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00OoOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OooO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OooOo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o00Oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0OOo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00o0o0O()Z
    .locals 0

    const/4 p0, 0x0

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

.method public o00oO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oO00o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oO0O()I
    .locals 0

    const/4 p0, 0x3

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

    const/4 p0, 0x0

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

    const/4 p0, 0x1

    return p0
.end method

.method public o00ooOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oooO()I
    .locals 0

    const/16 p0, 0xc

    return p0
.end method

.method public o00oooo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O000()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O000O()Z
    .locals 0

    const/4 p0, 0x1

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

.method public o0O00Oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O00o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O00o0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0O0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0O0Oo()I
    .locals 0

    const/16 p0, 0x320

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

    const-string p0, "ultra_wide:wide"

    return-object p0
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

.method public o0O0Oo0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0OoO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0o00o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0o0Oo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0O0o0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0o0oO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0oO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0oO0O()Z
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

.method public o0O0oOoO()Ljava/lang/String;
    .locals 0

    const-string p0, "true"

    return-object p0
.end method

.method public o0O0oo0O()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0O0ooOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OoOoOO()Ljava/lang/String;
    .locals 0

    const-string p0, "pro:macro:ultra_wide:capture_intent"

    return-object p0
.end method

.method public o0o0Oo()Z
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

.method public oo00o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public oo0o0O0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public oo0oOOo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
