.class public abstract Lfq;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lsun/misc/Unsafe;


# direct methods
.method public constructor <init>(Lsun/misc/Unsafe;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfq;->a:Lsun/misc/Unsafe;

    return-void
.end method


# virtual methods
.method public abstract OooO00o(Ljava/lang/Object;J)B
.end method

.method public final OooO00o(Ljava/lang/Class;)I
    .locals 0

    iget-object p0, p0, Lfq;->a:Lsun/misc/Unsafe;

    .line 1
    invoke-virtual {p0, p1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p0

    return p0
.end method

.method public abstract OooO00o(Ljava/lang/Object;JB)V
.end method

.method public abstract OooO00o(Ljava/lang/Object;JD)V
.end method

.method public abstract OooO00o(Ljava/lang/Object;JF)V
.end method

.method public final OooO00o(Ljava/lang/Object;JI)V
    .locals 0

    iget-object p0, p0, Lfq;->a:Lsun/misc/Unsafe;

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final OooO00o(Ljava/lang/Object;JJ)V
    .locals 6

    iget-object v0, p0, Lfq;->a:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 4
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public final OooO00o(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lfq;->a:Lsun/misc/Unsafe;

    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public abstract OooO00o(Ljava/lang/Object;JZ)V
.end method

.method public final OooO00o(Ljava/lang/reflect/Field;)V
    .locals 0

    iget-object p0, p0, Lfq;->a:Lsun/misc/Unsafe;

    .line 2
    invoke-virtual {p0, p1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    return-void
.end method

.method public final OooO0O0(Ljava/lang/Class;)I
    .locals 0

    iget-object p0, p0, Lfq;->a:Lsun/misc/Unsafe;

    .line 1
    invoke-virtual {p0, p1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result p0

    return p0
.end method

.method public abstract OooO0O0(Ljava/lang/Object;J)Z
.end method

.method public abstract OooO0OO(Ljava/lang/Object;J)F
.end method

.method public abstract OooO0Oo(Ljava/lang/Object;J)D
.end method

.method public final OooO0o(Ljava/lang/Object;J)J
    .locals 0

    iget-object p0, p0, Lfq;->a:Lsun/misc/Unsafe;

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final OooO0o0(Ljava/lang/Object;J)I
    .locals 0

    iget-object p0, p0, Lfq;->a:Lsun/misc/Unsafe;

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public final OooO0oO(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfq;->a:Lsun/misc/Unsafe;

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
