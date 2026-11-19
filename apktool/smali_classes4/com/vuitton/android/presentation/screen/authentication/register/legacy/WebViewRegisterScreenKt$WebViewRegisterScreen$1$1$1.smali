.class final Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterScreenKt$WebViewRegisterScreen$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterScreenKt$WebViewRegisterScreen$1$1$1;->b:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterScreenKt$WebViewRegisterScreen$1$1$1;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterScreenKt$WebViewRegisterScreen$1$1$1;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterScreenKt$WebViewRegisterScreen$1$1$1;->b:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    if-eqz p1, :cond_0

    invoke-interface {p0, p2}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;->k6(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0, p2}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;->V9(Ljava/lang/String;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
