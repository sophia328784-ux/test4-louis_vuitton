.class final Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$internalSaveTokens$1;
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
    c = "com.vuitton.android.data.repository.TwistAuthRepositoryImpl"
    f = "TwistAuthRepositoryImpl.kt"
    l = {
        0x1ef,
        0x1f1
    }
    m = "internalSaveTokens-gIAlu-s"
    v = 0x2
.end annotation


# instance fields
.field public b:Lkotlin/Result;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;

.field public e:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$internalSaveTokens$1;->d:Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$internalSaveTokens$1;->c:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$internalSaveTokens$1;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$internalSaveTokens$1;->e:I

    sget-object p1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->j:Ljava/util/Set;

    iget-object p1, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$internalSaveTokens$1;->d:Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->r(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
