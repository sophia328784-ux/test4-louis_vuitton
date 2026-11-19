.class final Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$fetchAppLinkExclusions$1;
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
    c = "com.vuitton.android.data.repository.AppLinkRepositoryImpl"
    f = "AppLinkRepositoryImpl.kt"
    l = {
        0x23,
        0x27
    }
    m = "fetchAppLinkExclusions-IoAF18A"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl;

.field public g:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$fetchAppLinkExclusions$1;->f:Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$fetchAppLinkExclusions$1;->e:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$fetchAppLinkExclusions$1;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$fetchAppLinkExclusions$1;->g:I

    iget-object p1, p0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$fetchAppLinkExclusions$1;->f:Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl;

    invoke-virtual {p1, p0}, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl;->e(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
