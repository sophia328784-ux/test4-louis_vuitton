.class public final synthetic Lkotlinx/coroutines/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lkotlinx/coroutines/internal/ThreadState;

    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    sget-object p0, Lkotlinx/coroutines/internal/ThreadContextKt;->a:Lkotlinx/coroutines/internal/Symbol;

    instance-of p0, p2, Lkotlinx/coroutines/ThreadContextElement;

    if-eqz p0, :cond_0

    check-cast p2, Lkotlinx/coroutines/ThreadContextElement;

    iget-object p0, p1, Lkotlinx/coroutines/internal/ThreadState;->a:Lkotlin/coroutines/CoroutineContext;

    invoke-interface {p2}, Lkotlinx/coroutines/ThreadContextElement;->s()Ljava/lang/Object;

    move-result-object p0

    iget-object v0, p1, Lkotlinx/coroutines/internal/ThreadState;->b:[Ljava/lang/Object;

    iget v1, p1, Lkotlinx/coroutines/internal/ThreadState;->d:I

    aput-object p0, v0, v1

    iget-object p0, p1, Lkotlinx/coroutines/internal/ThreadState;->c:[Lkotlinx/coroutines/ThreadContextElement;

    add-int/lit8 v0, v1, 0x1

    iput v0, p1, Lkotlinx/coroutines/internal/ThreadState;->d:I

    aput-object p2, p0, v1

    :cond_0
    return-object p1
.end method
