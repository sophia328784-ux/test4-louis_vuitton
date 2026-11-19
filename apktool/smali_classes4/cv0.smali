.class public final synthetic Lcv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;Landroid/content/Context;Landroidx/compose/runtime/State;I)V
    .locals 0

    iput p4, p0, Lcv0;->b:I

    iput-object p1, p0, Lcv0;->c:Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;

    iput-object p2, p0, Lcv0;->d:Landroid/content/Context;

    iput-object p3, p0, Lcv0;->e:Landroidx/compose/runtime/State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;Landroidx/compose/runtime/State;Landroid/content/Context;I)V
    .locals 0

    .line 12
    iput p4, p0, Lcv0;->b:I

    iput-object p1, p0, Lcv0;->c:Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;

    iput-object p2, p0, Lcv0;->e:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lcv0;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcv0;->b:I

    sget-object v1, Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenFaqEvent;->a:Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenFaqEvent;

    const/4 v2, 0x0

    iget-object v3, p0, Lcv0;->e:Landroidx/compose/runtime/State;

    iget-object v4, p0, Lcv0;->d:Landroid/content/Context;

    iget-object p0, p0, Lcv0;->c:Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenContactUsEvent;->a:Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenContactUsEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;->L7(Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel;)V

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->f:Lcom/vuitton/android/presentation/screen/services/models/ServicesUrls;

    if-eqz p0, :cond_0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesUrls;->d:Ljava/lang/String;

    :cond_0
    invoke-static {v4, v2}, Lcom/vuitton/android/presentation/screen/services/components/ServicesComposableKt;->b(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenArtOfGiftingEvent;->a:Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenArtOfGiftingEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;->L7(Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel;)V

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->g:Lcom/vuitton/android/presentation/screen/services/models/ServicesImmersiveArticlesKey;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesImmersiveArticlesKey;->a:Ljava/lang/String;

    if-eqz p0, :cond_2

    new-instance v0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToImmersiveArticlePage;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToImmersiveArticlePage;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/vuitton/android/presentation/screen/services/ServicesDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/services/ServicesDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v4, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    :cond_1
    move-object p0, v2

    :goto_0
    if-nez p0, :cond_4

    :cond_2
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->f:Lcom/vuitton/android/presentation/screen/services/models/ServicesUrls;

    if-eqz p0, :cond_3

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesUrls;->b:Ljava/lang/String;

    :cond_3
    invoke-static {v4, v2}, Lcom/vuitton/android/presentation/screen/services/components/ServicesComposableKt;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenPersonalizationEvent;->a:Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenPersonalizationEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;->L7(Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel;)V

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->g:Lcom/vuitton/android/presentation/screen/services/models/ServicesImmersiveArticlesKey;

    if-eqz p0, :cond_6

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesImmersiveArticlesKey;->b:Ljava/lang/String;

    if-eqz p0, :cond_6

    new-instance v0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToImmersiveArticlePage;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToImmersiveArticlePage;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/vuitton/android/presentation/screen/services/ServicesDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/services/ServicesDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {v4, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_1

    :cond_5
    move-object p0, v2

    :goto_1
    if-nez p0, :cond_8

    :cond_6
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->f:Lcom/vuitton/android/presentation/screen/services/models/ServicesUrls;

    if-eqz p0, :cond_7

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesUrls;->c:Ljava/lang/String;

    :cond_7
    invoke-static {v4, v2}, Lcom/vuitton/android/presentation/screen/services/components/ServicesComposableKt;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenCareServiceEvent;->a:Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenCareServiceEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;->L7(Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel;)V

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->f:Lcom/vuitton/android/presentation/screen/services/models/ServicesUrls;

    if-eqz p0, :cond_9

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesUrls;->f:Ljava/lang/String;

    :cond_9
    invoke-static {v4, v2}, Lcom/vuitton/android/presentation/screen/services/components/ServicesComposableKt;->b(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    invoke-interface {p0, v1}, Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;->L7(Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel;)V

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->f:Lcom/vuitton/android/presentation/screen/services/models/ServicesUrls;

    if-eqz p0, :cond_a

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesUrls;->g:Ljava/lang/String;

    :cond_a
    invoke-static {v4, v2}, Lcom/vuitton/android/presentation/screen/services/components/ServicesComposableKt;->b(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    invoke-interface {p0, v1}, Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;->L7(Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel;)V

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->f:Lcom/vuitton/android/presentation/screen/services/models/ServicesUrls;

    if-eqz p0, :cond_b

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesUrls;->e:Ljava/lang/String;

    :cond_b
    invoke-static {v4, v2}, Lcom/vuitton/android/presentation/screen/services/components/ServicesComposableKt;->b(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
