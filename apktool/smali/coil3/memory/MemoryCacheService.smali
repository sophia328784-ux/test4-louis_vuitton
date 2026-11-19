.class public final Lcoil3/memory/MemoryCacheService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/memory/MemoryCacheService$Companion;,
        Lcoil3/memory/MemoryCacheService$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\nB!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcoil3/memory/MemoryCacheService;",
        "",
        "Lcoil3/ImageLoader;",
        "imageLoader",
        "Lcoil3/request/RequestService;",
        "requestService",
        "Lcoil3/util/Logger;",
        "logger",
        "<init>",
        "(Lcoil3/ImageLoader;Lcoil3/request/RequestService;Lcoil3/util/Logger;)V",
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


# instance fields
.field public final a:Lcoil3/ImageLoader;

.field public final b:Lcoil3/request/RequestService;

.field public final c:Lcoil3/util/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil3/memory/MemoryCacheService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil3/memory/MemoryCacheService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcoil3/ImageLoader;Lcoil3/request/RequestService;Lcoil3/util/Logger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil3/memory/MemoryCacheService;->a:Lcoil3/ImageLoader;

    iput-object p2, p0, Lcoil3/memory/MemoryCacheService;->b:Lcoil3/request/RequestService;

    iput-object p3, p0, Lcoil3/memory/MemoryCacheService;->c:Lcoil3/util/Logger;

    return-void
.end method


# virtual methods
.method public final a(Lcoil3/request/ImageRequest;Lcoil3/memory/MemoryCache$Key;Lcoil3/size/Size;Lcoil3/size/Scale;)Lcoil3/memory/MemoryCache$Value;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v1, Lcoil3/request/ImageRequest;->n:Lcoil3/request/CachePolicy;

    iget-object v5, v1, Lcoil3/request/ImageRequest;->w:Lcoil3/size/Precision;

    iget-object v6, v1, Lcoil3/request/ImageRequest;->b:Ljava/lang/Object;

    invoke-virtual {v4}, Lcoil3/request/CachePolicy;->a()Z

    move-result v4

    const/4 v7, 0x0

    if-nez v4, :cond_0

    goto/16 :goto_c

    :cond_0
    iget-object v4, v0, Lcoil3/memory/MemoryCacheService;->a:Lcoil3/ImageLoader;

    invoke-interface {v4}, Lcoil3/ImageLoader;->e()Lcoil3/memory/MemoryCache;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4, v2}, Lcoil3/memory/MemoryCache;->a(Lcoil3/memory/MemoryCache$Key;)Lcoil3/memory/MemoryCache$Value;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v7

    :goto_0
    if-eqz v4, :cond_18

    iget-object v8, v0, Lcoil3/memory/MemoryCacheService;->b:Lcoil3/request/RequestService;

    invoke-interface {v8, v1, v4}, Lcoil3/request/RequestService;->a(Lcoil3/request/ImageRequest;Lcoil3/memory/MemoryCache$Value;)Z

    move-result v8

    iget-object v0, v0, Lcoil3/memory/MemoryCacheService;->c:Lcoil3/util/Logger;

    if-nez v8, :cond_2

    if-eqz v0, :cond_18

    sget-object v1, Lcoil3/util/Logger$Level;->Debug:Lcoil3/util/Logger$Level;

    invoke-interface {v0}, Lcoil3/util/Logger;->a()Lcoil3/util/Logger$Level;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gtz v1, :cond_18

    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-interface {v0}, Lcoil3/util/Logger;->b()V

    return-object v7

    :cond_2
    iget-object v2, v2, Lcoil3/memory/MemoryCache$Key;->b:Ljava/util/Map;

    const-string v8, "coil#size"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v3}, Lcoil3/size/Size;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_b

    :cond_3
    if-eqz v0, :cond_18

    sget-object v1, Lcoil3/util/Logger$Level;->Debug:Lcoil3/util/Logger$Level;

    invoke-interface {v0}, Lcoil3/util/Logger;->a()Lcoil3/util/Logger$Level;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gtz v1, :cond_18

    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v3}, Lcoil3/size/Size;->toString()Ljava/lang/String;

    invoke-interface {v0}, Lcoil3/util/Logger;->b()V

    return-object v7

    :cond_4
    iget-object v2, v4, Lcoil3/memory/MemoryCache$Value;->b:Ljava/util/Map;

    const-string v8, "coil#is_sampled"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v8, v2, Ljava/lang/Boolean;

    if-eqz v8, :cond_5

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_1

    :cond_5
    move-object v2, v7

    :goto_1
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    iget-object v8, v4, Lcoil3/memory/MemoryCache$Value;->a:Lcoil3/Image;

    if-nez v2, :cond_7

    sget-object v2, Lcoil3/size/Size;->c:Lcoil3/size/Size;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    sget-object v2, Lcoil3/size/Precision;->INEXACT:Lcoil3/size/Precision;

    if-ne v5, v2, :cond_7

    goto/16 :goto_b

    :cond_7
    invoke-interface {v8}, Lcoil3/Image;->getWidth()I

    move-result v2

    invoke-interface {v8}, Lcoil3/Image;->getHeight()I

    move-result v9

    instance-of v8, v8, Lcoil3/BitmapImage;

    if-eqz v8, :cond_8

    sget-object v8, Lcoil3/request/ImageRequestsKt;->b:Lcoil3/Extras$Key;

    invoke-static {v1, v8}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcoil3/size/Size;

    goto :goto_3

    :cond_8
    sget-object v1, Lcoil3/size/Size;->c:Lcoil3/size/Size;

    :goto_3
    iget-object v8, v3, Lcoil3/size/Size;->a:Lcoil3/size/Dimension;

    instance-of v10, v8, Lcoil3/size/Dimension$Pixels;

    const v11, 0x7fffffff

    if-eqz v10, :cond_9

    check-cast v8, Lcoil3/size/Dimension$Pixels;

    iget v8, v8, Lcoil3/size/Dimension$Pixels;->a:I

    goto :goto_4

    :cond_9
    move v8, v11

    :goto_4
    iget-object v10, v1, Lcoil3/size/Size;->a:Lcoil3/size/Dimension;

    instance-of v12, v10, Lcoil3/size/Dimension$Pixels;

    if-eqz v12, :cond_a

    check-cast v10, Lcoil3/size/Dimension$Pixels;

    iget v10, v10, Lcoil3/size/Dimension$Pixels;->a:I

    goto :goto_5

    :cond_a
    move v10, v11

    :goto_5
    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget-object v3, v3, Lcoil3/size/Size;->b:Lcoil3/size/Dimension;

    instance-of v10, v3, Lcoil3/size/Dimension$Pixels;

    if-eqz v10, :cond_b

    check-cast v3, Lcoil3/size/Dimension$Pixels;

    iget v3, v3, Lcoil3/size/Dimension$Pixels;->a:I

    goto :goto_6

    :cond_b
    move v3, v11

    :goto_6
    iget-object v1, v1, Lcoil3/size/Size;->b:Lcoil3/size/Dimension;

    instance-of v10, v1, Lcoil3/size/Dimension$Pixels;

    if-eqz v10, :cond_c

    check-cast v1, Lcoil3/size/Dimension$Pixels;

    iget v1, v1, Lcoil3/size/Dimension$Pixels;->a:I

    goto :goto_7

    :cond_c
    move v1, v11

    :goto_7
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-double v12, v8

    int-to-double v14, v2

    div-double/2addr v12, v14

    int-to-double v14, v1

    move/from16 p0, v2

    int-to-double v2, v9

    div-double/2addr v14, v2

    if-eq v8, v11, :cond_d

    if-eq v1, v11, :cond_d

    move-object/from16 v2, p4

    goto :goto_8

    :cond_d
    sget-object v2, Lcoil3/size/Scale;->FIT:Lcoil3/size/Scale;

    :goto_8
    sget-object v3, Lcoil3/memory/MemoryCacheService$WhenMappings;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x2

    const/4 v10, 0x1

    if-eq v2, v10, :cond_10

    if-ne v2, v3, :cond_f

    cmpg-double v2, v12, v14

    if-gez v2, :cond_e

    sub-int v8, v8, p0

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    goto :goto_a

    :cond_e
    sub-int/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    :goto_9
    move-wide v12, v14

    goto :goto_a

    :cond_f
    invoke-static {}, Lv40;->g()V

    return-object v7

    :cond_10
    cmpl-double v2, v12, v14

    if-lez v2, :cond_11

    sub-int v8, v8, p0

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    goto :goto_a

    :cond_11
    sub-int/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    goto :goto_9

    :goto_a
    if-gt v1, v10, :cond_12

    goto :goto_b

    :cond_12
    sget-object v1, Lcoil3/memory/MemoryCacheService$WhenMappings;->b:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    if-eq v1, v10, :cond_15

    if-ne v1, v3, :cond_14

    cmpg-double v1, v12, v8

    if-gtz v1, :cond_13

    goto :goto_b

    :cond_13
    if-eqz v0, :cond_18

    sget-object v1, Lcoil3/util/Logger$Level;->Debug:Lcoil3/util/Logger$Level;

    invoke-interface {v0}, Lcoil3/util/Logger;->a()Lcoil3/util/Logger$Level;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gtz v1, :cond_18

    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-interface {v0}, Lcoil3/util/Logger;->b()V

    return-object v7

    :cond_14
    invoke-static {}, Lv40;->g()V

    return-object v7

    :cond_15
    cmpg-double v1, v12, v8

    if-nez v1, :cond_17

    :cond_16
    :goto_b
    return-object v4

    :cond_17
    if-eqz v0, :cond_18

    sget-object v1, Lcoil3/util/Logger$Level;->Debug:Lcoil3/util/Logger$Level;

    invoke-interface {v0}, Lcoil3/util/Logger;->a()Lcoil3/util/Logger$Level;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gtz v1, :cond_18

    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-interface {v0}, Lcoil3/util/Logger;->b()V

    :cond_18
    :goto_c
    return-object v7
.end method

.method public final b(Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener;)Lcoil3/memory/MemoryCache$Key;
    .locals 7

    iget-object p4, p1, Lcoil3/request/ImageRequest;->n:Lcoil3/request/CachePolicy;

    iget-object v0, p1, Lcoil3/request/ImageRequest;->f:Ljava/util/Map;

    sget-object v1, Lcoil3/request/CachePolicy;->DISABLED:Lcoil3/request/CachePolicy;

    const/4 v2, 0x0

    if-ne p4, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p4, p1, Lcoil3/request/ImageRequest;->e:Ljava/lang/String;

    if-eqz p4, :cond_1

    new-instance p0, Lcoil3/memory/MemoryCache$Key;

    invoke-direct {p0, p4, v0}, Lcoil3/memory/MemoryCache$Key;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object p0

    :cond_1
    iget-object p4, p0, Lcoil3/memory/MemoryCacheService;->a:Lcoil3/ImageLoader;

    invoke-interface {p4}, Lcoil3/ImageLoader;->getComponents()Lcoil3/ComponentRegistry;

    move-result-object p4

    sget-object v1, Lcoil3/util/UtilsKt;->a:Lkotlin/jvm/functions/Function1;

    iget-object p4, p4, Lcoil3/ComponentRegistry;->c:Ljava/util/List;

    move-object v1, p4

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_4

    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Pair;

    iget-object v6, v5, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v6, Lcoil3/key/Keyer;

    iget-object v5, v5, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v5, Lkotlin/reflect/KClass;

    invoke-interface {v5, p2}, Lkotlin/reflect/KClass;->t(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v6, p2, p3}, Lcoil3/key/Keyer;->a(Ljava/lang/Object;Lcoil3/request/Options;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-nez v4, :cond_5

    iget-object p0, p0, Lcoil3/memory/MemoryCacheService;->c:Lcoil3/util/Logger;

    if-eqz p0, :cond_5

    sget-object p4, Lcoil3/util/Logger$Level;->Warn:Lcoil3/util/Logger$Level;

    invoke-interface {p0}, Lcoil3/util/Logger;->a()Lcoil3/util/Logger$Level;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p4

    if-gtz p4, :cond_5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, p4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p4

    invoke-interface {p4}, Lkotlin/reflect/KClass;->B()Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v1, p2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-interface {p2}, Lkotlin/reflect/KClass;->B()Ljava/lang/String;

    invoke-interface {p0}, Lcoil3/util/Logger;->b()V

    :cond_5
    move-object v4, v2

    :goto_1
    if-nez v4, :cond_6

    :goto_2
    return-object v2

    :cond_6
    sget-object p0, Lcoil3/request/ImageRequestsKt;->a:Lcoil3/Extras$Key;

    invoke-static {p1, p0}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_7

    invoke-static {v0}, Lkotlin/collections/MapsKt;->r(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p0

    iget-object p1, p3, Lcoil3/request/Options;->b:Lcoil3/size/Size;

    invoke-virtual {p1}, Lcoil3/size/Size;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "coil#size"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcoil3/memory/MemoryCache$Key;

    invoke-direct {p1, v4, p0}, Lcoil3/memory/MemoryCache$Key;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object p1

    :cond_7
    new-instance p0, Lcoil3/memory/MemoryCache$Key;

    invoke-direct {p0, v4, v0}, Lcoil3/memory/MemoryCache$Key;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object p0
.end method
