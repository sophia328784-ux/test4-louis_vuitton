.class public abstract Lkotlinx/coroutines/selects/OnTimeoutKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lkotlinx/coroutines/selects/SelectImplementation;JLkotlin/jvm/functions/Function1;)V
    .locals 9

    new-instance v1, Lkotlinx/coroutines/selects/OnTimeout;

    invoke-direct {v1, p1, p2}, Lkotlinx/coroutines/selects/OnTimeout;-><init>(J)V

    new-instance v0, Lkotlinx/coroutines/selects/SelectClause0Impl;

    sget-object v2, Lkotlinx/coroutines/selects/OnTimeout$selectClause$1;->b:Lkotlinx/coroutines/selects/OnTimeout$selectClause$1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x3

    invoke-static {p1, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->e(ILjava/lang/Object;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/selects/SelectClause0Impl;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    sget-object v6, Lkotlinx/coroutines/selects/SelectKt;->f:Lkotlinx/coroutines/internal/Symbol;

    iget-object v8, v0, Lkotlinx/coroutines/selects/SelectClause0Impl;->c:Lkotlin/jvm/functions/Function3;

    iget-object v3, v0, Lkotlinx/coroutines/selects/SelectClause0Impl;->a:Ljava/lang/Object;

    iget-object v4, v0, Lkotlinx/coroutines/selects/SelectClause0Impl;->b:Lkotlin/jvm/functions/Function3;

    iget-object v5, v0, Lkotlinx/coroutines/selects/SelectClause0Impl;->d:Lkotlin/jvm/functions/Function3;

    move-object v2, p0

    move-object v7, p3

    invoke-direct/range {v1 .. v8}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;-><init>(Lkotlinx/coroutines/selects/SelectImplementation;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V

    const/4 p0, 0x0

    invoke-virtual {v2, v1, p0}, Lkotlinx/coroutines/selects/SelectImplementation;->j(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;Z)V

    return-void
.end method
