.class final Lcom/vuitton/android/data/repository/WatchRepositoryImpl$sendWatchEmail$1;
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
        0x106,
        0x108
    }
    m = "sendWatchEmail-BWLJW6A"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public synthetic h:Ljava/lang/Object;

.field public final synthetic i:Lcom/vuitton/android/data/repository/WatchRepositoryImpl;

.field public j:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/repository/WatchRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$sendWatchEmail$1;->i:Lcom/vuitton/android/data/repository/WatchRepositoryImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$sendWatchEmail$1;->h:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$sendWatchEmail$1;->j:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$sendWatchEmail$1;->j:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$sendWatchEmail$1;->i:Lcom/vuitton/android/data/repository/WatchRepositoryImpl;

    invoke-virtual {v1, p1, p1, v0, p0}, Lcom/vuitton/android/data/repository/WatchRepositoryImpl;->f(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
