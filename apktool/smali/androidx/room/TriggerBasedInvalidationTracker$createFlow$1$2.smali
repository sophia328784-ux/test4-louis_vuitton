.class final Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic c:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic d:[Ljava/lang/String;

.field public final synthetic e:[I


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/flow/FlowCollector;[Ljava/lang/String;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->c:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p3, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->d:[Ljava/lang/String;

    iput-object p4, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->e:[I

    return-void
.end method


# virtual methods
.method public final b([ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;

    iget v4, v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->f:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;

    invoke-direct {v3, v0, v2}, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;-><init>(Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->d:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->f:I

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v5, :cond_3

    if-eq v5, v8, :cond_2

    if-ne v5, v7, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_2
    :goto_1
    iget-object v0, v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->c:[I

    iget-object v1, v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v16, v1

    move-object v1, v0

    move-object/from16 v0, v16

    goto :goto_4

    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    iget-object v9, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->d:[Ljava/lang/String;

    iget-object v10, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->c:Lkotlinx/coroutines/flow/FlowCollector;

    if-nez v5, :cond_4

    invoke-static {v9}, Lkotlin/collections/ArraysKt;->Z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    iput-object v0, v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->b:Ljava/lang/Object;

    iput-object v1, v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->c:[I

    iput v8, v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->f:I

    invoke-interface {v10, v2, v3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_8

    goto :goto_3

    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    array-length v8, v9

    const/4 v11, 0x0

    move v12, v11

    :goto_2
    if-ge v11, v8, :cond_7

    aget-object v13, v9, v11

    add-int/lit8 v14, v12, 0x1

    iget-object v15, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    if-eqz v15, :cond_6

    check-cast v15, [I

    move-object/from16 p2, v6

    iget-object v6, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->e:[I

    aget v6, v6, v12

    aget v12, v15, v6

    aget v6, v1, v6

    if-eq v12, v6, :cond_5

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v6, p2

    move v12, v14

    goto :goto_2

    :cond_6
    move-object/from16 p2, v6

    const-string v0, "Required value was null."

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object p2

    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->B0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    iput-object v0, v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->b:Ljava/lang/Object;

    iput-object v1, v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->c:[I

    iput v7, v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->f:I

    invoke-interface {v10, v2, v3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_8

    :goto_3
    return-object v4

    :cond_8
    :goto_4
    iget-object v0, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [I

    invoke-virtual {p0, p1, p2}, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->b([ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
