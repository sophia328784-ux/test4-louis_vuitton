.class final Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;
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
    c = "com.vuitton.android.core.coroutine.operator.RetryMechanismKt"
    f = "RetryMechanism.kt"
    l = {
        0x27,
        0x30
    }
    m = "retry"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:J

.field public f:Lcom/vuitton/android/core/coroutine/operator/RetryMechanism;

.field public g:Lkotlin/jvm/functions/Function1;

.field public h:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public i:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public synthetic j:Ljava/lang/Object;

.field public k:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->j:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->k:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt$retry$1;->k:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/core/coroutine/operator/RetryMechanismKt;->a(IJLcom/vuitton/android/core/coroutine/operator/RetryMechanism;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
