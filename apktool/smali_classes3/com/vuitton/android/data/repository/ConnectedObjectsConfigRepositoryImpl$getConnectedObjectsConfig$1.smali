.class final Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.data.repository.ConnectedObjectsConfigRepositoryImpl"
    f = "ConnectedObjectsConfigRepositoryImpl.kt"
    l = {
        0x1c,
        0x21,
        0x24
    }
    m = "getConnectedObjectsConfig-0E7RQCE"
    v = 0x2
.end annotation


# instance fields
.field public b:J

.field public c:Ljava/lang/String;

.field public d:Lcom/vuitton/android/data/dto/connectivity/sync/ConnectedObjectsConfigDto;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl;

.field public g:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1;->f:Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1;->e:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1;->g:I

    const-wide/16 v0, 0x0

    const/4 p1, 0x0

    iget-object v2, p0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1;->f:Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl;

    invoke-virtual {v2, v0, v1, p1, p0}, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl;->b(JLjava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
