.class final Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$newest$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

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
    c = "com.vuitton.foundation.model.domain.model.common.ResultStrategy"
    f = "ResultStrategy.kt"
    l = {
        0x45,
        0x47
    }
    m = "newest-IoAF18A$suspendImpl"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

.field public c:Ljava/lang/Throwable;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

.field public f:I


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$newest$1;->e:Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$newest$1;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$newest$1;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$newest$1;->f:I

    iget-object p1, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$newest$1;->e:Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    invoke-static {p1, p0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->e(Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
