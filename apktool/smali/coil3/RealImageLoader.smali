.class public final Lcoil3/RealImageLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/ImageLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/RealImageLoader$Options;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0008B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u000b\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a8\u0006\t"
    }
    d2 = {
        "Lcoil3/RealImageLoader;",
        "Lcoil3/ImageLoader;",
        "Lcoil3/RealImageLoader$Options;",
        "options",
        "<init>",
        "(Lcoil3/RealImageLoader$Options;)V",
        "Lkotlinx/atomicfu/AtomicBoolean;",
        "shutdown",
        "Options",
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
.field public final a:Lcoil3/RealImageLoader$Options;

.field public final b:Lkotlinx/coroutines/internal/ContextScope;

.field public final c:Lcoil3/request/AndroidRequestService;

.field public final d:Lcoil3/ComponentRegistry;

.field public volatile synthetic e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcoil3/RealImageLoader;

    const-string v1, "e"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lcoil3/RealImageLoader$Options;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil3/RealImageLoader;->a:Lcoil3/RealImageLoader$Options;

    iget-object v0, p1, Lcoil3/RealImageLoader$Options;->h:Lcoil3/util/Logger;

    invoke-static {}, Lkotlinx/coroutines/SupervisorKt;->b()Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    new-instance v2, Lcoil3/RealImageLoaderKt$CoroutineScope$$inlined$CoroutineExceptionHandler$1;

    sget-object v3, Lkotlinx/coroutines/CoroutineExceptionHandler$Key;->b:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-direct {v2, v3, v0}, Lcoil3/RealImageLoaderKt$CoroutineScope$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;Lcoil3/util/Logger;)V

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    iput-object v0, p0, Lcoil3/RealImageLoader;->b:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v0, Lcoil3/util/AndroidSystemCallbacks;

    invoke-direct {v0, p0}, Lcoil3/util/AndroidSystemCallbacks;-><init>(Lcoil3/RealImageLoader;)V

    iget-object v1, p1, Lcoil3/RealImageLoader$Options;->h:Lcoil3/util/Logger;

    new-instance v2, Lcoil3/request/AndroidRequestService;

    invoke-direct {v2, p0, v0, v1}, Lcoil3/request/AndroidRequestService;-><init>(Lcoil3/ImageLoader;Lcoil3/util/SystemCallbacks;Lcoil3/util/Logger;)V

    iput-object v2, p0, Lcoil3/RealImageLoader;->c:Lcoil3/request/AndroidRequestService;

    iget-object v3, p1, Lcoil3/RealImageLoader$Options;->g:Lcoil3/ComponentRegistry;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcoil3/ComponentRegistry$Builder;

    invoke-direct {v4, v3}, Lcoil3/ComponentRegistry$Builder;-><init>(Lcoil3/ComponentRegistry;)V

    sget-object v3, Lcoil3/ImageLoadersKt;->a:Lcoil3/Extras$Key;

    iget-object p1, p1, Lcoil3/RealImageLoader$Options;->b:Lcoil3/request/ImageRequest$Defaults;

    iget-object v3, p1, Lcoil3/request/ImageRequest$Defaults;->n:Lcoil3/Extras;

    sget-object v5, Lcoil3/ImageLoadersKt;->a:Lcoil3/Extras$Key;

    iget-object v3, v3, Lcoil3/Extras;->a:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, v5, Lcoil3/Extras$Key;->a:Ljava/lang/Object;

    :cond_0
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v5, v4, Lcoil3/ComponentRegistry$Builder;->e:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    new-instance v3, Lwq0;

    const/4 v6, 0x5

    invoke-direct {v3, v6}, Lwq0;-><init>(I)V

    iget-object v6, v4, Lcoil3/ComponentRegistry$Builder;->d:Ljava/util/ArrayList;

    invoke-interface {v6, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance v3, Lwq0;

    const/4 v6, 0x6

    invoke-direct {v3, v6}, Lwq0;-><init>(I)V

    invoke-interface {v5, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v3, Lcoil3/map/AndroidUriMapper;

    invoke-direct {v3}, Lcoil3/map/AndroidUriMapper;-><init>()V

    sget-object v6, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v7, Landroid/net/Uri;

    invoke-virtual {v6, v7}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Lcoil3/ComponentRegistry$Builder;->b(Lcoil3/map/Mapper;Lkotlin/reflect/KClass;)V

    new-instance v3, Lcoil3/map/ResourceIntMapper;

    invoke-direct {v3}, Lcoil3/map/ResourceIntMapper;-><init>()V

    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Lcoil3/ComponentRegistry$Builder;->b(Lcoil3/map/Mapper;Lkotlin/reflect/KClass;)V

    new-instance v3, Lcoil3/key/AndroidResourceUriKeyer;

    invoke-direct {v3}, Lcoil3/key/AndroidResourceUriKeyer;-><init>()V

    const-class v7, Lcoil3/Uri;

    invoke-virtual {v6, v7}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    new-instance v9, Lkotlin/Pair;

    invoke-direct {v9, v3, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v4, Lcoil3/ComponentRegistry$Builder;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcoil3/fetch/AssetUriFetcher$Factory;

    invoke-direct {v8}, Lcoil3/fetch/AssetUriFetcher$Factory;-><init>()V

    invoke-virtual {v6, v7}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcoil3/ComponentRegistry$Builder;->a(Lcoil3/fetch/Fetcher$Factory;Lkotlin/reflect/KClass;)V

    new-instance v8, Lcoil3/fetch/ContentUriFetcher$Factory;

    invoke-direct {v8}, Lcoil3/fetch/ContentUriFetcher$Factory;-><init>()V

    invoke-virtual {v6, v7}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcoil3/ComponentRegistry$Builder;->a(Lcoil3/fetch/Fetcher$Factory;Lkotlin/reflect/KClass;)V

    new-instance v8, Lcoil3/fetch/ResourceUriFetcher$Factory;

    invoke-direct {v8}, Lcoil3/fetch/ResourceUriFetcher$Factory;-><init>()V

    invoke-virtual {v6, v7}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcoil3/ComponentRegistry$Builder;->a(Lcoil3/fetch/Fetcher$Factory;Lkotlin/reflect/KClass;)V

    new-instance v8, Lcoil3/fetch/DrawableFetcher$Factory;

    invoke-direct {v8}, Lcoil3/fetch/DrawableFetcher$Factory;-><init>()V

    const-class v9, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v9}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcoil3/ComponentRegistry$Builder;->a(Lcoil3/fetch/Fetcher$Factory;Lkotlin/reflect/KClass;)V

    sget-object v8, Lcoil3/ImageLoaders_androidKt;->a:Lcoil3/Extras$Key;

    iget-object v8, p1, Lcoil3/request/ImageRequest$Defaults;->n:Lcoil3/Extras;

    sget-object v9, Lcoil3/ImageLoaders_androidKt;->a:Lcoil3/Extras$Key;

    iget-object v8, v8, Lcoil3/Extras;->a:Ljava/util/Map;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    iget-object v8, v9, Lcoil3/Extras$Key;->a:Ljava/lang/Object;

    :cond_2
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-static {v8}, Lkotlinx/coroutines/sync/SemaphoreKt;->a(I)Lkotlinx/coroutines/sync/Semaphore;

    move-result-object v8

    iget-object v9, p1, Lcoil3/request/ImageRequest$Defaults;->n:Lcoil3/Extras;

    sget-object v10, Lcoil3/ImageLoaders_androidKt;->c:Lcoil3/Extras$Key;

    iget-object v9, v9, Lcoil3/Extras;->a:Ljava/util/Map;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_3

    iget-object v9, v10, Lcoil3/Extras$Key;->a:Ljava/lang/Object;

    :cond_3
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_5

    iget-object v9, p1, Lcoil3/request/ImageRequest$Defaults;->n:Lcoil3/Extras;

    sget-object v11, Lcoil3/ImageLoaders_androidKt;->b:Lcoil3/Extras$Key;

    iget-object v9, v9, Lcoil3/Extras;->a:Ljava/util/Map;

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_4

    iget-object v9, v11, Lcoil3/Extras$Key;->a:Ljava/lang/Object;

    :cond_4
    check-cast v9, Lcoil3/decode/ExifOrientationStrategy;

    sget-object v11, Lcoil3/decode/ExifOrientationStrategy;->a:Llw;

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    new-instance v9, Lcoil3/decode/StaticImageDecoder$Factory;

    invoke-direct {v9, v8}, Lcoil3/decode/StaticImageDecoder$Factory;-><init>(Lkotlinx/coroutines/sync/Semaphore;)V

    new-instance v11, Ljn;

    invoke-direct {v11, v9, v10}, Ljn;-><init>(Lcoil3/decode/Decoder$Factory;I)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance v9, Lcoil3/decode/BitmapFactoryDecoder$Factory;

    iget-object p1, p1, Lcoil3/request/ImageRequest$Defaults;->n:Lcoil3/Extras;

    sget-object v11, Lcoil3/ImageLoaders_androidKt;->b:Lcoil3/Extras$Key;

    iget-object p1, p1, Lcoil3/Extras;->a:Ljava/util/Map;

    invoke-interface {p1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_6

    iget-object p1, v11, Lcoil3/Extras$Key;->a:Ljava/lang/Object;

    :cond_6
    check-cast p1, Lcoil3/decode/ExifOrientationStrategy;

    invoke-direct {v9, v8, p1}, Lcoil3/decode/BitmapFactoryDecoder$Factory;-><init>(Lkotlinx/coroutines/sync/Semaphore;Lcoil3/decode/ExifOrientationStrategy;)V

    new-instance p1, Ljn;

    invoke-direct {p1, v9, v10}, Ljn;-><init>(Lcoil3/decode/Decoder$Factory;I)V

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcoil3/map/FileMapper;

    invoke-direct {p1}, Lcoil3/map/FileMapper;-><init>()V

    const-class v5, Ljava/io/File;

    invoke-virtual {v6, v5}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcoil3/ComponentRegistry$Builder;->b(Lcoil3/map/Mapper;Lkotlin/reflect/KClass;)V

    new-instance p1, Lcoil3/fetch/JarFileFetcher$Factory;

    invoke-direct {p1}, Lcoil3/fetch/JarFileFetcher$Factory;-><init>()V

    invoke-virtual {v6, v7}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcoil3/ComponentRegistry$Builder;->a(Lcoil3/fetch/Fetcher$Factory;Lkotlin/reflect/KClass;)V

    new-instance p1, Lcoil3/fetch/ByteBufferFetcher$Factory;

    invoke-direct {p1}, Lcoil3/fetch/ByteBufferFetcher$Factory;-><init>()V

    const-class v5, Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcoil3/ComponentRegistry$Builder;->a(Lcoil3/fetch/Fetcher$Factory;Lkotlin/reflect/KClass;)V

    new-instance p1, Lcoil3/map/StringMapper;

    invoke-direct {p1}, Lcoil3/map/StringMapper;-><init>()V

    const-class v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcoil3/ComponentRegistry$Builder;->b(Lcoil3/map/Mapper;Lkotlin/reflect/KClass;)V

    new-instance p1, Lcoil3/map/PathMapper;

    invoke-direct {p1}, Lcoil3/map/PathMapper;-><init>()V

    const-class v5, Lokio/Path;

    invoke-virtual {v6, v5}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcoil3/ComponentRegistry$Builder;->b(Lcoil3/map/Mapper;Lkotlin/reflect/KClass;)V

    new-instance p1, Lcoil3/key/FileUriKeyer;

    invoke-direct {p1}, Lcoil3/key/FileUriKeyer;-><init>()V

    invoke-virtual {v6, v7}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, p1, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcoil3/key/UriKeyer;

    invoke-direct {p1}, Lcoil3/key/UriKeyer;-><init>()V

    invoke-virtual {v6, v7}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, p1, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcoil3/fetch/FileUriFetcher$Factory;

    invoke-direct {p1}, Lcoil3/fetch/FileUriFetcher$Factory;-><init>()V

    invoke-virtual {v6, v7}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {v4, p1, v3}, Lcoil3/ComponentRegistry$Builder;->a(Lcoil3/fetch/Fetcher$Factory;Lkotlin/reflect/KClass;)V

    new-instance p1, Lcoil3/fetch/ByteArrayFetcher$Factory;

    invoke-direct {p1}, Lcoil3/fetch/ByteArrayFetcher$Factory;-><init>()V

    const-class v3, [B

    invoke-virtual {v6, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {v4, p1, v3}, Lcoil3/ComponentRegistry$Builder;->a(Lcoil3/fetch/Fetcher$Factory;Lkotlin/reflect/KClass;)V

    new-instance p1, Lcoil3/fetch/DataUriFetcher$Factory;

    invoke-direct {p1}, Lcoil3/fetch/DataUriFetcher$Factory;-><init>()V

    invoke-virtual {v6, v7}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {v4, p1, v3}, Lcoil3/ComponentRegistry$Builder;->a(Lcoil3/fetch/Fetcher$Factory;Lkotlin/reflect/KClass;)V

    new-instance p1, Lcoil3/fetch/BitmapFetcher$Factory;

    invoke-direct {p1}, Lcoil3/fetch/BitmapFetcher$Factory;-><init>()V

    const-class v3, Landroid/graphics/Bitmap;

    invoke-virtual {v6, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {v4, p1, v3}, Lcoil3/ComponentRegistry$Builder;->a(Lcoil3/fetch/Fetcher$Factory;Lkotlin/reflect/KClass;)V

    new-instance p1, Lcoil3/intercept/EngineInterceptor;

    invoke-direct {p1, p0, v0, v2, v1}, Lcoil3/intercept/EngineInterceptor;-><init>(Lcoil3/ImageLoader;Lcoil3/util/SystemCallbacks;Lcoil3/request/RequestService;Lcoil3/util/Logger;)V

    iget-object v0, v4, Lcoil3/ComponentRegistry$Builder;->a:Ljava/util/ArrayList;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcoil3/ComponentRegistry$Builder;->c()Lcoil3/ComponentRegistry;

    move-result-object p1

    iput-object p1, p0, Lcoil3/RealImageLoader;->d:Lcoil3/ComponentRegistry;

    return-void
.end method


# virtual methods
.method public final a()Lcoil3/disk/DiskCache;
    .locals 0

    iget-object p0, p0, Lcoil3/RealImageLoader;->a:Lcoil3/RealImageLoader$Options;

    iget-object p0, p0, Lcoil3/RealImageLoader$Options;->e:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcoil3/disk/DiskCache;

    return-object p0
.end method

.method public final b(Lcoil3/request/ImageRequest;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p1, Lcoil3/request/ImageRequest;->c:Lcoil3/target/Target;

    instance-of v0, v0, Lcoil3/target/ViewTarget;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcoil3/request/ImageRequest;->u:Lcoil3/size/SizeResolver;

    instance-of v0, v0, Lcoil3/size/ViewSizeResolver;

    if-nez v0, :cond_1

    sget-object v0, Lcoil3/request/ImageRequests_androidKt;->e:Lcoil3/Extras$Key;

    invoke-static {p1, v0}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/Lifecycle;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcoil3/RealImageLoader;->f(Lcoil3/request/ImageRequest;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    new-instance v0, Lcoil3/RealImageLoader$execute$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcoil3/RealImageLoader$execute$2;-><init>(Lcoil3/RealImageLoader;Lcoil3/request/ImageRequest;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, p2}, Lkotlinx/coroutines/CoroutineScopeKt;->d(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lcoil3/request/ImageRequest$Defaults;
    .locals 0

    iget-object p0, p0, Lcoil3/RealImageLoader;->a:Lcoil3/RealImageLoader$Options;

    iget-object p0, p0, Lcoil3/RealImageLoader$Options;->b:Lcoil3/request/ImageRequest$Defaults;

    return-object p0
.end method

.method public final d(Lcoil3/request/ImageRequest;)Lcoil3/request/Disposable;
    .locals 3

    iget-object v0, p0, Lcoil3/RealImageLoader;->a:Lcoil3/RealImageLoader$Options;

    iget-object v0, v0, Lcoil3/RealImageLoader$Options;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcoil3/RealImageLoader$enqueue$job$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcoil3/RealImageLoader$enqueue$job$1;-><init>(Lcoil3/RealImageLoader;Lcoil3/request/ImageRequest;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x2

    iget-object p0, p0, Lcoil3/RealImageLoader;->b:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p0, v0, v1, v2}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Deferred;

    move-result-object p0

    invoke-static {p1, p0}, Lcoil3/RealImageLoader_androidKt;->a(Lcoil3/request/ImageRequest;Lkotlinx/coroutines/Deferred;)Lcoil3/request/Disposable;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lcoil3/memory/MemoryCache;
    .locals 0

    iget-object p0, p0, Lcoil3/RealImageLoader;->a:Lcoil3/RealImageLoader$Options;

    iget-object p0, p0, Lcoil3/RealImageLoader$Options;->d:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcoil3/memory/MemoryCache;

    return-object p0
.end method

.method public final f(Lcoil3/request/ImageRequest;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v0, p2

    move-object/from16 v1, p3

    instance-of v3, v1, Lcoil3/RealImageLoader$execute$3;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lcoil3/RealImageLoader$execute$3;

    iget v4, v3, Lcoil3/RealImageLoader$execute$3;->i:I

    const/high16 v6, -0x80000000

    and-int v7, v4, v6

    if-eqz v7, :cond_0

    sub-int/2addr v4, v6

    iput v4, v3, Lcoil3/RealImageLoader$execute$3;->i:I

    :goto_0
    move-object v9, v3

    goto :goto_1

    :cond_0
    new-instance v3, Lcoil3/RealImageLoader$execute$3;

    invoke-direct {v3, v2, v1}, Lcoil3/RealImageLoader$execute$3;-><init>(Lcoil3/RealImageLoader;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object v1, v9, Lcoil3/RealImageLoader$execute$3;->g:Ljava/lang/Object;

    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v9, Lcoil3/RealImageLoader$execute$3;->i:I

    iget-object v11, v2, Lcoil3/RealImageLoader;->a:Lcoil3/RealImageLoader$Options;

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v3, :cond_4

    if-eq v3, v14, :cond_3

    if-eq v3, v13, :cond_2

    if-ne v3, v12, :cond_1

    iget-object v3, v9, Lcoil3/RealImageLoader$execute$3;->d:Lcoil3/EventListener;

    iget-object v4, v9, Lcoil3/RealImageLoader$execute$3;->c:Lcoil3/request/ImageRequest;

    iget-object v5, v9, Lcoil3/RealImageLoader$execute$3;->b:Lcoil3/request/RequestDelegate;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_12

    :catchall_0
    move-exception v0

    goto/16 :goto_15

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v15

    :cond_2
    iget v0, v9, Lcoil3/RealImageLoader$execute$3;->f:I

    iget-object v3, v9, Lcoil3/RealImageLoader$execute$3;->e:Lcoil3/Image;

    iget-object v4, v9, Lcoil3/RealImageLoader$execute$3;->d:Lcoil3/EventListener;

    iget-object v5, v9, Lcoil3/RealImageLoader$execute$3;->c:Lcoil3/request/ImageRequest;

    iget-object v6, v9, Lcoil3/RealImageLoader$execute$3;->b:Lcoil3/request/RequestDelegate;

    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v7, v5

    move-object v5, v3

    move-object v8, v6

    :goto_2
    move-object v3, v7

    move v7, v0

    goto/16 :goto_10

    :catchall_1
    move-exception v0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_15

    :cond_3
    iget v0, v9, Lcoil3/RealImageLoader$execute$3;->f:I

    iget-object v3, v9, Lcoil3/RealImageLoader$execute$3;->d:Lcoil3/EventListener;

    iget-object v4, v9, Lcoil3/RealImageLoader$execute$3;->c:Lcoil3/request/ImageRequest;

    iget-object v5, v9, Lcoil3/RealImageLoader$execute$3;->b:Lcoil3/request/RequestDelegate;

    :try_start_2
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_d

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-interface {v9}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/JobKt;->e(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    move-result-object v8

    if-nez v0, :cond_5

    move v1, v14

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    iget-object v3, v2, Lcoil3/RealImageLoader;->c:Lcoil3/request/AndroidRequestService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v5, Lcoil3/request/ImageRequest;->c:Lcoil3/target/Target;

    instance-of v6, v4, Lcoil3/target/ViewTarget;

    if-eqz v6, :cond_7

    sget-object v1, Lcoil3/request/ImageRequests_androidKt;->e:Lcoil3/Extras$Key;

    invoke-static {v5, v1}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/Lifecycle;

    if-nez v1, :cond_6

    invoke-static {v5}, Lcoil3/request/AndroidRequestService;->d(Lcoil3/request/ImageRequest;)Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    :cond_6
    move-object v7, v1

    new-instance v1, Lcoil3/request/ViewTargetRequestDelegate;

    move-object v6, v4

    iget-object v4, v3, Lcoil3/request/AndroidRequestService;->a:Lcoil3/ImageLoader;

    check-cast v6, Lcoil3/target/ViewTarget;

    move-object/from16 v16, v3

    move-object v3, v1

    move-object/from16 v1, v16

    invoke-direct/range {v3 .. v8}, Lcoil3/request/ViewTargetRequestDelegate;-><init>(Lcoil3/ImageLoader;Lcoil3/request/ImageRequest;Lcoil3/target/ViewTarget;Landroidx/lifecycle/Lifecycle;Lkotlinx/coroutines/Job;)V

    move-object/from16 v16, v3

    move-object v3, v1

    move-object/from16 v1, v16

    goto :goto_5

    :cond_7
    sget-object v4, Lcoil3/request/ImageRequests_androidKt;->e:Lcoil3/Extras$Key;

    invoke-static {v5, v4}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/lifecycle/Lifecycle;

    if-nez v4, :cond_9

    if-eqz v1, :cond_8

    invoke-static {v5}, Lcoil3/request/AndroidRequestService;->d(Lcoil3/request/ImageRequest;)Landroidx/lifecycle/Lifecycle;

    move-result-object v4

    goto :goto_4

    :cond_8
    move-object v4, v15

    :cond_9
    :goto_4
    if-eqz v4, :cond_a

    new-instance v1, Lcoil3/request/LifecycleRequestDelegate;

    invoke-direct {v1, v4, v8}, Lcoil3/request/LifecycleRequestDelegate;-><init>(Landroidx/lifecycle/Lifecycle;Lkotlinx/coroutines/Job;)V

    goto :goto_5

    :cond_a
    new-instance v1, Lcoil3/request/BaseRequestDelegate;

    invoke-direct {v1, v8}, Lcoil3/request/BaseRequestDelegate;-><init>(Lkotlinx/coroutines/Job;)V

    :goto_5
    invoke-interface {v1}, Lcoil3/request/RequestDelegate;->h()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcoil3/request/ImageRequest;->a(Lcoil3/request/ImageRequest;)Lcoil3/request/ImageRequest$Builder;

    move-result-object v4

    iget-object v6, v5, Lcoil3/request/ImageRequest;->c:Lcoil3/target/Target;

    iget-object v3, v3, Lcoil3/request/AndroidRequestService;->a:Lcoil3/ImageLoader;

    invoke-interface {v3}, Lcoil3/ImageLoader;->c()Lcoil3/request/ImageRequest$Defaults;

    move-result-object v3

    iput-object v3, v4, Lcoil3/request/ImageRequest$Builder;->b:Lcoil3/request/ImageRequest$Defaults;

    iget-object v3, v5, Lcoil3/request/ImageRequest;->y:Lcoil3/request/ImageRequest$Defined;

    iget-object v7, v3, Lcoil3/request/ImageRequest$Defined;->k:Lcoil3/size/SizeResolver;

    if-nez v7, :cond_e

    instance-of v7, v6, Lcoil3/target/ViewTarget;

    if-eqz v7, :cond_d

    move-object v7, v6

    check-cast v7, Lcoil3/target/ViewTarget;

    invoke-interface {v7}, Lcoil3/target/ViewTarget;->a()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_c

    move-object v8, v7

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v8

    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-eq v8, v15, :cond_b

    sget-object v15, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v15, :cond_c

    :cond_b
    sget-object v7, Lcoil3/size/SizeResolver;->a:Lcoil3/size/RealSizeResolver;

    goto :goto_6

    :cond_c
    new-instance v8, Lcoil3/size/RealViewSizeResolver;

    invoke-direct {v8, v7, v14}, Lcoil3/size/RealViewSizeResolver;-><init>(Landroid/view/View;Z)V

    move-object v7, v8

    goto :goto_6

    :cond_d
    sget-object v7, Lcoil3/size/SizeResolver;->a:Lcoil3/size/RealSizeResolver;

    :goto_6
    iput-object v7, v4, Lcoil3/request/ImageRequest$Builder;->v:Lcoil3/size/SizeResolver;

    :cond_e
    iget-object v8, v3, Lcoil3/request/ImageRequest$Defined;->l:Lcoil3/size/Scale;

    if-nez v8, :cond_15

    instance-of v8, v6, Lcoil3/target/ViewTarget;

    if-eqz v8, :cond_f

    move-object v8, v6

    check-cast v8, Lcoil3/target/ViewTarget;

    goto :goto_7

    :cond_f
    const/4 v8, 0x0

    :goto_7
    if-eqz v8, :cond_10

    invoke-interface {v8}, Lcoil3/target/ViewTarget;->a()Landroid/view/View;

    move-result-object v8

    goto :goto_8

    :cond_10
    const/4 v8, 0x0

    :goto_8
    instance-of v15, v8, Landroid/widget/ImageView;

    if-eqz v15, :cond_11

    check-cast v8, Landroid/widget/ImageView;

    goto :goto_9

    :cond_11
    const/4 v8, 0x0

    :goto_9
    if-eqz v8, :cond_14

    sget-object v5, Lcoil3/util/Utils_androidKt;->a:[Landroid/graphics/Bitmap$Config;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v5

    if-nez v5, :cond_12

    const/4 v5, -0x1

    goto :goto_a

    :cond_12
    sget-object v8, Lcoil3/util/Utils_androidKt$WhenMappings;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v8, v5

    :goto_a
    if-eq v5, v14, :cond_13

    if-eq v5, v13, :cond_13

    if-eq v5, v12, :cond_13

    const/4 v8, 0x4

    if-eq v5, v8, :cond_13

    sget-object v5, Lcoil3/size/Scale;->FILL:Lcoil3/size/Scale;

    goto :goto_b

    :cond_13
    sget-object v5, Lcoil3/size/Scale;->FIT:Lcoil3/size/Scale;

    goto :goto_b

    :cond_14
    iget-object v5, v5, Lcoil3/request/ImageRequest;->v:Lcoil3/size/Scale;

    :goto_b
    iput-object v5, v4, Lcoil3/request/ImageRequest$Builder;->w:Lcoil3/size/Scale;

    :cond_15
    iget-object v5, v3, Lcoil3/request/ImageRequest$Defined;->m:Lcoil3/size/Precision;

    if-nez v5, :cond_18

    iget-object v3, v3, Lcoil3/request/ImageRequest$Defined;->k:Lcoil3/size/SizeResolver;

    if-nez v3, :cond_16

    sget-object v3, Lcoil3/size/SizeResolver;->a:Lcoil3/size/RealSizeResolver;

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    sget-object v3, Lcoil3/size/Precision;->INEXACT:Lcoil3/size/Precision;

    goto :goto_c

    :cond_16
    instance-of v3, v6, Lcoil3/target/ViewTarget;

    if-eqz v3, :cond_17

    instance-of v3, v7, Lcoil3/size/ViewSizeResolver;

    if-eqz v3, :cond_17

    check-cast v6, Lcoil3/target/ViewTarget;

    invoke-interface {v6}, Lcoil3/target/ViewTarget;->a()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_17

    invoke-interface {v6}, Lcoil3/target/ViewTarget;->a()Landroid/view/View;

    move-result-object v3

    check-cast v7, Lcoil3/size/ViewSizeResolver;

    invoke-interface {v7}, Lcoil3/size/ViewSizeResolver;->a()Landroid/view/View;

    move-result-object v5

    if-ne v3, v5, :cond_17

    sget-object v3, Lcoil3/size/Precision;->INEXACT:Lcoil3/size/Precision;

    goto :goto_c

    :cond_17
    sget-object v3, Lcoil3/size/Precision;->EXACT:Lcoil3/size/Precision;

    :goto_c
    iput-object v3, v4, Lcoil3/request/ImageRequest$Builder;->x:Lcoil3/size/Precision;

    :cond_18
    invoke-virtual {v4}, Lcoil3/request/ImageRequest$Builder;->a()Lcoil3/request/ImageRequest;

    move-result-object v4

    iget-object v3, v11, Lcoil3/RealImageLoader$Options;->f:Lcoil3/EventListener$Factory;

    invoke-interface {v3}, Lcoil3/EventListener$Factory;->create()Lcoil3/EventListener$Companion$NONE$1;

    move-result-object v3

    :try_start_3
    iget-object v5, v4, Lcoil3/request/ImageRequest;->b:Ljava/lang/Object;

    sget-object v6, Lcoil3/request/NullRequestData;->a:Lcoil3/request/NullRequestData;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_22

    invoke-interface {v1}, Lcoil3/request/RequestDelegate;->start()V

    if-nez v0, :cond_19

    iput-object v1, v9, Lcoil3/RealImageLoader$execute$3;->b:Lcoil3/request/RequestDelegate;

    iput-object v4, v9, Lcoil3/RealImageLoader$execute$3;->c:Lcoil3/request/ImageRequest;

    iput-object v3, v9, Lcoil3/RealImageLoader$execute$3;->d:Lcoil3/EventListener;

    iput v0, v9, Lcoil3/RealImageLoader$execute$3;->f:I

    iput v14, v9, Lcoil3/RealImageLoader$execute$3;->i:I

    invoke-interface {v1, v9}, Lcoil3/request/RequestDelegate;->g(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v5, v10, :cond_19

    goto/16 :goto_11

    :catchall_2
    move-exception v0

    move-object v5, v1

    goto/16 :goto_15

    :cond_19
    move-object v5, v1

    :goto_d
    :try_start_4
    iget-object v1, v4, Lcoil3/request/ImageRequest;->q:Lcoil3/memory/MemoryCache$Key;

    if-eqz v1, :cond_1a

    invoke-virtual {v2}, Lcoil3/RealImageLoader;->e()Lcoil3/memory/MemoryCache;

    move-result-object v6

    if-eqz v6, :cond_1a

    invoke-interface {v6, v1}, Lcoil3/memory/MemoryCache;->a(Lcoil3/memory/MemoryCache$Key;)Lcoil3/memory/MemoryCache$Value;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-object v1, v1, Lcoil3/memory/MemoryCache$Value;->a:Lcoil3/Image;

    goto :goto_e

    :cond_1a
    const/4 v1, 0x0

    :goto_e
    iget-object v6, v4, Lcoil3/request/ImageRequest;->c:Lcoil3/target/Target;

    if-eqz v6, :cond_1d

    if-nez v1, :cond_1b

    iget-object v7, v4, Lcoil3/request/ImageRequest;->r:Lkotlin/jvm/functions/Function1;

    invoke-interface {v7, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcoil3/Image;

    if-nez v7, :cond_1c

    iget-object v7, v4, Lcoil3/request/ImageRequest;->z:Lcoil3/request/ImageRequest$Defaults;

    iget-object v7, v7, Lcoil3/request/ImageRequest$Defaults;->h:Lkotlin/jvm/functions/Function1;

    invoke-interface {v7, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcoil3/Image;

    goto :goto_f

    :cond_1b
    move-object v7, v1

    :cond_1c
    :goto_f
    invoke-interface {v6, v7}, Lcoil3/target/Target;->c(Lcoil3/Image;)V

    :cond_1d
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v4, Lcoil3/request/ImageRequest;->u:Lcoil3/size/SizeResolver;

    iput-object v5, v9, Lcoil3/RealImageLoader$execute$3;->b:Lcoil3/request/RequestDelegate;

    iput-object v4, v9, Lcoil3/RealImageLoader$execute$3;->c:Lcoil3/request/ImageRequest;

    iput-object v3, v9, Lcoil3/RealImageLoader$execute$3;->d:Lcoil3/EventListener;

    iput-object v1, v9, Lcoil3/RealImageLoader$execute$3;->e:Lcoil3/Image;

    iput v0, v9, Lcoil3/RealImageLoader$execute$3;->f:I

    iput v13, v9, Lcoil3/RealImageLoader$execute$3;->i:I

    invoke-interface {v6, v9}, Lcoil3/size/SizeResolver;->g(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne v6, v10, :cond_1e

    goto :goto_11

    :cond_1e
    move-object v7, v4

    move-object v4, v3

    move-object v8, v5

    move-object v5, v1

    move-object v1, v6

    goto/16 :goto_2

    :goto_10
    :try_start_5
    check-cast v1, Lcoil3/size/Size;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v3, Lcoil3/request/ImageRequest;->k:Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcoil3/RealImageLoader$execute$result$1;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    const/4 v6, 0x0

    move-object/from16 v16, v3

    move-object v3, v1

    move-object/from16 v1, v16

    :try_start_6
    invoke-direct/range {v0 .. v6}, Lcoil3/RealImageLoader$execute$result$1;-><init>(Lcoil3/request/ImageRequest;Lcoil3/RealImageLoader;Lcoil3/size/Size;Lcoil3/EventListener;Lcoil3/Image;Lkotlin/coroutines/Continuation;)V

    iput-object v8, v9, Lcoil3/RealImageLoader$execute$3;->b:Lcoil3/request/RequestDelegate;

    iput-object v1, v9, Lcoil3/RealImageLoader$execute$3;->c:Lcoil3/request/ImageRequest;

    iput-object v4, v9, Lcoil3/RealImageLoader$execute$3;->d:Lcoil3/EventListener;

    const/4 v3, 0x0

    iput-object v3, v9, Lcoil3/RealImageLoader$execute$3;->e:Lcoil3/Image;

    iput v7, v9, Lcoil3/RealImageLoader$execute$3;->f:I

    iput v12, v9, Lcoil3/RealImageLoader$execute$3;->i:I

    invoke-static {v13, v0, v9}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-ne v0, v10, :cond_1f

    :goto_11
    return-object v10

    :cond_1f
    move-object v3, v4

    move-object v5, v8

    move-object v4, v1

    move-object v1, v0

    :goto_12
    :try_start_7
    check-cast v1, Lcoil3/request/ImageResult;

    instance-of v0, v1, Lcoil3/request/SuccessResult;

    if-eqz v0, :cond_20

    move-object v0, v1

    check-cast v0, Lcoil3/request/SuccessResult;

    iget-object v6, v4, Lcoil3/request/ImageRequest;->c:Lcoil3/target/Target;

    invoke-virtual {v2, v0, v6, v3}, Lcoil3/RealImageLoader;->h(Lcoil3/request/SuccessResult;Lcoil3/target/Target;Lcoil3/EventListener;)V

    goto :goto_13

    :cond_20
    instance-of v0, v1, Lcoil3/request/ErrorResult;

    if-eqz v0, :cond_21

    move-object v0, v1

    check-cast v0, Lcoil3/request/ErrorResult;

    iget-object v6, v4, Lcoil3/request/ImageRequest;->c:Lcoil3/target/Target;

    invoke-virtual {v2, v0, v6, v3}, Lcoil3/RealImageLoader;->g(Lcoil3/request/ErrorResult;Lcoil3/target/Target;Lcoil3/EventListener;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_13
    invoke-interface {v5}, Lcoil3/request/RequestDelegate;->f()V

    return-object v1

    :cond_21
    :try_start_8
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_3
    move-exception v0

    :goto_14
    move-object v3, v4

    move-object v5, v8

    move-object v4, v1

    goto :goto_15

    :catchall_4
    move-exception v0

    move-object v1, v3

    goto :goto_14

    :cond_22
    :try_start_9
    new-instance v0, Lcoil3/request/NullRequestDataException;

    invoke-direct {v0}, Lcoil3/request/NullRequestDataException;-><init>()V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_15
    :try_start_a
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_23

    invoke-static {v4, v0}, Lcoil3/util/UtilsKt;->a(Lcoil3/request/ImageRequest;Ljava/lang/Throwable;)Lcoil3/request/ErrorResult;

    move-result-object v0

    iget-object v1, v4, Lcoil3/request/ImageRequest;->c:Lcoil3/target/Target;

    invoke-virtual {v2, v0, v1, v3}, Lcoil3/RealImageLoader;->g(Lcoil3/request/ErrorResult;Lcoil3/target/Target;Lcoil3/EventListener;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    invoke-interface {v5}, Lcoil3/request/RequestDelegate;->f()V

    return-object v0

    :catchall_5
    move-exception v0

    goto :goto_16

    :cond_23
    :try_start_b
    iget-object v1, v11, Lcoil3/RealImageLoader$Options;->h:Lcoil3/util/Logger;

    if-eqz v1, :cond_24

    sget-object v2, Lcoil3/util/Logger$Level;->Info:Lcoil3/util/Logger$Level;

    invoke-interface {v1}, Lcoil3/util/Logger;->a()Lcoil3/util/Logger$Level;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gtz v2, :cond_24

    iget-object v2, v4, Lcoil3/request/ImageRequest;->b:Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-interface {v1}, Lcoil3/util/Logger;->b()V

    :cond_24
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v4, Lcoil3/request/ImageRequest;->d:Lcoil3/request/ImageRequest$Listener;

    if-eqz v1, :cond_25

    invoke-interface {v1}, Lcoil3/request/ImageRequest$Listener;->onCancel()V

    :cond_25
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :goto_16
    invoke-interface {v5}, Lcoil3/request/RequestDelegate;->f()V

    throw v0
.end method

.method public final g(Lcoil3/request/ErrorResult;Lcoil3/target/Target;Lcoil3/EventListener;)V
    .locals 4

    iget-object v0, p1, Lcoil3/request/ErrorResult;->b:Lcoil3/request/ImageRequest;

    iget-object v1, p1, Lcoil3/request/ErrorResult;->a:Lcoil3/Image;

    iget-object p0, p0, Lcoil3/RealImageLoader;->a:Lcoil3/RealImageLoader$Options;

    iget-object p0, p0, Lcoil3/RealImageLoader$Options;->h:Lcoil3/util/Logger;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcoil3/util/Logger;->a()Lcoil3/util/Logger$Level;

    move-result-object v2

    sget-object v3, Lcoil3/util/Logger$Level;->Error:Lcoil3/util/Logger$Level;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gtz v2, :cond_0

    iget-object v2, v0, Lcoil3/request/ImageRequest;->b:Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-interface {p0}, Lcoil3/util/Logger;->b()V

    :cond_0
    instance-of p0, p2, Lcoil3/transition/TransitionTarget;

    if-nez p0, :cond_1

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_1
    sget-object p0, Lcoil3/request/ImageRequests_androidKt;->a:Lcoil3/Extras$Key;

    invoke-static {v0, p0}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcoil3/transition/Transition$Factory;

    move-object v2, p2

    check-cast v2, Lcoil3/transition/TransitionTarget;

    invoke-interface {p0, v2, p1}, Lcoil3/transition/Transition$Factory;->a(Lcoil3/transition/TransitionTarget;Lcoil3/request/ImageResult;)Lcoil3/transition/Transition;

    move-result-object p0

    instance-of v2, p0, Lcoil3/transition/NoneTransition;

    if-eqz v2, :cond_2

    :goto_0
    invoke-interface {p2, v1}, Lcoil3/target/Target;->b(Lcoil3/Image;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lcoil3/transition/Transition;->transition()V

    :cond_3
    :goto_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v0, Lcoil3/request/ImageRequest;->d:Lcoil3/request/ImageRequest$Listener;

    if-eqz p0, :cond_4

    invoke-interface {p0, p1}, Lcoil3/request/ImageRequest$Listener;->b(Lcoil3/request/ErrorResult;)V

    :cond_4
    return-void
.end method

.method public final getComponents()Lcoil3/ComponentRegistry;
    .locals 0

    iget-object p0, p0, Lcoil3/RealImageLoader;->d:Lcoil3/ComponentRegistry;

    return-object p0
.end method

.method public final h(Lcoil3/request/SuccessResult;Lcoil3/target/Target;Lcoil3/EventListener;)V
    .locals 5

    iget-object v0, p1, Lcoil3/request/SuccessResult;->b:Lcoil3/request/ImageRequest;

    iget-object v1, p1, Lcoil3/request/SuccessResult;->a:Lcoil3/Image;

    iget-object v2, p1, Lcoil3/request/SuccessResult;->c:Lcoil3/decode/DataSource;

    iget-object p0, p0, Lcoil3/RealImageLoader;->a:Lcoil3/RealImageLoader$Options;

    iget-object p0, p0, Lcoil3/RealImageLoader$Options;->h:Lcoil3/util/Logger;

    if-eqz p0, :cond_2

    sget-object v3, Lcoil3/util/Logger$Level;->Info:Lcoil3/util/Logger$Level;

    invoke-interface {p0}, Lcoil3/util/Logger;->a()Lcoil3/util/Logger$Level;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gtz v3, :cond_2

    sget-object v3, Lcoil3/util/UtilsKt;->a:Lkotlin/jvm/functions/Function1;

    sget-object v3, Lcoil3/util/UtilsKt$WhenMappings;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    iget-object v2, v0, Lcoil3/request/ImageRequest;->b:Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-interface {p0}, Lcoil3/util/Logger;->b()V

    :cond_2
    instance-of p0, p2, Lcoil3/transition/TransitionTarget;

    if-nez p0, :cond_3

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_3
    sget-object p0, Lcoil3/request/ImageRequests_androidKt;->a:Lcoil3/Extras$Key;

    invoke-static {v0, p0}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcoil3/transition/Transition$Factory;

    move-object v2, p2

    check-cast v2, Lcoil3/transition/TransitionTarget;

    invoke-interface {p0, v2, p1}, Lcoil3/transition/Transition$Factory;->a(Lcoil3/transition/TransitionTarget;Lcoil3/request/ImageResult;)Lcoil3/transition/Transition;

    move-result-object p0

    instance-of v2, p0, Lcoil3/transition/NoneTransition;

    if-eqz v2, :cond_4

    :goto_1
    invoke-interface {p2, v1}, Lcoil3/target/Target;->e(Lcoil3/Image;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lcoil3/transition/Transition;->transition()V

    :cond_5
    :goto_2
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v0, Lcoil3/request/ImageRequest;->d:Lcoil3/request/ImageRequest$Listener;

    if-eqz p0, :cond_6

    invoke-interface {p0, p1}, Lcoil3/request/ImageRequest$Listener;->a(Lcoil3/request/SuccessResult;)V

    :cond_6
    return-void
.end method
