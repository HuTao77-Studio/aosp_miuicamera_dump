.class public Lcom/mi/device/Ares;
.super Lcom/mi/device/Common;
.source "Ares.java"


# static fields
.field public static final OooO0OO:[I

.field public static final OooO0Oo:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/mi/device/Ares;->OooO0OO:[I

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/mi/device/Ares;->OooO0Oo:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x12
        -0xc
        -0x6
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x21
        -0xc
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

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

.method public OooO00o(Z)[I
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    sget-object p0, Lcom/mi/device/Ares;->OooO0OO:[I

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/mi/device/Ares;->OooO0Oo:[I

    :goto_0
    return-object p0
.end method

.method public OooO0O0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OooOOOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OooOOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OooOo()J
    .locals 2

    const-wide/32 v0, 0x21999a

    return-wide v0
.end method

.method public OooOo0()Ljava/lang/String;
    .locals 0

    const-string p0, "true"

    return-object p0
.end method

.method public OooOo0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OooOoOO()I
    .locals 0

    const/16 p0, 0x1a4

    return p0
.end method

.method public OooOoo()[Ljava/lang/String;
    .locals 0

    const-string p0, "5"

    .line 1
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public OooOoo0()I
    .locals 0

    const/16 p0, 0x168

    return p0
.end method

.method public Oooo0()Ljava/lang/String;
    .locals 0

    const-string p0, "3.2"

    return-object p0
.end method

.method public Oooo0O0()[I
    .locals 0

    const/16 p0, 0xa

    new-array p0, p0, [I

    .line 1
    fill-array-data p0, :array_0

    return-object p0

    :array_0
    .array-data 4
        0x400000
        0x1e8480
        0x400100
        0x27ac40
        0x400200
        0x2dc6c0
        0x1000000
        0x0
        0xc00000
        0x0
    .end array-data
.end method

.method public Oooo0OO()I
    .locals 0

    const/16 p0, 0x14

    return p0
.end method

.method public Oooo0oO()I
    .locals 0

    const p0, 0xf5aaa0

    return p0
.end method

.method public OoooO00()Ljava/lang/String;
    .locals 0

    const-string p0, "7.0"

    return-object p0
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

.method public Ooooooo()Ljava/lang/String;
    .locals 0

    const-string p0, "4.5"

    return-object p0
.end method

.method public o000()Ljava/lang/String;
    .locals 0

    const-string p0, "macro:wide:ultra_wide:sat"

    return-object p0
.end method

.method public o000000()I
    .locals 0

    const/16 p0, 0x172

    return p0
.end method

.method public o00000O0()F
    .locals 0

    const p0, 0x3f635bd5    # 0.88812f

    return p0
.end method

.method public o0000O0()Ljava/lang/String;
    .locals 0

    const-string p0, "2:9248x6944"

    return-object p0
.end method

.method public o0000O00()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public o0000OOO()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public o0000OOo()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public o0000Ooo()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public o0000o()Ljava/lang/String;
    .locals 0

    const-string p0, "1.0:2.0"

    return-object p0
.end method

.method public o0000o0O()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0000oo()S
    .locals 0

    .line 1
    sget-object p0, Lcom/mi/device/SlowMotionEnum;->OooO0o:Lcom/mi/device/SlowMotionEnum;

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

.method public o000O0oO()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000O0oo()I
    .locals 0

    const p0, 0x4c4b40

    return p0
.end method

.method public o000OO00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000OOO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o000Oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000Oo0()[J
    .locals 3

    const/4 p0, 0x1

    new-array p0, p0, [J

    const/4 v0, 0x0

    const-wide/16 v1, 0x12c

    aput-wide v1, p0, v0

    return-object p0
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

.method public o000OoOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000Ooo()Ljava/lang/String;
    .locals 0

    const-string p0, "capture_inner:0.6:1:2:5:10;capture_ruler:4:10:10:5"

    return-object p0
.end method

.method public o000OooO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000Oooo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000o0oO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o000o0oo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o000oOoo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000oo00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000oo0O()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o000oo0o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o000ooO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000ooOO()Z
    .locals 0

    const/4 p0, 0x0

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

.method public o00O00o()Z
    .locals 0

    const/4 p0, 0x0

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

.method public o00O0OOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0Ooo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0o()Z
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

.method public o00OO0O0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OO0o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00OOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OOOoO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00OOoo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OOooO()Z
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

    const/4 p0, 0x0

    return p0
.end method

.method public o00OoOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OoOoo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00Ooo00()Z
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

.method public o00OoooO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0O00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0O0O()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00o0OO0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00o0OOo()Z
    .locals 0

    const/4 p0, 0x0

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

    const/4 p0, 0x0

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

.method public o00oO0o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00oOOO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOOOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOOo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOOoO()Z
    .locals 0

    const/4 p0, 0x1

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

.method public o00oo000()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00oo0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oo0O0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00ooO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00ooO0()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public o00ooOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00ooOoO()I
    .locals 0

    const/16 p0, 0xf

    return p0
.end method

.method public o00ooo00()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public o00ooo0o()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public o00oooO()I
    .locals 0

    const/16 p0, 0xc

    return p0
.end method

.method public o00oooOo()I
    .locals 0

    const/16 p0, 0xa0

    return p0
.end method

.method public o00oooo()Z
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

.method public o0O00OOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O00Oo()Z
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

.method public o0O0OO0O()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0O0OOOo()Ljava/lang/String;
    .locals 0

    const-string p0, "ultra_wide:wide:front:macro"

    return-object p0
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

.method public o0O0OOoo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0Oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0OoO()Z
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

.method public o0O0o00o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0o0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0o0OO()Z
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

.method public o0O0oOoO()Ljava/lang/String;
    .locals 0

    const-string p0, "false"

    return-object p0
.end method

.method public o0O0oOoo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0O0oo0O()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0O0oo0o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0O0ooOO()Z
    .locals 0

    const/4 p0, 0x1

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

    const-string p0, "macro:ultra_wide:pro:capture_intent"

    return-object p0
.end method

.method public o0OooO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
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

    const/4 p0, 0x0

    return p0
.end method

.method public o0ooO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0ooOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0ooOoO()I
    .locals 0

    const/16 p0, 0xf

    return p0
.end method

.method public oOO00O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public oo000o()Ljava/lang/String;
    .locals 0

    const-string p0, "120,60"

    return-object p0
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

.method public oo0OOoo()Z
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

.method public oooOO0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
