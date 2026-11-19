.class final Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/sequences/SequenceScope<",
        "Ljava/lang/Object;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "E",
        "Lkotlin/sequences/SequenceScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.collection.MutableSetWrapper$iterator$1$iterator$1"
    f = "ScatterSet.kt"
    l = {
        0x4a4
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public c:Landroidx/collection/MutableSetWrapper$iterator$1;

.field public d:Ljava/lang/Object;

.field public e:[J

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:J

.field public k:I

.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Landroidx/collection/MutableSetWrapper;

.field public final synthetic n:Landroidx/collection/MutableSetWrapper$iterator$1;


# direct methods
.method public constructor <init>(Landroidx/collection/MutableSetWrapper;Landroidx/collection/MutableSetWrapper$iterator$1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->m:Landroidx/collection/MutableSetWrapper;

    iput-object p2, p0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->n:Landroidx/collection/MutableSetWrapper$iterator$1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;

    iget-object v1, p0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->m:Landroidx/collection/MutableSetWrapper;

    iget-object p0, p0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->n:Landroidx/collection/MutableSetWrapper$iterator$1;

    invoke-direct {v0, v1, p0, p2}, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;-><init>(Landroidx/collection/MutableSetWrapper;Landroidx/collection/MutableSetWrapper$iterator$1;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/sequences/SequenceScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->k:I

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v5, :cond_0

    iget v2, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->i:I

    iget v6, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->h:I

    iget-wide v7, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->j:J

    iget v9, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->g:I

    iget v10, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->f:I

    iget-object v11, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->e:[J

    iget-object v12, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->d:Ljava/lang/Object;

    check-cast v12, Landroidx/collection/MutableSetWrapper;

    iget-object v13, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->c:Landroidx/collection/MutableSetWrapper$iterator$1;

    iget-object v14, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->l:Ljava/lang/Object;

    check-cast v14, Lkotlin/sequences/SequenceScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->l:Ljava/lang/Object;

    check-cast v2, Lkotlin/sequences/SequenceScope;

    iget-object v6, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->m:Landroidx/collection/MutableSetWrapper;

    iget-object v7, v6, Landroidx/collection/MutableSetWrapper;->c:Landroidx/collection/MutableScatterSet;

    iget-object v7, v7, Landroidx/collection/ScatterSet;->a:[J

    array-length v8, v7

    add-int/lit8 v8, v8, -0x2

    if-ltz v8, :cond_5

    iget-object v9, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->n:Landroidx/collection/MutableSetWrapper$iterator$1;

    const/4 v10, 0x0

    :goto_0
    aget-wide v11, v7, v10

    not-long v13, v11

    const/4 v15, 0x7

    shl-long/2addr v13, v15

    and-long/2addr v13, v11

    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v13, v15

    cmp-long v13, v13, v15

    if-eqz v13, :cond_4

    sub-int v13, v10, v8

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    rsub-int/lit8 v13, v13, 0x8

    move-object v14, v2

    const/4 v2, 0x0

    move-wide/from16 v19, v11

    move-object v12, v6

    move-object v11, v7

    move v6, v13

    move-object v13, v9

    move v9, v10

    move v10, v8

    move-wide/from16 v7, v19

    :goto_1
    if-ge v2, v6, :cond_3

    const-wide/16 v15, 0xff

    and-long/2addr v15, v7

    const-wide/16 v17, 0x80

    cmp-long v15, v15, v17

    if-gez v15, :cond_2

    shl-int/lit8 v15, v9, 0x3

    add-int/2addr v15, v2

    iput v15, v13, Landroidx/collection/MutableSetWrapper$iterator$1;->b:I

    iget-object v3, v12, Landroidx/collection/MutableSetWrapper;->c:Landroidx/collection/MutableScatterSet;

    iget-object v3, v3, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    aget-object v3, v3, v15

    iput-object v14, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->l:Ljava/lang/Object;

    iput-object v13, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->c:Landroidx/collection/MutableSetWrapper$iterator$1;

    iput-object v12, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->d:Ljava/lang/Object;

    iput-object v11, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->e:[J

    iput v10, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->f:I

    iput v9, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->g:I

    iput-wide v7, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->j:J

    iput v6, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->h:I

    iput v2, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->i:I

    iput v5, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->k:I

    invoke-virtual {v14, v3, v0}, Lkotlin/sequences/SequenceScope;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    move-result-object v3

    if-ne v3, v1, :cond_2

    return-object v1

    :cond_2
    :goto_2
    shr-long/2addr v7, v4

    add-int/2addr v2, v5

    goto :goto_1

    :cond_3
    if-ne v6, v4, :cond_5

    move v8, v10

    move-object v7, v11

    move-object v6, v12

    move-object v2, v14

    move v10, v9

    move-object v9, v13

    :cond_4
    if-eq v10, v8, :cond_5

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
