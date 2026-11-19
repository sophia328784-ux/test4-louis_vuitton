.class public final Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/foundation/contracts/chat/ChatTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl$Companion;,
        Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0008B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;",
        "Lcom/vuitton/foundation/contracts/chat/ChatTracker;",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/powerfront/insidewebsdkandroid/InsideClient;",
        "insideClient",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Lcom/powerfront/insidewebsdkandroid/InsideClient;)V",
        "Companion",
        "chat"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic d:I


# instance fields
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/powerfront/insidewebsdkandroid/InsideClient;

.field public final c:Lkotlinx/coroutines/MainCoroutineDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Lcom/powerfront/insidewebsdkandroid/InsideClient;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->b:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->a:Lkotlinx/coroutines/MainCoroutineDispatcher;

    invoke-virtual {p1}, Lkotlinx/coroutines/MainCoroutineDispatcher;->r()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->c:Lkotlinx/coroutines/MainCoroutineDispatcher;

    return-void
.end method

.method public static i(Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;ZI)V
    .locals 13

    and-int/lit8 v0, p6, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p3

    :goto_0
    and-int/lit8 v2, p6, 0x8

    if-eqz v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object/from16 v2, p4

    :goto_1
    and-int/lit8 v3, p6, 0x10

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    move/from16 v3, p5

    :goto_2
    iget-object v4, p0, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->b:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    if-eqz v2, :cond_3

    iget-object p0, v2, Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;->b:Ljava/lang/String;

    move-object v7, p0

    goto :goto_3

    :cond_3
    move-object v7, v1

    :goto_3
    if-eqz v2, :cond_4

    iget-object p0, v2, Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;->c:Ljava/lang/String;

    move-object v8, p0

    goto :goto_4

    :cond_4
    move-object v8, v1

    :goto_4
    if-eqz v2, :cond_5

    iget-object p0, v2, Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;->d:Ljava/math/BigDecimal;

    move-object v9, p0

    goto :goto_5

    :cond_5
    move-object v9, v1

    :goto_5
    if-eqz v2, :cond_7

    iget-object p0, v2, Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;->e:Ljava/lang/String;

    if-nez p0, :cond_6

    goto :goto_6

    :cond_6
    move-object v10, p0

    goto :goto_7

    :cond_7
    :goto_6
    move-object v10, v0

    :goto_7
    if-eqz v2, :cond_8

    iget-object p0, v2, Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;->f:Ljava/lang/String;

    move-object v11, p0

    goto :goto_8

    :cond_8
    move-object v11, v1

    :goto_8
    if-eqz v3, :cond_9

    new-instance p0, Lkotlin/Pair;

    const-string v0, "careServices"

    const-string v1, "true"

    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {p0}, [Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/MapsKt;->e([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    :cond_9
    move-object v5, p1

    move-object v6, p2

    move-object v12, v1

    invoke-virtual/range {v4 .. v12}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->o(Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public final B(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lhm;

    invoke-direct {v0, p0, p1, p2, p3}, Lhm;-><init>(Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V

    invoke-virtual {p0, v0}, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->h(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ltf;

    const/16 v1, 0x17

    invoke-direct {v0, p0, p1, v1}, Ltf;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->h(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lgm;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lgm;-><init>(Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V

    invoke-virtual {p0, v0}, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->h(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lyh;

    const/4 v6, 0x2

    move-object v4, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lyh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v4, v0}, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->h(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final h(Lkotlin/jvm/functions/Function0;)V
    .locals 3

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->c:Lkotlinx/coroutines/MainCoroutineDispatcher;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/CoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lr3;

    const/4 v2, 0x5

    invoke-direct {v1, p1, v2}, Lr3;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ltf;

    const/16 v1, 0x15

    invoke-direct {v0, p0, p1, v1}, Ltf;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->h(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ltf;

    const/16 v1, 0x16

    invoke-direct {v0, p0, p1, v1}, Ltf;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->h(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final s()V
    .locals 2

    new-instance v0, Lim;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lim;-><init>(Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;I)V

    invoke-virtual {p0, v0}, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->h(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lq;

    const/16 v1, 0x1b

    invoke-direct {v0, p1, p0, p2, v1}, Lq;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->h(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lgm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lgm;-><init>(Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V

    invoke-virtual {p0, v0}, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->h(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final z()V
    .locals 2

    new-instance v0, Lim;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lim;-><init>(Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;I)V

    invoke-virtual {p0, v0}, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->h(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
