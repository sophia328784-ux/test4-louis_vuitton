.class final Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$displayConsentBottomSheet$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
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
    c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$displayConsentBottomSheet$1"
    f = "PdpViewModelImpl.kt"
    l = {
        0x4b0,
        0x4b5,
        0x4b9
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LegalConsentContextUiModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LegalConsentContextUiModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$displayConsentBottomSheet$1;->d:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$displayConsentBottomSheet$1;->e:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LegalConsentContextUiModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$displayConsentBottomSheet$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$displayConsentBottomSheet$1;->d:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$displayConsentBottomSheet$1;->e:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LegalConsentContextUiModel;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$displayConsentBottomSheet$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LegalConsentContextUiModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$displayConsentBottomSheet$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$displayConsentBottomSheet$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$displayConsentBottomSheet$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$displayConsentBottomSheet$1;->c:I

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$displayConsentBottomSheet$1;->e:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LegalConsentContextUiModel;

    const/4 v4, 0x3

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$displayConsentBottomSheet$1;->d:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v7, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_1
    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$displayConsentBottomSheet$1;->b:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    check-cast v2, Lkotlin/Result;

    iget-object v2, v2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v5, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/legal/GetLegalConsentUseCase;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/mappers/BeautyLegalConsentMapperKt$WhenMappings;->b:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    if-eq v9, v6, :cond_5

    if-ne v9, v7, :cond_4

    sget-object v9, Lcom/vuitton/foundation/model/domain/model/legal/LegalConsentContext;->SHADE_FINDER:Lcom/vuitton/foundation/model/domain/model/legal/LegalConsentContext;

    goto :goto_0

    :cond_4
    invoke-static {}, Lv40;->g()V

    return-object v8

    :cond_5
    sget-object v9, Lcom/vuitton/foundation/model/domain/model/legal/LegalConsentContext;->TRY_ON:Lcom/vuitton/foundation/model/domain/model/legal/LegalConsentContext;

    :goto_0
    iput v6, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$displayConsentBottomSheet$1;->c:I

    invoke-virtual {v2, v9, v0}, Lcom/vuitton/android/domain/usecase/legal/GetLegalConsentUseCase;->a(Lcom/vuitton/foundation/model/domain/model/legal/LegalConsentContext;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    goto/16 :goto_6

    :cond_6
    :goto_1
    sget-object v9, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v9, v2, Lkotlin/Result$Failure;

    if-nez v9, :cond_c

    move-object v9, v2

    check-cast v9, Lcom/vuitton/foundation/model/domain/model/legal/LegalConsent;

    iget-object v10, v5, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->r0:Lkotlinx/coroutines/flow/MutableStateFlow;

    :goto_2
    invoke-interface {v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v9, Lcom/vuitton/foundation/model/domain/model/legal/LegalConsent;->a:Ljava/lang/String;

    iget-object v13, v9, Lcom/vuitton/foundation/model/domain/model/legal/LegalConsent;->b:Ljava/util/List;

    check-cast v13, Ljava/lang/Iterable;

    new-instance v14, Ljava/util/ArrayList;

    const/16 v15, 0xa

    invoke-static {v13, v15}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v16, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;

    iget-object v4, v15, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;->a:Ljava/lang/String;

    move-object/from16 v22, v8

    iget-object v8, v15, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;->b:Ljava/lang/String;

    iget-boolean v7, v15, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;->c:Z

    iget-object v6, v15, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;->d:Lcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;

    iget-boolean v15, v15, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;->e:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static {v15}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v21

    move-object/from16 v17, v4

    move-object/from16 v20, v6

    move/from16 v19, v7

    move-object/from16 v18, v8

    invoke-direct/range {v16 .. v21}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;Landroidx/compose/runtime/MutableState;)V

    move-object/from16 v4, v16

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, v22

    const/4 v4, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x2

    goto :goto_3

    :cond_7
    move-object/from16 v22, v8

    iget-object v4, v9, Lcom/vuitton/foundation/model/domain/model/legal/LegalConsent;->c:Ljava/lang/String;

    iget-object v6, v9, Lcom/vuitton/foundation/model/domain/model/legal/LegalConsent;->d:Lcom/vuitton/foundation/model/domain/model/legal/LegalConsentContext;

    if-eqz v6, :cond_a

    sget-object v7, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/mappers/BeautyLegalConsentMapperKt$WhenMappings;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v7, v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_9

    const/4 v8, 0x2

    if-ne v6, v8, :cond_8

    sget-object v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LegalConsentContextUiModel;->SHADE_FINDER:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LegalConsentContextUiModel;

    goto :goto_4

    :cond_8
    invoke-static {}, Lv40;->g()V

    return-object v22

    :cond_9
    sget-object v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LegalConsentContextUiModel;->TRY_ON:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LegalConsentContextUiModel;

    goto :goto_4

    :cond_a
    const/4 v7, 0x1

    move-object/from16 v6, v22

    :goto_4
    new-instance v8, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;

    invoke-direct {v8, v12, v14, v4, v6}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LegalConsentContextUiModel;)V

    const/4 v4, 0x7

    move-object/from16 v6, v22

    invoke-static {v8, v6, v3, v4}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LegalConsentContextUiModel;I)Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;

    move-result-object v4

    invoke-interface {v10, v11, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v3, v5, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->w0:Lkotlinx/coroutines/channels/BufferedChannel;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$displayConsentBottomSheet$1;->b:Ljava/lang/Object;

    const/4 v8, 0x2

    iput v8, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$displayConsentBottomSheet$1;->c:I

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$VtoConsent;->a:Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$VtoConsent;

    invoke-interface {v3, v4, v0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_c

    goto :goto_6

    :cond_b
    move v6, v7

    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_c
    :goto_5
    invoke-static {v2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v4, v5, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error while getting VTO legal consent: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "ProductViewModel"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v3, v7}, Lcom/vuitton/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v3, v5, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->v0:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v8, v5, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->k:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v9, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v4, 0x7f140967

    const/4 v5, 0x2

    invoke-direct {v9, v4, v7, v5, v7}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v12, 0x0

    const/16 v13, 0x3c

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v4

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$displayConsentBottomSheet$1;->b:Ljava/lang/Object;

    const/4 v2, 0x3

    iput v2, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$displayConsentBottomSheet$1;->c:I

    invoke-interface {v3, v4, v0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_d

    :goto_6
    return-object v1

    :cond_d
    :goto_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
