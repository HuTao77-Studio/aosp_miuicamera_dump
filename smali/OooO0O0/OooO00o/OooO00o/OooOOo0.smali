.class public LOooO0O0/OooO00o/OooO00o/OooOOo0;
.super Ljava/lang/Object;
.source "PerformanceTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooO0O0/OooO00o/OooO00o/OooOOo0$OooO0O0;
    }
.end annotation


# instance fields
.field public OooO00o:Z

.field public final OooO0O0:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "LOooO0O0/OooO00o/OooO00o/OooOOo0$OooO0O0;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0OO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0o;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0Oo:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO00o:Z

    .line 3
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO0O0:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO0OO:Ljava/util/Map;

    .line 5
    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooOOo0$OooO00o;

    invoke-direct {v0, p0}, LOooO0O0/OooO00o/OooO00o/OooOOo0$OooO00o;-><init>(LOooO0O0/OooO00o/OooO00o/OooOOo0;)V

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO0Oo:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 0

    .line 11
    iget-object p0, p0, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO0OO:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public OooO00o(LOooO0O0/OooO00o/OooO00o/OooOOo0$OooO0O0;)V
    .locals 0

    .line 10
    iget-object p0, p0, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO0O0:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooO00o(Ljava/lang/String;F)V
    .locals 2

    .line 2
    iget-boolean v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO00o:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO0OO:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0o;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0o;

    invoke-direct {v0}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0o;-><init>()V

    .line 5
    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO0OO:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    invoke-virtual {v0, p2}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0o;->OooO00o(F)V

    const-string v0, "__container"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p0, p0, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO0O0:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LOooO0O0/OooO00o/OooO00o/OooOOo0$OooO0O0;

    .line 9
    invoke-interface {p1, p2}, LOooO0O0/OooO00o/OooO00o/OooOOo0$OooO0O0;->OooO00o(F)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public OooO00o(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO00o:Z

    return-void
.end method

.method public OooO0O0()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO00o:Z

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO0OO:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO0OO:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    new-instance v3, Landroidx/core/util/Pair;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0o;

    invoke-virtual {v2}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0o;->OooO00o()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object p0, p0, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO0Oo:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public OooO0O0(LOooO0O0/OooO00o/OooO00o/OooOOo0$OooO0O0;)V
    .locals 0

    .line 1
    iget-object p0, p0, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO0O0:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooO0OO()V
    .locals 6

    .line 1
    iget-boolean v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO00o:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO0O0()Ljava/util/List;

    move-result-object p0

    const-string v0, "LOTTIE"

    const-string v1, "Render times:"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    move v2, v1

    .line 4
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 5
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/util/Pair;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 6
    iget-object v5, v3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    aput-object v5, v4, v1

    iget-object v3, v3, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string v3, "\t\t%30s:%.2f"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method