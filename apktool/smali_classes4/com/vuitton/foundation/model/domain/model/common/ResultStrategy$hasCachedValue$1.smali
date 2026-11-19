.class final Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$hasCachedValue$1;
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
        0x35
    }
    m = "hasCachedValue$suspendImpl"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

.field public d:I


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$hasCachedValue$1;->c:Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$hasCachedValue$1;->b:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$hasCachedValue$1;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$hasCachedValue$1;->d:I

    iget-object p1, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$hasCachedValue$1;->c:Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    invoke-static {p1, p0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->f(Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
