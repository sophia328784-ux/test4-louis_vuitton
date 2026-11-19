.class final Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Result<",
        "+",
        "Lcom/vuitton/foundation/model/domain/model/audioguide/TrackDetail;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Result;",
        "Lcom/vuitton/foundation/model/domain/model/audioguide/TrackDetail;"
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
    c = "com.vuitton.android.data.repository.AudioGuideRepositoryImpl$getTrackDetail$3"
    f = "AudioGuideRepositoryImpl.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$3;->b:Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$3;->c:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$3;

    iget-object v1, p0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$3;->b:Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$3;->c:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p1}, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$3;-><init>(Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$3;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$3;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$3;->b:Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;

    iget-object p1, p1, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$3;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/audioguide/TrackDetail;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/audioguide/TrackDetail;->a:Ljava/lang/String;

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Lcom/vuitton/foundation/model/domain/model/audioguide/TrackDetail;

    if-eqz v0, :cond_2

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_2
    return-object v1
.end method
