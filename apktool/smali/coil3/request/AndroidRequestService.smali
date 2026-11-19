.class public final Lcoil3/request/AndroidRequestService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/request/RequestService;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcoil3/request/AndroidRequestService;",
        "Lcoil3/request/RequestService;",
        "Lcoil3/ImageLoader;",
        "imageLoader",
        "Lcoil3/util/SystemCallbacks;",
        "systemCallbacks",
        "Lcoil3/util/Logger;",
        "logger",
        "<init>",
        "(Lcoil3/ImageLoader;Lcoil3/util/SystemCallbacks;Lcoil3/util/Logger;)V",
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

.field public final b:Lcoil3/util/SystemCallbacks;

.field public final c:Lcoil3/util/Logger;

.field public final d:Lcoil3/util/HardwareBitmapService;


# direct methods
.method public constructor <init>(Lcoil3/ImageLoader;Lcoil3/util/SystemCallbacks;Lcoil3/util/Logger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil3/request/AndroidRequestService;->a:Lcoil3/ImageLoader;

    iput-object p2, p0, Lcoil3/request/AndroidRequestService;->b:Lcoil3/util/SystemCallbacks;

    iput-object p3, p0, Lcoil3/request/AndroidRequestService;->c:Lcoil3/util/Logger;

    invoke-static {}, Lcoil3/util/HardwareBitmapsKt;->a()Lcoil3/util/HardwareBitmapService;

    move-result-object p1

    iput-object p1, p0, Lcoil3/request/AndroidRequestService;->d:Lcoil3/util/HardwareBitmapService;

    return-void
.end method

.method public static d(Lcoil3/request/ImageRequest;)Landroidx/lifecycle/Lifecycle;
    .locals 2

    iget-object v0, p0, Lcoil3/request/ImageRequest;->c:Lcoil3/target/Target;

    instance-of v1, v0, Lcoil3/target/ViewTarget;

    if-eqz v1, :cond_0

    check-cast v0, Lcoil3/target/ViewTarget;

    invoke-interface {v0}, Lcoil3/target/ViewTarget;->a()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcoil3/request/ImageRequest;->a:Landroid/content/Context;

    :goto_0
    instance-of v0, p0, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0
.end method

.method public static e(Lcoil3/request/ImageRequest;Landroid/graphics/Bitmap$Config;)Z
    .locals 2

    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    sget-object p1, Lcoil3/request/ImageRequests_androidKt;->f:Lcoil3/Extras$Key;

    invoke-static {p0, p1}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcoil3/request/ImageRequest;->c:Lcoil3/target/Target;

    instance-of p1, p0, Lcoil3/target/ViewTarget;

    if-eqz p1, :cond_1

    check-cast p0, Lcoil3/target/ViewTarget;

    invoke-interface {p0}, Lcoil3/target/ViewTarget;->a()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result p0

    if-nez p0, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method


# virtual methods
.method public final a(Lcoil3/request/ImageRequest;Lcoil3/memory/MemoryCache$Value;)Z
    .locals 0

    iget-object p0, p2, Lcoil3/memory/MemoryCache$Value;->a:Lcoil3/Image;

    instance-of p2, p0, Lcoil3/BitmapImage;

    if-eqz p2, :cond_0

    check-cast p0, Lcoil3/BitmapImage;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-object p0, p0, Lcoil3/BitmapImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    if-nez p0, :cond_2

    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_2
    invoke-static {p1, p0}, Lcoil3/request/AndroidRequestService;->e(Lcoil3/request/ImageRequest;Landroid/graphics/Bitmap$Config;)Z

    move-result p0

    return p0
.end method

.method public final b(Lcoil3/request/ImageRequest;Lcoil3/size/Size;)Lcoil3/request/Options;
    .locals 20

    move-object/from16 v0, p1

    new-instance v1, Lcoil3/request/Options;

    move-object v2, v1

    iget-object v1, v0, Lcoil3/request/ImageRequest;->a:Landroid/content/Context;

    iget-object v3, v0, Lcoil3/request/ImageRequest;->v:Lcoil3/size/Scale;

    iget-object v4, v0, Lcoil3/request/ImageRequest;->w:Lcoil3/size/Precision;

    iget-object v5, v0, Lcoil3/request/ImageRequest;->g:Ljava/lang/String;

    iget-object v6, v0, Lcoil3/request/ImageRequest;->h:Lokio/FileSystem;

    iget-object v7, v0, Lcoil3/request/ImageRequest;->n:Lcoil3/request/CachePolicy;

    iget-object v8, v0, Lcoil3/request/ImageRequest;->o:Lcoil3/request/CachePolicy;

    iget-object v9, v0, Lcoil3/request/ImageRequest;->p:Lcoil3/request/CachePolicy;

    sget-object v10, Lcoil3/request/ImageRequests_androidKt;->b:Lcoil3/Extras$Key;

    invoke-static {v0, v10}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Bitmap$Config;

    sget-object v12, Lcoil3/request/ImageRequests_androidKt;->g:Lcoil3/Extras$Key;

    invoke-static {v0, v12}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    sget-object v14, Lcoil3/request/ImageRequestsKt;->a:Lcoil3/Extras$Key;

    invoke-static {v0, v14}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    if-nez v15, :cond_1

    sget-object v15, Lcoil3/util/Utils_androidKt;->a:[Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v10}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v1

    move-object/from16 v1, v18

    check-cast v1, Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v15}, Lkotlin/collections/ArraysKt;->f(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v1, v17

    goto :goto_1

    :cond_1
    move-object/from16 v19, v1

    :goto_0
    move/from16 v1, v16

    :goto_1
    invoke-static {v0, v10}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Bitmap$Config;

    move/from16 v18, v1

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v15, v1, :cond_3

    invoke-static {v0, v10}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1}, Lcoil3/request/AndroidRequestService;->e(Lcoil3/request/ImageRequest;Landroid/graphics/Bitmap$Config;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v1, p0

    iget-object v1, v1, Lcoil3/request/AndroidRequestService;->d:Lcoil3/util/HardwareBitmapService;

    invoke-interface {v1}, Lcoil3/util/HardwareBitmapService;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v1, v17

    goto :goto_3

    :cond_3
    :goto_2
    move/from16 v1, v16

    :goto_3
    if-eqz v18, :cond_4

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_4
    if-eqz v13, :cond_5

    invoke-static {v0, v14}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-eq v11, v1, :cond_5

    move/from16 v1, v16

    goto :goto_5

    :cond_5
    move/from16 v1, v17

    :goto_5
    new-instance v13, Lcoil3/Extras$Builder;

    iget-object v14, v0, Lcoil3/request/ImageRequest;->z:Lcoil3/request/ImageRequest$Defaults;

    iget-object v14, v14, Lcoil3/request/ImageRequest$Defaults;->n:Lcoil3/Extras;

    iget-object v14, v14, Lcoil3/Extras;->a:Ljava/util/Map;

    iget-object v15, v0, Lcoil3/request/ImageRequest;->x:Lcoil3/Extras;

    iget-object v15, v15, Lcoil3/Extras;->a:Ljava/util/Map;

    invoke-static {v14, v15}, Lkotlin/collections/MapsKt;->k(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v14

    invoke-direct {v13, v14}, Lcoil3/Extras$Builder;-><init>(Ljava/util/Map;)V

    invoke-static {v0, v10}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Bitmap$Config;

    if-eq v11, v14, :cond_6

    sget v14, Lcoil3/Extras$Key;->b:I

    invoke-virtual {v13, v10, v11}, Lcoil3/Extras$Builder;->b(Lcoil3/Extras$Key;Ljava/lang/Object;)V

    :cond_6
    invoke-static {v0, v12}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v1, v0, :cond_7

    sget v0, Lcoil3/Extras$Key;->b:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v13, v12, v0}, Lcoil3/Extras$Builder;->b(Lcoil3/Extras$Key;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {v13}, Lcoil3/Extras$Builder;->a()Lcoil3/Extras;

    move-result-object v10

    move-object v0, v2

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v10}, Lcoil3/request/Options;-><init>(Landroid/content/Context;Lcoil3/size/Size;Lcoil3/size/Scale;Lcoil3/size/Precision;Ljava/lang/String;Lokio/FileSystem;Lcoil3/request/CachePolicy;Lcoil3/request/CachePolicy;Lcoil3/request/CachePolicy;Lcoil3/Extras;)V

    return-object v0
.end method

.method public final c(Lcoil3/request/Options;)Lcoil3/request/Options;
    .locals 11

    iget-object v0, p1, Lcoil3/request/Options;->j:Lcoil3/Extras;

    sget-object v1, Lcoil3/request/ImageRequests_androidKt;->b:Lcoil3/Extras$Key;

    invoke-static {p1, v1}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap$Config;

    sget-object v3, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_1

    iget-object p0, p0, Lcoil3/request/AndroidRequestService;->d:Lcoil3/util/HardwareBitmapService;

    invoke-interface {p0}, Lcoil3/util/HardwareBitmapService;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcoil3/Extras$Builder;

    invoke-direct {p0, v0}, Lcoil3/Extras$Builder;-><init>(Lcoil3/Extras;)V

    sget v0, Lcoil3/Extras$Key;->b:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, v1, v0}, Lcoil3/Extras$Builder;->b(Lcoil3/Extras$Key;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcoil3/Extras$Builder;->a()Lcoil3/Extras;

    move-result-object v0

    const/4 p0, 0x1

    :goto_0
    move-object v10, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 p0, 0x0

    goto :goto_0

    :goto_2
    if-eqz p0, :cond_2

    iget-object v1, p1, Lcoil3/request/Options;->a:Landroid/content/Context;

    iget-object v2, p1, Lcoil3/request/Options;->b:Lcoil3/size/Size;

    iget-object v3, p1, Lcoil3/request/Options;->c:Lcoil3/size/Scale;

    iget-object v4, p1, Lcoil3/request/Options;->d:Lcoil3/size/Precision;

    iget-object v5, p1, Lcoil3/request/Options;->e:Ljava/lang/String;

    iget-object v6, p1, Lcoil3/request/Options;->f:Lokio/FileSystem;

    iget-object v7, p1, Lcoil3/request/Options;->g:Lcoil3/request/CachePolicy;

    iget-object v8, p1, Lcoil3/request/Options;->h:Lcoil3/request/CachePolicy;

    iget-object v9, p1, Lcoil3/request/Options;->i:Lcoil3/request/CachePolicy;

    new-instance v0, Lcoil3/request/Options;

    invoke-direct/range {v0 .. v10}, Lcoil3/request/Options;-><init>(Landroid/content/Context;Lcoil3/size/Size;Lcoil3/size/Scale;Lcoil3/size/Precision;Ljava/lang/String;Lokio/FileSystem;Lcoil3/request/CachePolicy;Lcoil3/request/CachePolicy;Lcoil3/request/CachePolicy;Lcoil3/Extras;)V

    return-object v0

    :cond_2
    return-object p1
.end method
