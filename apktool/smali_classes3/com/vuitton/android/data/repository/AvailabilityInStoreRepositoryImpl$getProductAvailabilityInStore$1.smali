.class final Lcom/vuitton/android/data/repository/AvailabilityInStoreRepositoryImpl$getProductAvailabilityInStore$1;
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
    c = "com.vuitton.android.data.repository.AvailabilityInStoreRepositoryImpl"
    f = "AvailabilityInStoreRepositoryImpl.kt"
    l = {
        0x16
    }
    m = "getProductAvailabilityInStore-kc74MUk"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/vuitton/android/data/repository/AvailabilityInStoreRepositoryImpl;

.field public d:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/repository/AvailabilityInStoreRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/repository/AvailabilityInStoreRepositoryImpl$getProductAvailabilityInStore$1;->c:Lcom/vuitton/android/data/repository/AvailabilityInStoreRepositoryImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/vuitton/android/data/repository/AvailabilityInStoreRepositoryImpl$getProductAvailabilityInStore$1;->b:Ljava/lang/Object;

    iget v0, p0, Lcom/vuitton/android/data/repository/AvailabilityInStoreRepositoryImpl$getProductAvailabilityInStore$1;->d:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/vuitton/android/data/repository/AvailabilityInStoreRepositoryImpl$getProductAvailabilityInStore$1;->d:I

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    iget-object v0, p0, Lcom/vuitton/android/data/repository/AvailabilityInStoreRepositoryImpl$getProductAvailabilityInStore$1;->c:Lcom/vuitton/android/data/repository/AvailabilityInStoreRepositoryImpl;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v14, p0

    invoke-virtual/range {v0 .. v14}, Lcom/vuitton/android/data/repository/AvailabilityInStoreRepositoryImpl;->a(Ljava/lang/String;DDDDDDLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lkotlin/Result;

    invoke-direct {v1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method
