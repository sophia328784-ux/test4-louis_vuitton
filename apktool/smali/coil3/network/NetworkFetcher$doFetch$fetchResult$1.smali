.class final Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcoil3/network/NetworkResponse;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcoil3/fetch/SourceFetchResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcoil3/fetch/SourceFetchResult;",
        "networkResponse",
        "Lcoil3/network/NetworkResponse;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "coil3.network.NetworkFetcher$doFetch$fetchResult$1"
    f = "NetworkFetcher.kt"
    l = {
        0x6e,
        0x7c
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public c:I

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f:Lcoil3/network/NetworkFetcher;

.field public final synthetic g:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic h:Lcoil3/network/NetworkRequest;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcoil3/network/NetworkFetcher;Lkotlin/jvm/internal/Ref$ObjectRef;Lcoil3/network/NetworkRequest;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->f:Lcoil3/network/NetworkFetcher;

    iput-object p3, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->h:Lcoil3/network/NetworkRequest;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;

    iget-object v3, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->h:Lcoil3/network/NetworkRequest;

    iget-object v1, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->f:Lcoil3/network/NetworkFetcher;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcoil3/network/NetworkFetcher;Lkotlin/jvm/internal/Ref$ObjectRef;Lcoil3/network/NetworkRequest;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcoil3/network/NetworkResponse;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->d:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcoil3/network/NetworkResponse;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->c:I

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v10, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v11, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->f:Lcoil3/network/NetworkFetcher;

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v7, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_1
    iget-object v1, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v6, p0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast p1, Lcoil3/disk/DiskCache$Snapshot;

    iget-object v1, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lcoil3/network/NetworkResponse;

    iput-object v5, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->d:Ljava/lang/Object;

    iput-object v10, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput v2, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->c:I

    iget-object v1, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->f:Lcoil3/network/NetworkFetcher;

    iget-object v4, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->h:Lcoil3/network/NetworkRequest;

    move-object v6, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcoil3/network/NetworkFetcher;->d(Lcoil3/network/NetworkFetcher;Lcoil3/disk/DiskCache$Snapshot;Lcoil3/network/NetworkResponse;Lcoil3/network/NetworkRequest;Lcoil3/network/NetworkResponse;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v10

    :goto_0
    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, v5, Lcoil3/network/NetworkResponse;->a:I

    const/16 p1, 0xc8

    if-gt p1, p0, :cond_4

    const/16 p1, 0x12c

    if-ge p0, p1, :cond_4

    goto :goto_1

    :cond_4
    const/16 p1, 0x130

    if-ne p0, p1, :cond_a

    :goto_1
    iget-object p0, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    if-eqz p0, :cond_6

    check-cast p0, Lcoil3/disk/DiskCache$Snapshot;

    invoke-virtual {v11, p0}, Lcoil3/network/NetworkFetcher;->i(Lcoil3/disk/DiskCache$Snapshot;)Lcoil3/network/NetworkResponse;

    move-result-object p0

    iput-object p0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    new-instance p0, Lcoil3/fetch/SourceFetchResult;

    iget-object p1, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcoil3/disk/DiskCache$Snapshot;

    invoke-virtual {v11, p1}, Lcoil3/network/NetworkFetcher;->h(Lcoil3/disk/DiskCache$Snapshot;)Lcoil3/decode/FileImageSource;

    move-result-object p1

    iget-object v0, v11, Lcoil3/network/NetworkFetcher;->a:Ljava/lang/String;

    iget-object v1, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v1, Lcoil3/network/NetworkResponse;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcoil3/network/NetworkResponse;->d:Lcoil3/network/NetworkHeaders;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcoil3/network/NetworkHeaders;->a()Ljava/lang/String;

    move-result-object v8

    :cond_5
    invoke-static {v0, v8}, Lcoil3/network/NetworkFetcher;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcoil3/decode/DataSource;->NETWORK:Lcoil3/decode/DataSource;

    invoke-direct {p0, p1, v0, v1}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    return-object p0

    :cond_6
    iget-object p0, v5, Lcoil3/network/NetworkResponse;->e:Lcoil3/network/NetworkResponseBody;

    if-eqz p0, :cond_9

    iput-object v5, v6, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->d:Ljava/lang/Object;

    iput-object v8, v6, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput v7, v6, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->c:I

    invoke-static {p0, v6}, Lcoil3/network/internal/UtilsKt;->a(Lcoil3/network/NetworkResponseBody;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    :goto_2
    return-object v0

    :cond_7
    :goto_3
    check-cast p1, Lokio/Buffer;

    iget-wide v0, p1, Lokio/Buffer;->c:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_8

    new-instance p0, Lcoil3/fetch/SourceFetchResult;

    invoke-virtual {v11}, Lcoil3/network/NetworkFetcher;->e()Lokio/FileSystem;

    move-result-object v0

    new-instance v1, Lcoil3/decode/SourceImageSource;

    invoke-direct {v1, p1, v0, v8}, Lcoil3/decode/SourceImageSource;-><init>(Lokio/BufferedSource;Lokio/FileSystem;Lcoil3/decode/ImageSource$Metadata;)V

    iget-object p1, v11, Lcoil3/network/NetworkFetcher;->a:Ljava/lang/String;

    iget-object v0, v5, Lcoil3/network/NetworkResponse;->d:Lcoil3/network/NetworkHeaders;

    invoke-virtual {v0}, Lcoil3/network/NetworkHeaders;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcoil3/network/NetworkFetcher;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcoil3/decode/DataSource;->NETWORK:Lcoil3/decode/DataSource;

    invoke-direct {p0, v1, p1, v0}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    return-object p0

    :cond_8
    return-object v8

    :cond_9
    const-string p0, "body == null"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_a
    new-instance p0, Lcoil3/network/HttpException;

    invoke-direct {p0, v5}, Lcoil3/network/HttpException;-><init>(Lcoil3/network/NetworkResponse;)V

    throw p0
.end method
