.class final Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateMarketingDisclaimerVisibility$2;
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
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateMarketingDisclaimerVisibility$2;->b:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateMarketingDisclaimerVisibility$2;->b:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;->b:Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;->e:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_1
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Error getting user consents: "

    const/4 v1, 0x0

    const-string v2, "MyInformationViewModelImpl"

    invoke-static {v0, p1, p0, v2, v1}, La;->y(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
