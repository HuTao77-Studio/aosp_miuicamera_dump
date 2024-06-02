.class public Lcom/mi/device/Frost;
.super Lcom/mi/device/Common;
.source "Frost.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mi/device/Common;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OooO00o()Z
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

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/util/SparseArray;-><init>(I)V

    const-string v1, "C40"

    const-string v2, "POCO"

    .line 2
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v3

    .line 3
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v4, "C40+"

    .line 4
    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    .line 5
    invoke-virtual {p0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v3, 0x2

    .line 6
    invoke-virtual {p0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    invoke-virtual {p0, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public OooOO0()Z
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

.method public OooOOoo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OooOo0o()J
    .locals 2

    const-wide/32 v0, 0x21999a

    return-wide v0
.end method

.method public OooOoO()I
    .locals 0

    const/16 p0, 0x186

    return p0
.end method

.method public OooOoOO()I
    .locals 0

    const/16 p0, 0x1a4

    return p0
.end method

.method public Oooo()Ljava/lang/String;
    .locals 0

    const-string p0, "v2"

    return-object p0
.end method

.method public Oooo0O0()I
    .locals 0

    const/16 p0, 0x14

    return p0
.end method

.method public Oooo0OO()I
    .locals 0

    const/16 p0, 0xa

    return p0
.end method

.method public Oooo0o0()I
    .locals 0

    const/16 p0, 0x64

    return p0
.end method

.method public OoooOO0()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public OoooOoO()I
    .locals 0

    const/16 p0, 0x12c

    return p0
.end method

.method public o0000OOO()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public o0000o()J
    .locals 2

    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public o0000o0o()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public o0000ooO()[[I
    .locals 3

    const/4 p0, 0x3

    new-array p0, p0, [[I

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, p0, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, p0, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    aput-object v1, p0, v0

    return-object p0

    :array_0
    .array-data 4
        0xcc0
        0x990
    .end array-data

    :array_1
    .array-data 4
        0xcc0
        0x730
    .end array-data

    :array_2
    .array-data 4
        0xcc0
        0x592
    .end array-data
.end method

.method public o000O0o()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public o000Oo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o000Oo0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000OoO()Ljava/lang/String;
    .locals 0

    const-string p0, "MACRO:WIDE:ULTRA_WIDE"

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

.method public o000Oooo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000o0oO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000o0oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000oo()Z
    .locals 0

    const/4 p0, 0x0

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

.method public o000oooo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O00OO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O00o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O00oO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0O0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0OO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00O0OOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00O0o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00O0oOo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00OO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OO00O()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00OO00o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00OO0o0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OO0oO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OOOO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00OOOO0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00OOOo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00Oo0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00Oo0oO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OoO0o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00OoOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00OoOo0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00o0000()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o000O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o00O0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00o00o0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00o00oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0O0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0OO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0Oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00o0oO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oO00O()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00oO00o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00oO0O()I
    .locals 0

    const/16 p0, 0x15e

    return p0
.end method

.method public o00oO0o()I
    .locals 0

    const/4 p0, 0x3

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

.method public o00oOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOo00()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOo0o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00oOoO()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00oOoOO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOoo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOooo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oo0O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oooo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O()Ljava/lang/String;
    .locals 0

    const-string p0, "true"

    return-object p0
.end method

.method public o0O0000o()I
    .locals 0

    const/16 p0, 0xc

    return p0
.end method

.method public o0O00O0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O00OO()I
    .locals 0

    const/16 p0, 0xb

    return p0
.end method

.method public o0O00o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0O00()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0OO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0OOOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0OOoo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0Oo0O()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0O0OoO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0o00()Z
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

.method public o0O0oO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0oO0o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0O0oOO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0oOo0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0O0oo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0O0ooO0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0OO00OO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0Oo0oo()F
    .locals 0

    const/high16 p0, 0x41200000    # 10.0f

    return p0
.end method

.method public o0OoO0o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0OoOoOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0oO0Ooo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public oOO00O()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public oo00oO()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public oooOO0()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method
