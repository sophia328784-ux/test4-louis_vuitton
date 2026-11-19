.class final Lcom/vuitton/android/data/repository/WatchRepositoryImpl$pairWatchV2$1;
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
    c = "com.vuitton.android.data.repository.WatchRepositoryImpl"
    f = "WatchRepositoryImpl.kt"
    l = {
        0x8c,
        0x8e,
        0x95
    }
    m = "pairWatchV2"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public c:Lcom/vuitton/foundation/model/domain/model/connectivity/watch/PairWatchV2;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lcom/vuitton/android/data/repository/WatchRepositoryImpl;

.field public f:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/repository/WatchRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$pairWatchV2$1;->e:Lcom/vuitton/android/data/repository/WatchRepositoryImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$pairWatchV2$1;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$pairWatchV2$1;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$pairWatchV2$1;->f:I

    iget-object p1, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$pairWatchV2$1;->e:Lcom/vuitton/android/data/repository/WatchRepositoryImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lcom/vuitton/android/data/repository/WatchRepositoryImpl;->g(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/connectivity/watch/PairWatchV2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
