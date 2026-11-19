.class final Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$initializeSdk$1;
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
    c = "com.vuitton.android.data.repository.DynamicYieldRepositoryImpl"
    f = "DynamicYieldRepositoryImpl.kt"
    l = {
        0x45
    }
    m = "initializeSdk-yxL6bBk"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;

.field public d:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$initializeSdk$1;->c:Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$initializeSdk$1;->b:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$initializeSdk$1;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$initializeSdk$1;->d:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$initializeSdk$1;->c:Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;

    invoke-virtual {v1, p1, v0, p1, p0}, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->c(Ljava/lang/String;ZLcom/vuitton/foundation/model/domain/model/config/Region;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
