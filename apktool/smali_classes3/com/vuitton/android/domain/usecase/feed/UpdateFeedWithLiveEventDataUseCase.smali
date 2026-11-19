.class public final Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase;",
        "",
        "Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;",
        "getLiveVideoUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;)V",
        "domain"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase;->a:Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/feed/Feed;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase$updateLiveEventSections$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase$updateLiveEventSections$1;

    iget v3, v2, Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase$updateLiveEventSections$1;->k:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase$updateLiveEventSections$1;->k:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase$updateLiveEventSections$1;

    invoke-direct {v2, v0, v1}, Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase$updateLiveEventSections$1;-><init>(Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v2, Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase$updateLiveEventSections$1;->i:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase$updateLiveEventSections$1;->k:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget v4, v2, Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase$updateLiveEventSections$1;->h:I

    iget v7, v2, Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase$updateLiveEventSections$1;->g:I

    iget-object v8, v2, Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase$updateLiveEventSections$1;->f:Ljava/util/Collection;

    check-cast v8, Ljava/util/Collection;

    iget-object v9, v2, Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase$updateLiveEventSections$1;->e:Lcom/vuitton/foundation/model/domain/model/feed/Feed;

    iget-object v10, v2, Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase$updateLiveEventSections$1;->d:Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;

    iget-object v11, v2, Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase$updateLiveEventSections$1;->c:Ljava/util/Iterator;

    iget-object v12, v2, Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase$updateLiveEventSections$1;->b:Ljava/util/Collection;

    check-cast v12, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/Result;

    iget-object v1, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    iget-object v4, v1, Lcom/vuitton/foundation/model/domain/model/feed/Feed;->a:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v4, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v8, 0x0

    move-object v11, v4

    move v4, v8

    move-object v8, v7

    move v7, v4

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;

    instance-of v9, v10, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;

    if-eqz v9, :cond_6

    move-object v9, v10

    check-cast v9, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;

    iget-object v12, v9, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->f:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    iget-object v13, v12, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->f:Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;

    sget-object v14, Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;->LIVE:Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;

    if-ne v13, v14, :cond_6

    iget-object v12, v12, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->a:Ljava/lang/String;

    move-object v13, v8

    check-cast v13, Ljava/util/Collection;

    iput-object v13, v2, Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase$updateLiveEventSections$1;->b:Ljava/util/Collection;

    iput-object v11, v2, Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase$updateLiveEventSections$1;->c:Ljava/util/Iterator;

    iput-object v9, v2, Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase$updateLiveEventSections$1;->d:Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;

    iput-object v1, v2, Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase$updateLiveEventSections$1;->e:Lcom/vuitton/foundation/model/domain/model/feed/Feed;

    iput-object v13, v2, Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase$updateLiveEventSections$1;->f:Ljava/util/Collection;

    iput v7, v2, Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase$updateLiveEventSections$1;->g:I

    iput v4, v2, Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase$updateLiveEventSections$1;->h:I

    iput v5, v2, Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase$updateLiveEventSections$1;->k:I

    iget-object v9, v0, Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase;->a:Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;

    invoke-virtual {v9, v12, v2}, Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v3, :cond_3

    return-object v3

    :cond_3
    move-object v12, v9

    move-object v9, v1

    move-object v1, v12

    move-object v12, v8

    :goto_2
    sget-object v13, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v13, v1, Lkotlin/Result$Failure;

    if-eqz v13, :cond_4

    move-object v1, v6

    :cond_4
    check-cast v1, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    if-eqz v1, :cond_5

    check-cast v10, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;

    iget-object v13, v10, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->f:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    iget-object v14, v1, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->f:Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->e:Ljava/time/Instant;

    iget-object v15, v13, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->a:Ljava/lang/String;

    iget-object v5, v13, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->b:Ljava/lang/String;

    iget-object v6, v13, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->c:Ljava/lang/String;

    iget-object v0, v13, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->d:Ljava/lang/String;

    iget-object v13, v13, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->g:Ljava/lang/String;

    new-instance v29, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    const/16 v22, 0x0

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v21, v13

    move-object/from16 v20, v14

    move-object/from16 v14, v29

    invoke-direct/range {v14 .. v22}, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/time/Instant;Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v0, v10, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->a:Ljava/lang/String;

    iget-object v1, v10, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->b:Ljava/lang/String;

    iget-object v5, v10, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    iget-object v6, v10, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->d:Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    iget-object v13, v10, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->e:Ljava/lang/String;

    iget-object v15, v10, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->g:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    iget-object v10, v10, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->h:Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v23, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;

    move-object/from16 v24, v0

    move-object/from16 v25, v1

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v31, v10

    move-object/from16 v28, v13

    move-object/from16 v30, v15

    invoke-direct/range {v23 .. v31}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;)V

    move-object/from16 v10, v23

    goto :goto_3

    :cond_5
    check-cast v10, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;

    :goto_3
    move-object v1, v9

    goto :goto_4

    :cond_6
    move-object v12, v8

    :goto_4
    invoke-interface {v8, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v8, v12

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_7
    check-cast v8, Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/feed/Feed;

    invoke-direct {v0, v8}, Lcom/vuitton/foundation/model/domain/model/feed/Feed;-><init>(Ljava/util/List;)V

    return-object v0
.end method
