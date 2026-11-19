.class public final Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule$Companion$DefaultCoroutineDispatchers$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/core/schedulers/CoroutineDispatchersModule$Companion$DefaultCoroutineDispatchers$1",
        "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;",
        "core"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lkotlinx/coroutines/MainCoroutineDispatcher;

.field public final b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

.field public final c:Lkotlinx/coroutines/scheduling/DefaultScheduler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->a:Lkotlinx/coroutines/MainCoroutineDispatcher;

    iput-object v0, p0, Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule$Companion$DefaultCoroutineDispatchers$1;->a:Lkotlinx/coroutines/MainCoroutineDispatcher;

    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    iput-object v0, p0, Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule$Companion$DefaultCoroutineDispatchers$1;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    iput-object v0, p0, Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule$Companion$DefaultCoroutineDispatchers$1;->c:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/MainCoroutineDispatcher;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule$Companion$DefaultCoroutineDispatchers$1;->a:Lkotlinx/coroutines/MainCoroutineDispatcher;

    return-object p0
.end method

.method public final b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule$Companion$DefaultCoroutineDispatchers$1;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    return-object p0
.end method

.method public final getDefault()Lkotlinx/coroutines/scheduling/DefaultScheduler;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule$Companion$DefaultCoroutineDispatchers$1;->c:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    return-object p0
.end method
