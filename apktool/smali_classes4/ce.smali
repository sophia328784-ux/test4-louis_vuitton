.class public final synthetic Lce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    iput p3, p0, Lce;->b:I

    iput-object p1, p0, Lce;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;

    iput-object p2, p0, Lce;->d:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lce;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, ""

    const/4 v4, 0x0

    iget-object v5, p0, Lce;->d:Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Lce;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$Companion;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;->r:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->g:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ColorUiModel;

    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ColorUiModel;->a:Ljava/lang/String;

    :cond_0
    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    invoke-static {p0, v3}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->H(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$Companion;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;->i:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->g:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ColorUiModel;

    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ColorUiModel;->a:Ljava/lang/String;

    :cond_2
    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v4

    :goto_1
    invoke-static {p0, v3}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->H(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$Companion;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;->i:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->g:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ColorUiModel;

    if-eqz v0, :cond_4

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ColorUiModel;->a:Ljava/lang/String;

    :cond_4
    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    move-object v3, v4

    :goto_2
    invoke-static {p0, v3}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->H(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$Companion;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;->a:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    sget-object v5, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$WhenMappings;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v5, v3

    if-eq v3, v2, :cond_a

    const/4 v1, 0x2

    if-eq v3, v1, :cond_7

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->s:Lcom/perfectcorp/perfectlib/MakeupCam;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v2}, Lcom/perfectcorp/perfectlib/MakeupCam;->enableComparison(Z)V

    :cond_6
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->M()Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    move-result-object p0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;->E6()V

    goto :goto_3

    :cond_7
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;->j:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v0, :cond_8

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    :cond_8
    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;->EYESHADOW:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    if-ne v4, v0, :cond_9

    new-instance v0, Lbe;

    invoke-direct {v0, p0, v1}, Lbe;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;I)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->K(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_9
    new-instance v0, Lbe;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lbe;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;I)V

    invoke-virtual {p0, v4, v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->J(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->s:Lcom/perfectcorp/perfectlib/MakeupCam;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/MakeupCam;->enableComparison(Z)V

    :cond_b
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->M()Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    move-result-object p0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;->E6()V

    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$Companion;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;->a:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;->DUAL:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    if-ne v0, v2, :cond_c

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->s:Lcom/perfectcorp/perfectlib/MakeupCam;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/MakeupCam;->enableComparison(Z)V

    :cond_c
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->M()Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    move-result-object p0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;->Sb()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->M()Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;->r6()V

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;->u:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;->c:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToNativeCartPage;->a:Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToNativeCartPage;

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    :cond_d
    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToWebViewPage;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;->e:Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToWebViewPage;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
