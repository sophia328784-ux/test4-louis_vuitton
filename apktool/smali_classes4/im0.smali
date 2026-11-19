.class public final synthetic Lim0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    iput p3, p0, Lim0;->b:I

    iput-object p1, p0, Lim0;->c:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

    iput-object p2, p0, Lim0;->d:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lim0;->b:I

    const/4 v1, 0x0

    iget-object v2, p0, Lim0;->d:Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Lim0;->c:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b:Ljava/lang/String;

    :cond_0
    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoUiModel;->c:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, v1, p1}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
