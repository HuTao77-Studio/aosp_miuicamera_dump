.class public final synthetic LOooO0O0/OooO0O0/OooO00o/o000oOoO/o0OoOo0/OooOO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Landroid/text/SpannableStringBuilder;

.field private final synthetic OooO0O0:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final synthetic OooO0OO:Landroid/text/Spanned;

.field private final synthetic OooO0Oo:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public synthetic constructor <init>(Landroid/text/SpannableStringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/text/Spanned;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/o000oOoO/o0OoOo0/OooOO0;->OooO00o:Landroid/text/SpannableStringBuilder;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/o000oOoO/o0OoOo0/OooOO0;->OooO0O0:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, LOooO0O0/OooO0O0/OooO00o/o000oOoO/o0OoOo0/OooOO0;->OooO0OO:Landroid/text/Spanned;

    iput-object p4, p0, LOooO0O0/OooO0O0/OooO00o/o000oOoO/o0OoOo0/OooOO0;->OooO0Oo:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/o000oOoO/o0OoOo0/OooOO0;->OooO00o:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/o000oOoO/o0OoOo0/OooOO0;->OooO0O0:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, LOooO0O0/OooO0O0/OooO00o/o000oOoO/o0OoOo0/OooOO0;->OooO0OO:Landroid/text/Spanned;

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/o000oOoO/o0OoOo0/OooOO0;->OooO0Oo:Ljava/util/concurrent/atomic/AtomicInteger;

    check-cast p1, Landroid/text/style/URLSpan;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;->OooO00o(Landroid/text/SpannableStringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/text/Spanned;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/text/style/URLSpan;)V

    return-void
.end method