.class public final synthetic Lm11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/runtime/MutableState;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lm11;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm11;->c:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lm11;->d:Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lm11;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm11;->d:Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;

    iput-object p2, p0, Lm11;->c:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lm11;->b:I

    iget-object v1, p0, Lm11;->d:Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;

    iget-object p0, p0, Lm11;->c:Landroidx/compose/runtime/MutableState;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/vuitton/android/presentation/screen/storemode/components/StoreModeWelcomeComposableKt;->a:F

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->h:Ljava/lang/String;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$ActivationClickedEvent;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$ActivationClickedEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->S6(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->h:Ljava/lang/String;

    if-eqz p0, :cond_1

    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CancelExitClickedEvent;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CancelExitClickedEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->S6(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel;)V

    :cond_1
    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->C6()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
