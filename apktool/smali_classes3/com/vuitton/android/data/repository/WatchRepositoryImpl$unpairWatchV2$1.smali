.class final Lcom/vuitton/android/data/repository/WatchRepositoryImpl$unpairWatchV2$1;
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
        0x73,
        0x75
    }
    m = "unpairWatchV2"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public c:Lcom/vuitton/foundation/model/domain/model/connectivity/watch/UnpairWatchV2;

.field public d:Lcom/vuitton/android/data/repository/WatchRepositoryImpl;

.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lcom/vuitton/android/data/repository/WatchRepositoryImpl;

.field public h:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/repository/WatchRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$unpairWatchV2$1;->g:Lcom/vuitton/android/data/repository/WatchRepositoryImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$unpairWatchV2$1;->f:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$unpairWatchV2$1;->h:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$unpairWatchV2$1;->h:I

    iget-object p1, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$unpairWatchV2$1;->g:Lcom/vuitton/android/data/repository/WatchRepositoryImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lcom/vuitton/android/data/repository/WatchRepositoryImpl;->h(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/connectivity/watch/UnpairWatchV2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
