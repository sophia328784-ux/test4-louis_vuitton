.class final Lcom/vuitton/android/presentation/screen/authentication/base/WebViewAuthContentKt$WebViewAuthContent$1$1$1;
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


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/base/WebViewAuthContentKt$WebViewAuthContent$1$1$1;->b:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    sget-object p2, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;->LOGGED_IN:Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/base/WebViewAuthContentKt$WebViewAuthContent$1$1$1;->b:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$SignInSuccessfulEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$SignInSuccessfulEvent;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;->I0(Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
