.class final Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleCustomizationCardClicked$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleCustomizationCardClicked$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$handleCustomizationCardClicked$1"
    f = "PdpViewModelImpl.kt"
    l = {
        0x511,
        0x520
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

.field public final synthetic d:Z

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;ZLcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleCustomizationCardClicked$1;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleCustomizationCardClicked$1;->d:Z

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleCustomizationCardClicked$1;->e:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleCustomizationCardClicked$1;->f:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleCustomizationCardClicked$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleCustomizationCardClicked$1;->e:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleCustomizationCardClicked$1;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleCustomizationCardClicked$1;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleCustomizationCardClicked$1;->d:Z

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleCustomizationCardClicked$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;ZLcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleCustomizationCardClicked$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleCustomizationCardClicked$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleCustomizationCardClicked$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleCustomizationCardClicked$1;->e:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->w0:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->W:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleCustomizationCardClicked$1;->b:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_2

    if-eq v4, v6, :cond_1

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleCustomizationCardClicked$1$WhenMappings;->a:[I

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleCustomizationCardClicked$1;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget p1, p1, v8

    iget-boolean v8, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleCustomizationCardClicked$1;->d:Z

    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    return-object v7

    :pswitch_0
    sget p1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->z0:I

    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnDiamondEngravingCardClickEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnDiamondEngravingCardClickEvent;

    invoke-virtual {v0, p1}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->Gc(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;)V

    goto :goto_1

    :pswitch_1
    if-eqz v8, :cond_3

    sget p1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->z0:I

    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnPerfumeEngravingCardUpdateClickEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnPerfumeEngravingCardUpdateClickEvent;

    invoke-virtual {v0, p1}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->Gc(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;)V

    goto :goto_1

    :cond_3
    sget p1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->z0:I

    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnPerfumeEngravingCardClickEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnPerfumeEngravingCardClickEvent;

    invoke-virtual {v0, p1}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->Gc(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;)V

    goto :goto_1

    :pswitch_2
    if-eqz v8, :cond_4

    sget p1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->z0:I

    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnHotstampingCardUpdateClickEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnHotstampingCardUpdateClickEvent;

    invoke-virtual {v0, p1}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->Gc(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;)V

    goto :goto_1

    :cond_4
    sget p1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->z0:I

    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnHotstampingCardClickEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnHotstampingCardClickEvent;

    invoke-virtual {v0, p1}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->Gc(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;)V

    goto :goto_1

    :pswitch_3
    if-eqz v8, :cond_5

    sget p1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->z0:I

    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnBeautyEngravingCardUpdateClickEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnBeautyEngravingCardUpdateClickEvent;

    invoke-virtual {v0, p1}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->Gc(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;)V

    goto :goto_1

    :cond_5
    sget p1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->z0:I

    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnBeautyEngravingCardClickEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnBeautyEngravingCardClickEvent;

    invoke-virtual {v0, p1}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->Gc(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;)V

    goto :goto_1

    :pswitch_4
    if-eqz v8, :cond_6

    sget p1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->z0:I

    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnMyMonogramCardUpdateClickEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnMyMonogramCardUpdateClickEvent;

    invoke-virtual {v0, p1}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->Gc(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;)V

    goto :goto_1

    :cond_6
    sget p1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->z0:I

    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnMyMonogramCardClickEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnMyMonogramCardClickEvent;

    invoke-virtual {v0, p1}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->Gc(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;)V

    :goto_1
    :pswitch_5
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->V:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;

    goto :goto_2

    :cond_7
    move-object p1, v7

    :goto_2
    if-nez p1, :cond_a

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->V:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;

    goto :goto_3

    :cond_8
    move-object p1, v7

    :goto_3
    if-eqz p1, :cond_9

    goto :goto_4

    :cond_9
    const/4 p1, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    move p1, v6

    :goto_5
    iget-object v9, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleCustomizationCardClicked$1;->f:Ljava/lang/String;

    if-eqz v8, :cond_c

    sget-object v8, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;->HOTSTAMPING:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    if-eq v4, v8, :cond_b

    sget-object v8, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;->PERFUME_ENGRAVING:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    if-ne v4, v8, :cond_c

    :cond_b
    new-instance p1, Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$EditCustomization;

    invoke-direct {p1, v9, v4}, Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$EditCustomization;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;)V

    iput v6, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleCustomizationCardClicked$1;->b:I

    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v3, :cond_12

    goto :goto_8

    :cond_c
    sget-object v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;->MONOGRAM:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    if-ne v4, v6, :cond_11

    if-eqz p1, :cond_11

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    if-eqz p1, :cond_d

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->V:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;

    if-eqz p1, :cond_d

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;

    if-eqz p1, :cond_d

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;

    goto :goto_6

    :cond_d
    move-object p1, v7

    :goto_6
    if-eqz p1, :cond_e

    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;->HOTSTAMPING:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    goto :goto_7

    :cond_e
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    if-eqz p1, :cond_f

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->V:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;

    if-eqz p1, :cond_f

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;

    if-eqz p1, :cond_f

    iget-object v7, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;

    :cond_f
    if-eqz v7, :cond_10

    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;->PERFUME_ENGRAVING:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    goto :goto_7

    :cond_10
    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;->NO_CUSTOMIZATION:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    :goto_7
    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$MultipleCustomizations;

    invoke-direct {v0, v9, v4, p1}, Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$MultipleCustomizations;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;)V

    iput v5, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleCustomizationCardClicked$1;->b:I

    invoke-interface {v1, v0, p0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v3, :cond_12

    :goto_8
    return-object v3

    :cond_11
    invoke-virtual {v0, v9, v4}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->jc(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;)V

    :cond_12
    :goto_9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
