.class public final enum Ljava8/util/Comparators$NaturalOrderComparator;
.super Ljava/lang/Enum;
.source "Comparators.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/Comparators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NaturalOrderComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava8/util/Comparators$NaturalOrderComparator;",
        ">;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Ljava8/util/Comparators$NaturalOrderComparator;

.field public static final enum INSTANCE:Ljava8/util/Comparators$NaturalOrderComparator;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava8/util/Comparators$NaturalOrderComparator;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Ljava8/util/Comparators$NaturalOrderComparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava8/util/Comparators$NaturalOrderComparator;->INSTANCE:Ljava8/util/Comparators$NaturalOrderComparator;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava8/util/Comparators$NaturalOrderComparator;

    aput-object v0, v2, v1

    .line 2
    sput-object v2, Ljava8/util/Comparators$NaturalOrderComparator;->$VALUES:[Ljava8/util/Comparators$NaturalOrderComparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava8/util/Comparators$NaturalOrderComparator;
    .locals 1

    .line 1
    const-class v0, Ljava8/util/Comparators$NaturalOrderComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljava8/util/Comparators$NaturalOrderComparator;

    return-object p0
.end method

.method public static values()[Ljava8/util/Comparators$NaturalOrderComparator;
    .locals 1

    .line 1
    sget-object v0, Ljava8/util/Comparators$NaturalOrderComparator;->$VALUES:[Ljava8/util/Comparators$NaturalOrderComparator;

    invoke-virtual {v0}, [Ljava8/util/Comparators$NaturalOrderComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava8/util/Comparators$NaturalOrderComparator;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Comparable<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 2
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Ljava8/util/Comparators$NaturalOrderComparator;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method

.method public reversed()Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/lang/Comparable<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava8/util/Comparators;->reverseOrder()Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method
