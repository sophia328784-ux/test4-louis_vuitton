.class public final Lcoil3/intercept/EngineInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/intercept/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/intercept/EngineInterceptor$Companion;,
        Lcoil3/intercept/EngineInterceptor$ExecuteResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001:\u0002\u000c\rB)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcoil3/intercept/EngineInterceptor;",
        "Lcoil3/intercept/Interceptor;",
        "Lcoil3/ImageLoader;",
        "imageLoader",
        "Lcoil3/util/SystemCallbacks;",
        "systemCallbacks",
        "Lcoil3/request/RequestService;",
        "requestService",
        "Lcoil3/util/Logger;",
        "logger",
        "<init>",
        "(Lcoil3/ImageLoader;Lcoil3/util/SystemCallbacks;Lcoil3/request/RequestService;Lcoil3/util/Logger;)V",
        "ExecuteResult",
        "Companion",
        "io.coil-kt.coil3:coil-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic f:I


# instance fields
.field public final a:Lcoil3/ImageLoader;

.field public final b:Lcoil3/util/SystemCallbacks;

.field public final c:Lcoil3/request/RequestService;

.field public final d:Lcoil3/util/Logger;

.field public final e:Lcoil3/memory/MemoryCacheService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil3/intercept/EngineInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil3/intercept/EngineInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcoil3/ImageLoader;Lcoil3/util/SystemCallbacks;Lcoil3/request/RequestService;Lcoil3/util/Logger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil3/intercept/EngineInterceptor;->a:Lcoil3/ImageLoader;

    iput-object p2, p0, Lcoil3/intercept/EngineInterceptor;->b:Lcoil3/util/SystemCallbacks;

    iput-object p3, p0, Lcoil3/intercept/EngineInterceptor;->c:Lcoil3/request/RequestService;

    iput-object p4, p0, Lcoil3/intercept/EngineInterceptor;->d:Lcoil3/util/Logger;

    new-instance p2, Lcoil3/memory/MemoryCacheService;

    invoke-direct {p2, p1, p3, p4}, Lcoil3/memory/MemoryCacheService;-><init>(Lcoil3/ImageLoader;Lcoil3/request/RequestService;Lcoil3/util/Logger;)V

    iput-object p2, p0, Lcoil3/intercept/EngineInterceptor;->e:Lcoil3/memory/MemoryCacheService;

    return-void
.end method

.method public static final b(Lcoil3/intercept/EngineInterceptor;Lcoil3/fetch/SourceFetchResult;Lcoil3/ComponentRegistry;Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p7, Lcoil3/intercept/EngineInterceptor$decode$1;

    if-eqz v0, :cond_0

    move-object v0, p7

    check-cast v0, Lcoil3/intercept/EngineInterceptor$decode$1;

    iget v1, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->l:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->l:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcoil3/intercept/EngineInterceptor$decode$1;

    invoke-direct {v0, p0, p7}, Lcoil3/intercept/EngineInterceptor$decode$1;-><init>(Lcoil3/intercept/EngineInterceptor;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p0, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->j:Ljava/lang/Object;

    sget-object p7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->l:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    iget p1, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->i:I

    iget-object p2, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->g:Lcoil3/EventListener;

    iget-object p3, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->f:Lcoil3/request/Options;

    iget-object p4, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->e:Ljava/lang/Object;

    iget-object p5, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->d:Lcoil3/request/ImageRequest;

    iget-object p6, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->c:Lcoil3/ComponentRegistry;

    iget-object v1, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->b:Lcoil3/fetch/SourceFetchResult;

    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v5, p6

    move-object p6, p2

    move-object p2, v5

    move-object v5, p5

    move-object p5, p3

    move-object p3, v5

    goto :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const/4 p0, 0x0

    :goto_1
    iget-object v1, p2, Lcoil3/ComponentRegistry;->g:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    if-ge p0, v1, :cond_4

    iget-object v4, p2, Lcoil3/ComponentRegistry;->g:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcoil3/decode/Decoder$Factory;

    invoke-interface {v4, p1, p5}, Lcoil3/decode/Decoder$Factory;->a(Lcoil3/fetch/SourceFetchResult;Lcoil3/request/Options;)Lcoil3/decode/Decoder;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v4, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_4
    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_9

    iget-object p0, v1, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast p0, Lcoil3/decode/Decoder;

    iget-object v1, v1, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->b:Lcoil3/fetch/SourceFetchResult;

    iput-object p2, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->c:Lcoil3/ComponentRegistry;

    iput-object p3, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->d:Lcoil3/request/ImageRequest;

    iput-object p4, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->e:Ljava/lang/Object;

    iput-object p5, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->f:Lcoil3/request/Options;

    iput-object p6, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->g:Lcoil3/EventListener;

    iput-object p0, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->h:Lcoil3/decode/Decoder;

    iput v1, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->i:I

    iput v3, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->l:I

    invoke-interface {p0, v0}, Lcoil3/decode/Decoder;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p7, :cond_5

    return-object p7

    :cond_5
    move v5, v1

    move-object v1, p1

    move p1, v5

    :goto_4
    check-cast p0, Lcoil3/decode/DecodeResult;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_8

    new-instance p1, Lcoil3/intercept/EngineInterceptor$ExecuteResult;

    iget-object p2, p0, Lcoil3/decode/DecodeResult;->a:Lcoil3/Image;

    iget-boolean p0, p0, Lcoil3/decode/DecodeResult;->b:Z

    iget-object p3, v1, Lcoil3/fetch/SourceFetchResult;->c:Lcoil3/decode/DataSource;

    iget-object p4, v1, Lcoil3/fetch/SourceFetchResult;->a:Lcoil3/decode/ImageSource;

    instance-of p5, p4, Lcoil3/decode/FileImageSource;

    if-eqz p5, :cond_6

    check-cast p4, Lcoil3/decode/FileImageSource;

    goto :goto_5

    :cond_6
    move-object p4, v2

    :goto_5
    if-eqz p4, :cond_7

    iget-object v2, p4, Lcoil3/decode/FileImageSource;->d:Ljava/lang/String;

    :cond_7
    invoke-direct {p1, p2, p0, p3, v2}, Lcoil3/intercept/EngineInterceptor$ExecuteResult;-><init>(Lcoil3/Image;ZLcoil3/decode/DataSource;Ljava/lang/String;)V

    return-object p1

    :cond_8
    move p0, p1

    move-object p1, v1

    goto/16 :goto_1

    :cond_9
    const-string p0, "Unable to create a decoder that supports: "

    invoke-static {p4, p0}, Lcj;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltg0;->c(Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final c(Lcoil3/intercept/EngineInterceptor;Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p5

    instance-of v3, v1, Lcoil3/intercept/EngineInterceptor$execute$1;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lcoil3/intercept/EngineInterceptor$execute$1;

    iget v4, v3, Lcoil3/intercept/EngineInterceptor$execute$1;->k:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcoil3/intercept/EngineInterceptor$execute$1;->k:I

    :goto_0
    move-object v6, v3

    goto :goto_1

    :cond_0
    new-instance v3, Lcoil3/intercept/EngineInterceptor$execute$1;

    invoke-direct {v3, v0, v1}, Lcoil3/intercept/EngineInterceptor$execute$1;-><init>(Lcoil3/intercept/EngineInterceptor;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object v1, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->i:Ljava/lang/Object;

    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->k:I

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v4, 0x1

    const/4 v12, 0x0

    if-eqz v3, :cond_4

    if-eq v3, v4, :cond_3

    if-eq v3, v11, :cond_2

    if-ne v3, v10, :cond_1

    iget-object v0, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast v0, Lcoil3/intercept/EngineInterceptor$ExecuteResult;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v12

    :cond_2
    iget-object v2, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->d:Lcoil3/EventListener;

    iget-object v5, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->b:Lcoil3/request/ImageRequest;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v6

    move-object v6, v3

    move-object v3, v0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_3
    iget-object v2, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->d:Lcoil3/EventListener;

    iget-object v8, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->c:Ljava/lang/Object;

    iget-object v13, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->b:Lcoil3/request/ImageRequest;

    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v10, v6

    move-object v6, v5

    move-object v5, v8

    move-object v8, v4

    move-object v4, v13

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v3

    goto/16 :goto_b

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object/from16 v1, p3

    iput-object v1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v1, v0, Lcoil3/intercept/EngineInterceptor;->a:Lcoil3/ImageLoader;

    invoke-interface {v1}, Lcoil3/ImageLoader;->getComponents()Lcoil3/ComponentRegistry;

    move-result-object v1

    iput-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    :try_start_2
    iget-object v1, v0, Lcoil3/intercept/EngineInterceptor;->c:Lcoil3/request/RequestService;

    iget-object v3, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v3, Lcoil3/request/Options;

    invoke-interface {v1, v3}, Lcoil3/request/RequestService;->c(Lcoil3/request/Options;)Lcoil3/request/Options;

    move-result-object v1

    iput-object v1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    iget-object v1, v2, Lcoil3/request/ImageRequest;->i:Lkotlin/Pair;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v3, v2, Lcoil3/request/ImageRequest;->j:Lcoil3/decode/Decoder$Factory;

    if-nez v1, :cond_5

    if-eqz v3, :cond_8

    :cond_5
    :try_start_3
    iget-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v1, Lcoil3/ComponentRegistry;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcoil3/ComponentRegistry$Builder;

    invoke-direct {v5, v1}, Lcoil3/ComponentRegistry$Builder;-><init>(Lcoil3/ComponentRegistry;)V

    iget-object v1, v2, Lcoil3/request/ImageRequest;->i:Lkotlin/Pair;

    sget-object v14, Lcoil3/util/UtilsKt;->a:Lkotlin/jvm/functions/Function1;

    const/4 v14, 0x0

    if-eqz v1, :cond_6

    iget-object v15, v5, Lcoil3/ComponentRegistry$Builder;->d:Ljava/util/ArrayList;

    new-instance v10, Lin;

    invoke-direct {v10, v1, v4}, Lin;-><init>(Lkotlin/Pair;I)V

    invoke-virtual {v15, v14, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_6
    if-eqz v3, :cond_7

    iget-object v1, v5, Lcoil3/ComponentRegistry$Builder;->e:Ljava/util/ArrayList;

    new-instance v10, Ljn;

    invoke-direct {v10, v3, v11}, Ljn;-><init>(Lcoil3/decode/Decoder$Factory;I)V

    invoke-virtual {v1, v14, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    :goto_2
    move-object v2, v13

    goto/16 :goto_b

    :cond_7
    :goto_3
    invoke-virtual {v5}, Lcoil3/ComponentRegistry$Builder;->c()Lcoil3/ComponentRegistry;

    move-result-object v1

    iput-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    :cond_8
    iget-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v1, Lcoil3/ComponentRegistry;

    iget-object v3, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v3, Lcoil3/request/Options;

    iput-object v2, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->b:Lcoil3/request/ImageRequest;

    move-object/from16 v5, p2

    iput-object v5, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->c:Ljava/lang/Object;

    move-object/from16 v10, p4

    iput-object v10, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->d:Lcoil3/EventListener;

    iput-object v7, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v8, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v13, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v13, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput v4, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->k:I

    move-object v4, v3

    move-object v3, v5

    move-object v5, v10

    invoke-virtual/range {v0 .. v6}, Lcoil3/intercept/EngineInterceptor;->d(Lcoil3/ComponentRegistry;Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v10, v6

    if-ne v1, v9, :cond_9

    goto/16 :goto_9

    :cond_9
    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v6, v7

    move-object v2, v13

    move-object v3, v2

    move-object/from16 v7, p4

    :goto_4
    :try_start_4
    iput-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcoil3/fetch/FetchResult;

    instance-of v2, v1, Lcoil3/fetch/SourceFetchResult;

    if-eqz v2, :cond_b

    iget-object v13, v4, Lcoil3/request/ImageRequest;->m:Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcoil3/intercept/EngineInterceptor$execute$executeResult$1;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v2, v3

    move-object v3, v8

    const/4 v8, 0x0

    move-object/from16 v1, p0

    :try_start_5
    invoke-direct/range {v0 .. v8}, Lcoil3/intercept/EngineInterceptor$execute$executeResult$1;-><init>(Lcoil3/intercept/EngineInterceptor;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcoil3/request/ImageRequest;Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;Lcoil3/EventListener;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    iput-object v4, v10, Lcoil3/intercept/EngineInterceptor$execute$1;->b:Lcoil3/request/ImageRequest;

    iput-object v12, v10, Lcoil3/intercept/EngineInterceptor$execute$1;->c:Ljava/lang/Object;

    iput-object v7, v10, Lcoil3/intercept/EngineInterceptor$execute$1;->d:Lcoil3/EventListener;

    iput-object v6, v10, Lcoil3/intercept/EngineInterceptor$execute$1;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v12, v10, Lcoil3/intercept/EngineInterceptor$execute$1;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v2, v10, Lcoil3/intercept/EngineInterceptor$execute$1;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v12, v10, Lcoil3/intercept/EngineInterceptor$execute$1;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput v11, v10, Lcoil3/intercept/EngineInterceptor$execute$1;->k:I

    invoke-static {v13, v0, v10}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_a

    goto/16 :goto_9

    :cond_a
    move-object v5, v4

    move-object v4, v7

    :goto_5
    check-cast v1, Lcoil3/intercept/EngineInterceptor$ExecuteResult;

    move-object v7, v4

    move-object v4, v5

    goto :goto_6

    :cond_b
    move-object v2, v3

    move-object/from16 v3, p0

    instance-of v1, v1, Lcoil3/fetch/ImageFetchResult;

    if-eqz v1, :cond_10

    new-instance v1, Lcoil3/intercept/EngineInterceptor$ExecuteResult;

    move-object v5, v0

    check-cast v5, Lcoil3/fetch/ImageFetchResult;

    iget-object v5, v5, Lcoil3/fetch/ImageFetchResult;->a:Lcoil3/Image;

    move-object v8, v0

    check-cast v8, Lcoil3/fetch/ImageFetchResult;

    iget-boolean v8, v8, Lcoil3/fetch/ImageFetchResult;->b:Z

    check-cast v0, Lcoil3/fetch/ImageFetchResult;

    iget-object v0, v0, Lcoil3/fetch/ImageFetchResult;->c:Lcoil3/decode/DataSource;

    invoke-direct {v1, v5, v8, v0, v12}, Lcoil3/intercept/EngineInterceptor$ExecuteResult;-><init>(Lcoil3/Image;ZLcoil3/decode/DataSource;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_6
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    instance-of v2, v0, Lcoil3/fetch/SourceFetchResult;

    if-eqz v2, :cond_c

    check-cast v0, Lcoil3/fetch/SourceFetchResult;

    goto :goto_7

    :cond_c
    move-object v0, v12

    :goto_7
    if-eqz v0, :cond_d

    iget-object v0, v0, Lcoil3/fetch/SourceFetchResult;->a:Lcoil3/decode/ImageSource;

    if-eqz v0, :cond_d

    sget-object v2, Lcoil3/util/UtilsKt;->a:Lkotlin/jvm/functions/Function1;

    :try_start_6
    invoke-static {v0}, Ld21;->x(Ljava/lang/AutoCloseable;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_8

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    :cond_d
    :goto_8
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v0, Lcoil3/request/Options;

    iget-object v2, v3, Lcoil3/intercept/EngineInterceptor;->d:Lcoil3/util/Logger;

    iput-object v12, v10, Lcoil3/intercept/EngineInterceptor$execute$1;->b:Lcoil3/request/ImageRequest;

    iput-object v12, v10, Lcoil3/intercept/EngineInterceptor$execute$1;->c:Ljava/lang/Object;

    iput-object v12, v10, Lcoil3/intercept/EngineInterceptor$execute$1;->d:Lcoil3/EventListener;

    iput-object v12, v10, Lcoil3/intercept/EngineInterceptor$execute$1;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v12, v10, Lcoil3/intercept/EngineInterceptor$execute$1;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v12, v10, Lcoil3/intercept/EngineInterceptor$execute$1;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v12, v10, Lcoil3/intercept/EngineInterceptor$execute$1;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 v3, 0x3

    iput v3, v10, Lcoil3/intercept/EngineInterceptor$execute$1;->k:I

    move-object/from16 p2, v0

    move-object/from16 p0, v1

    move-object/from16 p4, v2

    move-object/from16 p1, v4

    move-object/from16 p3, v7

    move-object/from16 p5, v10

    invoke-static/range {p0 .. p5}, Lcoil3/intercept/EngineInterceptorKt;->a(Lcoil3/intercept/EngineInterceptor$ExecuteResult;Lcoil3/request/ImageRequest;Lcoil3/request/Options;Lcoil3/EventListener;Lcoil3/util/Logger;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_e

    :goto_9
    return-object v9

    :cond_e
    :goto_a
    check-cast v1, Lcoil3/intercept/EngineInterceptor$ExecuteResult;

    iget-object v0, v1, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->a:Lcoil3/Image;

    sget-object v2, Lcoil3/util/Utils_androidKt;->a:[Landroid/graphics/Bitmap$Config;

    instance-of v2, v0, Lcoil3/BitmapImage;

    if-eqz v2, :cond_f

    check-cast v0, Lcoil3/BitmapImage;

    iget-object v0, v0, Lcoil3/BitmapImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    :cond_f
    return-object v1

    :cond_10
    :try_start_7
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_2
    move-exception v0

    goto/16 :goto_2

    :goto_b
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    instance-of v2, v1, Lcoil3/fetch/SourceFetchResult;

    if-eqz v2, :cond_11

    move-object v12, v1

    check-cast v12, Lcoil3/fetch/SourceFetchResult;

    :cond_11
    if-eqz v12, :cond_12

    iget-object v1, v12, Lcoil3/fetch/SourceFetchResult;->a:Lcoil3/decode/ImageSource;

    if-eqz v1, :cond_12

    sget-object v2, Lcoil3/util/UtilsKt;->a:Lkotlin/jvm/functions/Function1;

    :try_start_8
    invoke-static {v1}, Ld21;->x(Ljava/lang/AutoCloseable;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_c

    :catch_2
    move-exception v0

    throw v0

    :catch_3
    :cond_12
    :goto_c
    throw v0
.end method


# virtual methods
.method public final a(Lcoil3/intercept/RealInterceptorChain;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v0, p2

    iget-object v2, v1, Lcoil3/intercept/EngineInterceptor;->e:Lcoil3/memory/MemoryCacheService;

    instance-of v3, v0, Lcoil3/intercept/EngineInterceptor$intercept$1;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lcoil3/intercept/EngineInterceptor$intercept$1;

    iget v4, v3, Lcoil3/intercept/EngineInterceptor$intercept$1;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcoil3/intercept/EngineInterceptor$intercept$1;->e:I

    :goto_0
    move-object v9, v3

    goto :goto_1

    :cond_0
    new-instance v3, Lcoil3/intercept/EngineInterceptor$intercept$1;

    invoke-direct {v3, v1, v0}, Lcoil3/intercept/EngineInterceptor$intercept$1;-><init>(Lcoil3/intercept/EngineInterceptor;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object v0, v9, Lcoil3/intercept/EngineInterceptor$intercept$1;->c:Ljava/lang/Object;

    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v9, Lcoil3/intercept/EngineInterceptor$intercept$1;->e:I

    const/4 v11, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    if-ne v3, v11, :cond_1

    iget-object v1, v9, Lcoil3/intercept/EngineInterceptor$intercept$1;->b:Lcoil3/intercept/RealInterceptorChain;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v7, v1

    goto/16 :goto_7

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v12, v10

    :try_start_1
    iget-object v10, v7, Lcoil3/intercept/RealInterceptorChain;->d:Lcoil3/request/ImageRequest;

    iget-object v0, v10, Lcoil3/request/ImageRequest;->b:Ljava/lang/Object;

    iget-object v3, v7, Lcoil3/intercept/RealInterceptorChain;->e:Lcoil3/size/Size;

    sget-object v5, Lcoil3/util/UtilsKt;->a:Lkotlin/jvm/functions/Function1;

    iget-object v5, v7, Lcoil3/intercept/RealInterceptorChain;->f:Lcoil3/EventListener;

    iget-object v6, v1, Lcoil3/intercept/EngineInterceptor;->c:Lcoil3/request/RequestService;

    invoke-interface {v6, v10, v3}, Lcoil3/request/RequestService;->b(Lcoil3/request/ImageRequest;Lcoil3/size/Size;)Lcoil3/request/Options;

    move-result-object v6

    iget-object v8, v6, Lcoil3/request/Options;->c:Lcoil3/size/Scale;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v1, Lcoil3/intercept/EngineInterceptor;->a:Lcoil3/ImageLoader;

    invoke-interface {v13}, Lcoil3/ImageLoader;->getComponents()Lcoil3/ComponentRegistry;

    move-result-object v13

    iget-object v13, v13, Lcoil3/ComponentRegistry;->b:Ljava/util/List;

    move-object v14, v13

    check-cast v14, Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v14

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v14, :cond_4

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Lkotlin/Pair;

    iget-object v11, v15, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v11, Lcoil3/map/Mapper;

    iget-object v15, v15, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v15, Lkotlin/reflect/KClass;

    invoke-interface {v15, v0}, Lkotlin/reflect/KClass;->t(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v11, v0, v6}, Lcoil3/map/Mapper;->a(Ljava/lang/Object;Lcoil3/request/Options;)Lcoil3/Uri;

    move-result-object v11

    if-eqz v11, :cond_3

    move-object v0, v11

    :cond_3
    add-int/lit8 v4, v4, 0x1

    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    move-object v11, v12

    invoke-virtual {v2, v10, v0, v6, v5}, Lcoil3/memory/MemoryCacheService;->b(Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener;)Lcoil3/memory/MemoryCache$Key;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-virtual {v2, v10, v12, v3, v8}, Lcoil3/memory/MemoryCacheService;->a(Lcoil3/request/ImageRequest;Lcoil3/memory/MemoryCache$Key;Lcoil3/size/Size;Lcoil3/size/Scale;)Lcoil3/memory/MemoryCache$Value;

    move-result-object v2

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_5
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_9

    iget-object v0, v2, Lcoil3/memory/MemoryCache$Value;->b:Ljava/util/Map;

    new-instance v8, Lcoil3/request/SuccessResult;

    iget-object v9, v2, Lcoil3/memory/MemoryCache$Value;->a:Lcoil3/Image;

    sget-object v11, Lcoil3/decode/DataSource;->MEMORY_CACHE:Lcoil3/decode/DataSource;

    const-string v1, "coil#disk_cache_key"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_6

    check-cast v1, Ljava/lang/String;

    move-object v13, v1

    goto :goto_4

    :cond_6
    const/4 v13, 0x0

    :goto_4
    const-string v1, "coil#is_sampled"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    move-object v4, v0

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    move v14, v15

    goto :goto_6

    :cond_8
    const/4 v14, 0x0

    :goto_6
    iget-boolean v15, v7, Lcoil3/intercept/RealInterceptorChain;->g:Z

    invoke-direct/range {v8 .. v15}, Lcoil3/request/SuccessResult;-><init>(Lcoil3/Image;Lcoil3/request/ImageRequest;Lcoil3/decode/DataSource;Lcoil3/memory/MemoryCache$Key;Ljava/lang/String;ZZ)V

    return-object v8

    :cond_9
    move-object v2, v10

    iget-object v10, v2, Lcoil3/request/ImageRequest;->l:Lkotlin/coroutines/CoroutineContext;

    move-object v3, v0

    new-instance v0, Lcoil3/intercept/EngineInterceptor$intercept$2;

    const/4 v8, 0x0

    move-object v4, v6

    move-object v6, v12

    invoke-direct/range {v0 .. v8}, Lcoil3/intercept/EngineInterceptor$intercept$2;-><init>(Lcoil3/intercept/EngineInterceptor;Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener;Lcoil3/memory/MemoryCache$Key;Lcoil3/intercept/Interceptor$Chain;Lkotlin/coroutines/Continuation;)V

    iput-object v7, v9, Lcoil3/intercept/EngineInterceptor$intercept$1;->b:Lcoil3/intercept/RealInterceptorChain;

    const/4 v1, 0x1

    iput v1, v9, Lcoil3/intercept/EngineInterceptor$intercept$1;->e:I

    invoke-static {v10, v0, v9}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v11, :cond_a

    return-object v11

    :cond_a
    return-object v0

    :goto_7
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_b

    invoke-interface {v7}, Lcoil3/intercept/Interceptor$Chain;->a()Lcoil3/request/ImageRequest;

    move-result-object v1

    invoke-static {v1, v0}, Lcoil3/util/UtilsKt;->a(Lcoil3/request/ImageRequest;Ljava/lang/Throwable;)Lcoil3/request/ErrorResult;

    move-result-object v0

    return-object v0

    :cond_b
    throw v0
.end method

.method public final d(Lcoil3/ComponentRegistry;Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p6, Lcoil3/intercept/EngineInterceptor$fetch$1;

    if-eqz v0, :cond_0

    move-object v0, p6

    check-cast v0, Lcoil3/intercept/EngineInterceptor$fetch$1;

    iget v1, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->k:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->k:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcoil3/intercept/EngineInterceptor$fetch$1;

    invoke-direct {v0, p0, p6}, Lcoil3/intercept/EngineInterceptor$fetch$1;-><init>(Lcoil3/intercept/EngineInterceptor;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p6, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->i:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->k:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget p1, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->h:I

    iget-object p2, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->f:Lcoil3/EventListener;

    iget-object p3, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->e:Lcoil3/request/Options;

    iget-object p4, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->d:Ljava/lang/Object;

    iget-object p5, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->c:Lcoil3/request/ImageRequest;

    iget-object v2, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->b:Lcoil3/ComponentRegistry;

    invoke-static {p6}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v7, v2

    move v2, p1

    move-object p1, v7

    move-object v7, p5

    move-object p5, p2

    move-object p2, v7

    move-object v7, p4

    move-object p4, p3

    move-object p3, v7

    goto/16 :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p6}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const/4 p6, 0x0

    :goto_1
    iget-object v2, p1, Lcoil3/ComponentRegistry;->f:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge p6, v2, :cond_4

    iget-object v5, p1, Lcoil3/ComponentRegistry;->f:Lkotlin/Lazy;

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Pair;

    iget-object v6, v5, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v6, Lcoil3/fetch/Fetcher$Factory;

    iget-object v5, v5, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v5, Lkotlin/reflect/KClass;

    invoke-interface {v5, p3}, Lkotlin/reflect/KClass;->t(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p0, Lcoil3/intercept/EngineInterceptor;->a:Lcoil3/ImageLoader;

    invoke-interface {v6, p3, p4, v5}, Lcoil3/fetch/Fetcher$Factory;->a(Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/ImageLoader;)Lcoil3/fetch/Fetcher;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v5, p6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    add-int/lit8 p6, p6, 0x1

    goto :goto_2

    :cond_4
    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_9

    iget-object p6, v2, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast p6, Lcoil3/fetch/Fetcher;

    iget-object v2, v2, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->b:Lcoil3/ComponentRegistry;

    iput-object p2, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->c:Lcoil3/request/ImageRequest;

    iput-object p3, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->d:Ljava/lang/Object;

    iput-object p4, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->e:Lcoil3/request/Options;

    iput-object p5, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->f:Lcoil3/EventListener;

    iput-object p6, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->g:Lcoil3/fetch/Fetcher;

    iput v2, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->h:I

    iput v4, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->k:I

    invoke-interface {p6, v0}, Lcoil3/fetch/Fetcher;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p6

    if-ne p6, v1, :cond_5

    return-object v1

    :cond_5
    :goto_4
    check-cast p6, Lcoil3/fetch/FetchResult;

    :try_start_0
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p6, :cond_6

    return-object p6

    :cond_6
    move p6, v2

    goto :goto_1

    :catchall_0
    move-exception p0

    instance-of p1, p6, Lcoil3/fetch/SourceFetchResult;

    if-eqz p1, :cond_7

    move-object v3, p6

    check-cast v3, Lcoil3/fetch/SourceFetchResult;

    :cond_7
    if-eqz v3, :cond_8

    iget-object p1, v3, Lcoil3/fetch/SourceFetchResult;->a:Lcoil3/decode/ImageSource;

    if-eqz p1, :cond_8

    sget-object p2, Lcoil3/util/UtilsKt;->a:Lkotlin/jvm/functions/Function1;

    :try_start_1
    invoke-static {p1}, Ld21;->x(Ljava/lang/AutoCloseable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_0
    move-exception p0

    throw p0

    :catch_1
    :cond_8
    :goto_5
    throw p0

    :cond_9
    const-string p0, "Unable to create a fetcher that supports: "

    invoke-static {p3, p0}, Lcj;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltg0;->c(Ljava/lang/Object;)V

    return-object v3
.end method
