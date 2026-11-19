.class public final Lcoil3/ImageLoader$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0015\u0008\u0016\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\u0011\u0008\u0010\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcoil3/ImageLoader$Builder;",
        "",
        "Landroid/content/Context;",
        "Lcoil3/PlatformContext;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Lcoil3/RealImageLoader$Options;",
        "options",
        "(Lcoil3/RealImageLoader$Options;)V",
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
.field public final a:Landroid/content/Context;

.field public final b:Lcoil3/request/ImageRequest$Defaults;

.field public final c:Lkotlin/Lazy;

.field public final d:Lkotlin/Lazy;

.field public final e:Lkotlin/Lazy;

.field public final f:Lcoil3/EventListener$Factory;

.field public g:Lcoil3/ComponentRegistry;

.field public final h:Lcoil3/util/Logger;

.field public final i:Lcoil3/Extras$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 50
    iput-object p1, p0, Lcoil3/ImageLoader$Builder;->a:Landroid/content/Context;

    .line 51
    sget-object p1, Lcoil3/request/ImageRequest$Defaults;->o:Lcoil3/request/ImageRequest$Defaults;

    iput-object p1, p0, Lcoil3/ImageLoader$Builder;->b:Lcoil3/request/ImageRequest$Defaults;

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcoil3/ImageLoader$Builder;->c:Lkotlin/Lazy;

    .line 53
    iput-object p1, p0, Lcoil3/ImageLoader$Builder;->d:Lkotlin/Lazy;

    .line 54
    iput-object p1, p0, Lcoil3/ImageLoader$Builder;->e:Lkotlin/Lazy;

    .line 55
    iput-object p1, p0, Lcoil3/ImageLoader$Builder;->f:Lcoil3/EventListener$Factory;

    .line 56
    iput-object p1, p0, Lcoil3/ImageLoader$Builder;->g:Lcoil3/ComponentRegistry;

    .line 57
    iput-object p1, p0, Lcoil3/ImageLoader$Builder;->h:Lcoil3/util/Logger;

    .line 58
    new-instance p1, Lcoil3/Extras$Builder;

    invoke-direct {p1}, Lcoil3/Extras$Builder;-><init>()V

    iput-object p1, p0, Lcoil3/ImageLoader$Builder;->i:Lcoil3/Extras$Builder;

    return-void
.end method

.method public constructor <init>(Lcoil3/RealImageLoader$Options;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcoil3/RealImageLoader$Options;->a:Landroid/content/Context;

    iput-object v0, p0, Lcoil3/ImageLoader$Builder;->a:Landroid/content/Context;

    iget-object v0, p1, Lcoil3/RealImageLoader$Options;->b:Lcoil3/request/ImageRequest$Defaults;

    iput-object v0, p0, Lcoil3/ImageLoader$Builder;->b:Lcoil3/request/ImageRequest$Defaults;

    iget-object v1, p1, Lcoil3/RealImageLoader$Options;->c:Lkotlin/Lazy;

    iput-object v1, p0, Lcoil3/ImageLoader$Builder;->c:Lkotlin/Lazy;

    iget-object v1, p1, Lcoil3/RealImageLoader$Options;->d:Lkotlin/Lazy;

    iput-object v1, p0, Lcoil3/ImageLoader$Builder;->d:Lkotlin/Lazy;

    iget-object v1, p1, Lcoil3/RealImageLoader$Options;->e:Lkotlin/Lazy;

    iput-object v1, p0, Lcoil3/ImageLoader$Builder;->e:Lkotlin/Lazy;

    iget-object v1, p1, Lcoil3/RealImageLoader$Options;->f:Lcoil3/EventListener$Factory;

    iput-object v1, p0, Lcoil3/ImageLoader$Builder;->f:Lcoil3/EventListener$Factory;

    iget-object v1, p1, Lcoil3/RealImageLoader$Options;->g:Lcoil3/ComponentRegistry;

    iput-object v1, p0, Lcoil3/ImageLoader$Builder;->g:Lcoil3/ComponentRegistry;

    iget-object p1, p1, Lcoil3/RealImageLoader$Options;->h:Lcoil3/util/Logger;

    iput-object p1, p0, Lcoil3/ImageLoader$Builder;->h:Lcoil3/util/Logger;

    iget-object p1, v0, Lcoil3/request/ImageRequest$Defaults;->n:Lcoil3/Extras;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcoil3/Extras$Builder;

    invoke-direct {v0, p1}, Lcoil3/Extras$Builder;-><init>(Lcoil3/Extras;)V

    iput-object v0, p0, Lcoil3/ImageLoader$Builder;->i:Lcoil3/Extras$Builder;

    return-void
.end method


# virtual methods
.method public final a()Lcoil3/RealImageLoader;
    .locals 19

    move-object/from16 v0, p0

    new-instance v1, Lcoil3/RealImageLoader$Options;

    iget-object v2, v0, Lcoil3/ImageLoader$Builder;->i:Lcoil3/Extras$Builder;

    invoke-virtual {v2}, Lcoil3/Extras$Builder;->a()Lcoil3/Extras;

    move-result-object v17

    iget-object v2, v0, Lcoil3/ImageLoader$Builder;->b:Lcoil3/request/ImageRequest$Defaults;

    iget-object v4, v2, Lcoil3/request/ImageRequest$Defaults;->a:Lokio/FileSystem;

    iget-object v5, v2, Lcoil3/request/ImageRequest$Defaults;->b:Lkotlin/coroutines/CoroutineContext;

    iget-object v6, v2, Lcoil3/request/ImageRequest$Defaults;->c:Lkotlin/coroutines/CoroutineContext;

    iget-object v7, v2, Lcoil3/request/ImageRequest$Defaults;->d:Lkotlin/coroutines/CoroutineContext;

    iget-object v8, v2, Lcoil3/request/ImageRequest$Defaults;->e:Lcoil3/request/CachePolicy;

    iget-object v9, v2, Lcoil3/request/ImageRequest$Defaults;->f:Lcoil3/request/CachePolicy;

    iget-object v10, v2, Lcoil3/request/ImageRequest$Defaults;->g:Lcoil3/request/CachePolicy;

    iget-object v11, v2, Lcoil3/request/ImageRequest$Defaults;->h:Lkotlin/jvm/functions/Function1;

    iget-object v12, v2, Lcoil3/request/ImageRequest$Defaults;->i:Lkotlin/jvm/functions/Function1;

    iget-object v13, v2, Lcoil3/request/ImageRequest$Defaults;->j:Lkotlin/jvm/functions/Function1;

    iget-object v14, v2, Lcoil3/request/ImageRequest$Defaults;->k:Lcoil3/size/SizeResolver;

    iget-object v15, v2, Lcoil3/request/ImageRequest$Defaults;->l:Lcoil3/size/Scale;

    iget-object v2, v2, Lcoil3/request/ImageRequest$Defaults;->m:Lcoil3/size/Precision;

    new-instance v3, Lcoil3/request/ImageRequest$Defaults;

    move-object/from16 v16, v2

    invoke-direct/range {v3 .. v17}, Lcoil3/request/ImageRequest$Defaults;-><init>(Lokio/FileSystem;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lcoil3/request/CachePolicy;Lcoil3/request/CachePolicy;Lcoil3/request/CachePolicy;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcoil3/size/SizeResolver;Lcoil3/size/Scale;Lcoil3/size/Precision;Lcoil3/Extras;)V

    move-object v2, v3

    iget-object v3, v0, Lcoil3/ImageLoader$Builder;->c:Lkotlin/Lazy;

    if-nez v3, :cond_0

    new-instance v3, Lm10;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Lm10;-><init>(I)V

    invoke-static {v3}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    :cond_0
    iget-object v4, v0, Lcoil3/ImageLoader$Builder;->d:Lkotlin/Lazy;

    if-nez v4, :cond_1

    new-instance v4, Lss;

    const/16 v5, 0x13

    invoke-direct {v4, v0, v5}, Lss;-><init>(Ljava/lang/Object;I)V

    invoke-static {v4}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v4

    :cond_1
    iget-object v5, v0, Lcoil3/ImageLoader$Builder;->e:Lkotlin/Lazy;

    if-nez v5, :cond_2

    new-instance v5, Lm10;

    const/4 v6, 0x6

    invoke-direct {v5, v6}, Lm10;-><init>(I)V

    invoke-static {v5}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v5

    :cond_2
    iget-object v6, v0, Lcoil3/ImageLoader$Builder;->f:Lcoil3/EventListener$Factory;

    if-nez v6, :cond_3

    sget-object v6, Lcoil3/EventListener$Factory;->i0:Lmt;

    :cond_3
    iget-object v7, v0, Lcoil3/ImageLoader$Builder;->g:Lcoil3/ComponentRegistry;

    if-nez v7, :cond_4

    new-instance v7, Lcoil3/ComponentRegistry;

    invoke-direct {v7}, Lcoil3/ComponentRegistry;-><init>()V

    :cond_4
    iget-object v8, v0, Lcoil3/ImageLoader$Builder;->h:Lcoil3/util/Logger;

    iget-object v0, v0, Lcoil3/ImageLoader$Builder;->a:Landroid/content/Context;

    move-object/from16 v18, v1

    move-object v1, v0

    move-object/from16 v0, v18

    invoke-direct/range {v0 .. v8}, Lcoil3/RealImageLoader$Options;-><init>(Landroid/content/Context;Lcoil3/request/ImageRequest$Defaults;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;Lcoil3/EventListener$Factory;Lcoil3/ComponentRegistry;Lcoil3/util/Logger;)V

    new-instance v1, Lcoil3/RealImageLoader;

    invoke-direct {v1, v0}, Lcoil3/RealImageLoader;-><init>(Lcoil3/RealImageLoader$Options;)V

    return-object v1
.end method
