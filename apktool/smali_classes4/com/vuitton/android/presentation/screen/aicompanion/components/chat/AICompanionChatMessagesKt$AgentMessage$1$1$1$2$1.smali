.class final Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AgentMessage$1$1$1$2$1;
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
    c = "com.vuitton.android.presentation.screen.aicompanion.components.chat.AICompanionChatMessagesKt$AgentMessage$1$1$1$2$1"
    f = "AICompanionChatMessages.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/tracking/GA4Tracker;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel$EditorialSection;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/tracking/GA4Tracker;Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel$EditorialSection;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AgentMessage$1$1$1$2$1;->b:Lcom/vuitton/android/presentation/tracking/GA4Tracker;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AgentMessage$1$1$1$2$1;->c:Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel$EditorialSection;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AgentMessage$1$1$1$2$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AgentMessage$1$1$1$2$1;->b:Lcom/vuitton/android/presentation/tracking/GA4Tracker;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AgentMessage$1$1$1$2$1;->c:Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel$EditorialSection;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AgentMessage$1$1$1$2$1;-><init>(Lcom/vuitton/android/presentation/tracking/GA4Tracker;Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel$EditorialSection;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AgentMessage$1$1$1$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AgentMessage$1$1$1$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AgentMessage$1$1$1$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AgentMessage$1$1$1$2$1;->c:Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel$EditorialSection;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel$EditorialSection;->a:Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$ProductCarouselUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$ProductCarouselUiModel;->b:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->e:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    check-cast v3, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;

    if-eqz v3, :cond_2

    iget-object v2, v3, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->e:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;->d:Ljava/lang/String;

    move-object v7, v2

    goto :goto_1

    :cond_2
    move-object v7, v4

    :goto_1
    check-cast v1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$ProductCarouselUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$ProductCarouselUiModel;->b:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move/from16 v18, v2

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v18, 0x1

    if-ltz v18, :cond_5

    check-cast v2, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v14, v2, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    iget-object v15, v2, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->e:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    if-eqz v2, :cond_3

    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;->c:Ljava/lang/Double;

    move-object/from16 v16, v5

    goto :goto_3

    :cond_3
    move-object/from16 v16, v4

    :goto_3
    if-eqz v2, :cond_4

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;->d:Ljava/lang/String;

    move-object/from16 v17, v2

    goto :goto_4

    :cond_4
    move-object/from16 v17, v4

    :goto_4
    new-instance v11, Lcom/vuitton/foundation/model/domain/model/analytics/ViewItemListTrackingValue;

    const/16 v19, 0x0

    const-string v12, "my_companion_results"

    const-string v13, "My companion results"

    invoke-direct/range {v11 .. v19}, Lcom/vuitton/foundation/model/domain/model/analytics/ViewItemListTrackingValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v18, v3

    goto :goto_2

    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw v4

    :cond_6
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AgentMessage$1$1$1$2$1;->b:Lcom/vuitton/android/presentation/tracking/GA4Tracker;

    iget-object v0, v0, Lcom/vuitton/android/presentation/tracking/GA4Tracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v5, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$ViewItemListLoaded;

    const-string v6, "my_companion"

    const-string v8, "my_companion_results"

    const-string v9, "My companion results"

    invoke-direct/range {v5 .. v10}, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$ViewItemListLoaded;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v5}, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModelKt;->a(Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
