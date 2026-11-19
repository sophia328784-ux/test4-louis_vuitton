.class final Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$2;
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
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n"
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
    c = "com.vuitton.android.data.repository.AudioGuideRepositoryImpl$getTrackDetail$2"
    f = "AudioGuideRepositoryImpl.kt"
    l = {
        0x21
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$2;->c:Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$2;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$2;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$2;->f:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$2;

    iget-object v3, p0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$2;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$2;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$2;->c:Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;

    iget-object v2, p0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$2;->d:Ljava/lang/String;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$2;-><init>(Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$2;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v2, p0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$2;->b:I

    iget-object p1, p0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$2;->c:Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;

    iget-object v1, p0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$2;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$2;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$2;->f:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3, p0}, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;->i(Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
