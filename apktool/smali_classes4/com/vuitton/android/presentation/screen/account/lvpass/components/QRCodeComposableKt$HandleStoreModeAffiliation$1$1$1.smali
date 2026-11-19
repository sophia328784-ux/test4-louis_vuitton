.class final Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt$HandleStoreModeAffiliation$1$1$1;
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
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModel;

.field public final synthetic d:Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState;Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModel;Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt$HandleStoreModeAffiliation$1$1$1;->b:Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt$HandleStoreModeAffiliation$1$1$1;->c:Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt$HandleStoreModeAffiliation$1$1$1;->d:Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt$HandleStoreModeAffiliation$1$1$1;->e:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/vuitton/android/presentation/screen/account/userworldwideid/StoreModeAffiliation;

    instance-of p2, p1, Lcom/vuitton/android/presentation/screen/account/userworldwideid/StoreModeAffiliation$Success;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt$HandleStoreModeAffiliation$1$1$1;->b:Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState;

    instance-of v0, p2, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success;

    if-nez v0, :cond_0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$ActivateStoreModeWithQrCodeEvent;

    check-cast p2, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success;

    invoke-interface {p2}, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success;->a()Z

    move-result v1

    check-cast p1, Lcom/vuitton/android/presentation/screen/account/userworldwideid/StoreModeAffiliation$Success;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/account/userworldwideid/StoreModeAffiliation$Success;->a:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$ActivateStoreModeWithQrCodeEvent;-><init>(ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt$HandleStoreModeAffiliation$1$1$1;->c:Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModel;

    invoke-interface {v1, v0}, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModel;->W(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;)V

    invoke-interface {p2}, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/vuitton/android/presentation/tracking/PassActions$SpeedyPass;->USED:Lcom/vuitton/android/presentation/tracking/PassActions$SpeedyPass;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/vuitton/android/presentation/tracking/PassActions$LVPass;->IDENTIFIED:Lcom/vuitton/android/presentation/tracking/PassActions$LVPass;

    :goto_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt$HandleStoreModeAffiliation$1$1$1;->d:Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    invoke-virtual {v0, p2, p1}, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;->c(Lcom/vuitton/android/presentation/tracking/PassActions;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt$HandleStoreModeAffiliation$1$1$1;->e:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
