.class public final Lcoil3/intercept/RealInterceptorChain;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/intercept/Interceptor$Chain;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcoil3/intercept/RealInterceptorChain;",
        "Lcoil3/intercept/Interceptor$Chain;",
        "Lcoil3/request/ImageRequest;",
        "initialRequest",
        "",
        "Lcoil3/intercept/Interceptor;",
        "interceptors",
        "",
        "index",
        "request",
        "Lcoil3/size/Size;",
        "size",
        "Lcoil3/EventListener;",
        "eventListener",
        "",
        "isPlaceholderCached",
        "<init>",
        "(Lcoil3/request/ImageRequest;Ljava/util/List;ILcoil3/request/ImageRequest;Lcoil3/size/Size;Lcoil3/EventListener;Z)V",
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


# instance fields
.field public final a:Lcoil3/request/ImageRequest;

.field public final b:Ljava/util/List;

.field public final c:I

.field public final d:Lcoil3/request/ImageRequest;

.field public final e:Lcoil3/size/Size;

.field public final f:Lcoil3/EventListener;

.field public final g:Z


# direct methods
.method public constructor <init>(Lcoil3/request/ImageRequest;Ljava/util/List;ILcoil3/request/ImageRequest;Lcoil3/size/Size;Lcoil3/EventListener;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil3/request/ImageRequest;",
            "Ljava/util/List<",
            "+",
            "Lcoil3/intercept/Interceptor;",
            ">;I",
            "Lcoil3/request/ImageRequest;",
            "Lcoil3/size/Size;",
            "Lcoil3/EventListener;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil3/intercept/RealInterceptorChain;->a:Lcoil3/request/ImageRequest;

    iput-object p2, p0, Lcoil3/intercept/RealInterceptorChain;->b:Ljava/util/List;

    iput p3, p0, Lcoil3/intercept/RealInterceptorChain;->c:I

    iput-object p4, p0, Lcoil3/intercept/RealInterceptorChain;->d:Lcoil3/request/ImageRequest;

    iput-object p5, p0, Lcoil3/intercept/RealInterceptorChain;->e:Lcoil3/size/Size;

    iput-object p6, p0, Lcoil3/intercept/RealInterceptorChain;->f:Lcoil3/EventListener;

    iput-boolean p7, p0, Lcoil3/intercept/RealInterceptorChain;->g:Z

    return-void
.end method


# virtual methods
.method public final a()Lcoil3/request/ImageRequest;
    .locals 0

    iget-object p0, p0, Lcoil3/intercept/RealInterceptorChain;->d:Lcoil3/request/ImageRequest;

    return-object p0
.end method

.method public final b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 14

    instance-of v0, p1, Lcoil3/intercept/RealInterceptorChain$proceed$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcoil3/intercept/RealInterceptorChain$proceed$1;

    iget v1, v0, Lcoil3/intercept/RealInterceptorChain$proceed$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcoil3/intercept/RealInterceptorChain$proceed$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcoil3/intercept/RealInterceptorChain$proceed$1;

    invoke-direct {v0, p0, p1}, Lcoil3/intercept/RealInterceptorChain$proceed$1;-><init>(Lcoil3/intercept/RealInterceptorChain;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcoil3/intercept/RealInterceptorChain$proceed$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcoil3/intercept/RealInterceptorChain$proceed$1;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v0, v0, Lcoil3/intercept/RealInterceptorChain$proceed$1;->b:Lcoil3/intercept/Interceptor;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcoil3/intercept/RealInterceptorChain;->b:Ljava/util/List;

    iget v2, p0, Lcoil3/intercept/RealInterceptorChain;->c:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcoil3/intercept/Interceptor;

    add-int/lit8 v8, v2, 0x1

    new-instance v5, Lcoil3/intercept/RealInterceptorChain;

    iget-object v11, p0, Lcoil3/intercept/RealInterceptorChain;->f:Lcoil3/EventListener;

    iget-boolean v12, p0, Lcoil3/intercept/RealInterceptorChain;->g:Z

    iget-object v6, p0, Lcoil3/intercept/RealInterceptorChain;->a:Lcoil3/request/ImageRequest;

    iget-object v7, p0, Lcoil3/intercept/RealInterceptorChain;->b:Ljava/util/List;

    iget-object v9, p0, Lcoil3/intercept/RealInterceptorChain;->d:Lcoil3/request/ImageRequest;

    iget-object v10, p0, Lcoil3/intercept/RealInterceptorChain;->e:Lcoil3/size/Size;

    invoke-direct/range {v5 .. v12}, Lcoil3/intercept/RealInterceptorChain;-><init>(Lcoil3/request/ImageRequest;Ljava/util/List;ILcoil3/request/ImageRequest;Lcoil3/size/Size;Lcoil3/EventListener;Z)V

    iput-object p1, v0, Lcoil3/intercept/RealInterceptorChain$proceed$1;->b:Lcoil3/intercept/Interceptor;

    iput v4, v0, Lcoil3/intercept/RealInterceptorChain$proceed$1;->e:I

    invoke-interface {p1, v5, v0}, Lcoil3/intercept/Interceptor;->a(Lcoil3/intercept/RealInterceptorChain;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v13, v0

    move-object v0, p1

    move-object p1, v13

    :goto_1
    check-cast p1, Lcoil3/request/ImageResult;

    invoke-interface {p1}, Lcoil3/request/ImageResult;->a()Lcoil3/request/ImageRequest;

    move-result-object v1

    iget-object v2, v1, Lcoil3/request/ImageRequest;->a:Landroid/content/Context;

    iget-object p0, p0, Lcoil3/intercept/RealInterceptorChain;->a:Lcoil3/request/ImageRequest;

    iget-object v4, p0, Lcoil3/request/ImageRequest;->a:Landroid/content/Context;

    const-string v5, "Interceptor \'"

    if-ne v2, v4, :cond_7

    iget-object v2, v1, Lcoil3/request/ImageRequest;->b:Ljava/lang/Object;

    sget-object v4, Lcoil3/request/NullRequestData;->a:Lcoil3/request/NullRequestData;

    if-eq v2, v4, :cond_6

    iget-object v2, v1, Lcoil3/request/ImageRequest;->c:Lcoil3/target/Target;

    iget-object v4, p0, Lcoil3/request/ImageRequest;->c:Lcoil3/target/Target;

    if-ne v2, v4, :cond_5

    iget-object v1, v1, Lcoil3/request/ImageRequest;->u:Lcoil3/size/SizeResolver;

    iget-object p0, p0, Lcoil3/request/ImageRequest;->u:Lcoil3/size/SizeResolver;

    if-ne v1, p0, :cond_4

    return-object p1

    :cond_4
    const-string p0, "\' cannot modify the request\'s size resolver. Use `Interceptor.Chain.withSize` instead."

    invoke-static {v5, v0, p0}, Lwp;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_5
    const-string p0, "\' cannot modify the request\'s target."

    invoke-static {v5, v0, p0}, Lwp;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_6
    const-string p0, "\' cannot set the request\'s data to null."

    invoke-static {v5, v0, p0}, Lwp;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_7
    const-string p0, "\' cannot modify the request\'s context."

    invoke-static {v5, v0, p0}, Lwp;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method
