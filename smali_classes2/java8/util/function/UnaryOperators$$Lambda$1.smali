.class public final synthetic Ljava8/util/function/UnaryOperators$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/UnaryOperator;


# static fields
.field public static final instance:Ljava8/util/function/UnaryOperators$$Lambda$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/function/UnaryOperators$$Lambda$1;

    invoke-direct {v0}, Ljava8/util/function/UnaryOperators$$Lambda$1;-><init>()V

    sput-object v0, Ljava8/util/function/UnaryOperators$$Lambda$1;->instance:Ljava8/util/function/UnaryOperators$$Lambda$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/UnaryOperator;
    .locals 1

    sget-object v0, Ljava8/util/function/UnaryOperators$$Lambda$1;->instance:Ljava8/util/function/UnaryOperators$$Lambda$1;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Ljava8/util/function/UnaryOperators;->lambda$identity$133(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
