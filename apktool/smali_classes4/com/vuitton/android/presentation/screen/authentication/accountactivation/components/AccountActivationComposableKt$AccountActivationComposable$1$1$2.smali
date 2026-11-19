.class final Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$1$1$2;
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
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$1$1$2;->b:Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModel;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$1$1$2;->b:Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModel;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$ActivationCodeStepScreen;->a:Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$ActivationCodeStepScreen;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModel;->s8(Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$PasswordStepScreen;->a:Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$PasswordStepScreen;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModel;->s8(Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
