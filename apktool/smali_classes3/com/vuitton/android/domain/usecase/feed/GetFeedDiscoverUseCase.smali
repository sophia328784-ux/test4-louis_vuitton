.class public final Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B)\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase;",
        "",
        "Lcom/vuitton/android/domain/repository/FeedRepository;",
        "feedRepository",
        "Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase;",
        "updateFeedWithLiveEventDataUseCase",
        "Lcom/vuitton/android/domain/usecase/exclusivesales/GetUserExclusiveSalesUseCase;",
        "getUserExclusiveSalesUseCase",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/FeedRepository;Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase;Lcom/vuitton/android/domain/usecase/exclusivesales/GetUserExclusiveSalesUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V",
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
.field public final a:Lcom/vuitton/android/domain/repository/FeedRepository;

.field public final b:Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase;

.field public final c:Lcom/vuitton/android/domain/usecase/exclusivesales/GetUserExclusiveSalesUseCase;

.field public final d:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/repository/FeedRepository;Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase;Lcom/vuitton/android/domain/usecase/exclusivesales/GetUserExclusiveSalesUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase;->a:Lcom/vuitton/android/domain/repository/FeedRepository;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase;->b:Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase;

    iput-object p3, p0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase;->c:Lcom/vuitton/android/domain/usecase/exclusivesales/GetUserExclusiveSalesUseCase;

    iput-object p4, p0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase;->d:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/common/Coordinates;ZZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p4, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->i:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->i:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;

    invoke-direct {v0, p0, p4}, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p4, v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->g:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->i:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/feed/Feed;

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_2
    iget-boolean p1, v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->f:Z

    iget-boolean p2, v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->e:Z

    iget-object p3, v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/feed/Feed;

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p4, Lkotlin/Result;

    iget-object p4, p4, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_3

    :cond_3
    iget-boolean p1, v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->f:Z

    iget-boolean p2, v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->e:Z

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-boolean p3, v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->f:Z

    iget-boolean p2, v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->e:Z

    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/common/Coordinates;

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p4, Lkotlin/Result;

    iget-object p4, p4, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/common/Coordinates;

    iput-boolean p2, v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->e:Z

    iput-boolean p3, v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->f:Z

    iput v6, v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->i:I

    iget-object p4, p0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase;->a:Lcom/vuitton/android/domain/repository/FeedRepository;

    invoke-interface {p4, v0}, Lcom/vuitton/android/domain/repository/FeedRepository;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_6

    goto/16 :goto_8

    :cond_6
    :goto_1
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, p4, Lkotlin/Result$Failure;

    if-nez v2, :cond_7

    check-cast p4, Lcom/vuitton/foundation/model/domain/model/feed/Feed;

    invoke-static {p4, p1}, Lcom/vuitton/android/domain/extensions/FeedExtKt;->a(Lcom/vuitton/foundation/model/domain/model/feed/Feed;Lcom/vuitton/foundation/model/domain/model/common/Coordinates;)Lcom/vuitton/foundation/model/domain/model/feed/Feed;

    move-result-object p4

    :cond_7
    instance-of p1, p4, Lkotlin/Result$Failure;

    if-eqz p1, :cond_8

    return-object p4

    :cond_8
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p4, Lcom/vuitton/foundation/model/domain/model/feed/Feed;

    iput-object v7, v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/common/Coordinates;

    iput-boolean p2, v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->e:Z

    iput-boolean p3, v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->f:Z

    iput v5, v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->i:I

    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase;->b:Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase;

    invoke-virtual {p1, p4, v0}, Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase;->a(Lcom/vuitton/foundation/model/domain/model/feed/Feed;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_9

    goto/16 :goto_8

    :cond_9
    move p1, p3

    :goto_2
    move-object v2, p4

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/feed/Feed;

    new-instance p3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object p4, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    iput-object p4, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    invoke-static {v2}, Lcom/vuitton/android/domain/extensions/FeedSectionsExtKt;->b(Lcom/vuitton/foundation/model/domain/model/feed/Feed;)Z

    move-result p4

    if-eqz p4, :cond_10

    iput-object v7, v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/common/Coordinates;

    iput-object v2, v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/feed/Feed;

    iput-object p3, v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-boolean p2, v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->e:Z

    iput-boolean p1, v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->f:Z

    iput v4, v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->i:I

    iget-object p4, p0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase;->c:Lcom/vuitton/android/domain/usecase/exclusivesales/GetUserExclusiveSalesUseCase;

    invoke-virtual {p4, v0}, Lcom/vuitton/android/domain/usecase/exclusivesales/GetUserExclusiveSalesUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_a

    goto :goto_8

    :cond_a
    :goto_3
    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v4, p4, Lkotlin/Result$Failure;

    if-nez v4, :cond_e

    move-object v4, p4

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/exclusivesales/ExclusiveSalesUserInfo;

    if-eqz v4, :cond_b

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/exclusivesales/ExclusiveSalesUserInfo;->a:Ljava/util/List;

    if-eqz v5, :cond_b

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-ne v5, v6, :cond_b

    invoke-static {v2}, Lcom/vuitton/android/domain/extensions/FeedSectionsExtKt;->e(Lcom/vuitton/foundation/model/domain/model/feed/Feed;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_5

    :cond_b
    if-eqz v4, :cond_c

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/exclusivesales/ExclusiveSalesUserInfo;->a:Ljava/util/List;

    goto :goto_4

    :cond_c
    move-object v4, v7

    :goto_4
    if-nez v4, :cond_d

    sget-object v4, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_d
    invoke-static {v2, v4}, Lcom/vuitton/android/domain/extensions/FeedSectionsExtKt;->a(Lcom/vuitton/foundation/model/domain/model/feed/Feed;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    :goto_5
    iput-object v4, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    :cond_e
    invoke-static {p4}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p4

    if-eqz p4, :cond_f

    invoke-static {v2}, Lcom/vuitton/android/domain/extensions/FeedSectionsExtKt;->e(Lcom/vuitton/foundation/model/domain/model/feed/Feed;)Ljava/util/ArrayList;

    move-result-object p4

    iput-object p4, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    :cond_f
    :goto_6
    move p4, p2

    move p2, p1

    move-object p1, v2

    goto :goto_7

    :cond_10
    invoke-static {v2}, Lcom/vuitton/android/domain/extensions/FeedSectionsExtKt;->e(Lcom/vuitton/foundation/model/domain/model/feed/Feed;)Ljava/util/ArrayList;

    move-result-object p4

    iput-object p4, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    goto :goto_6

    :goto_7
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->AI_COMPANION:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v2}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v2

    iput-object v7, v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/common/Coordinates;

    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/feed/Feed;

    iput-object p3, v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-boolean p4, v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->e:Z

    iput-boolean p2, v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->f:Z

    iput v3, v0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->i:I

    const/4 p2, 0x0

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase;->d:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    invoke-virtual {p0, v2, p2, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_11

    :goto_8
    return-object v1

    :cond_11
    move-object p0, p3

    :goto_9
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_12

    invoke-static {p1}, Lcom/vuitton/android/domain/extensions/FeedSectionsExtKt;->c(Lcom/vuitton/foundation/model/domain/model/feed/Feed;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    :cond_12
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/vuitton/android/domain/extensions/FeedSectionsExtKt;->d(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/vuitton/foundation/model/domain/model/feed/Feed;

    invoke-direct {p1, p0}, Lcom/vuitton/foundation/model/domain/model/feed/Feed;-><init>(Ljava/util/List;)V

    return-object p1
.end method
