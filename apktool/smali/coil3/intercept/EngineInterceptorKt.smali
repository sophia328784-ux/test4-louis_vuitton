.class public abstract Lcoil3/intercept/EngineInterceptorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "io.coil-kt.coil3:coil-core"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcoil3/intercept/EngineInterceptor$ExecuteResult;Lcoil3/request/ImageRequest;Lcoil3/request/Options;Lcoil3/EventListener;Lcoil3/util/Logger;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    instance-of v4, v3, Lcoil3/intercept/EngineInterceptorKt$transform$1;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;

    iget v5, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->j:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->j:I

    goto :goto_0

    :cond_0
    new-instance v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;

    invoke-direct {v4, v3}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v3, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->i:Ljava/lang/Object;

    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v6, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->j:I

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    if-ne v6, v7, :cond_1

    iget v0, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->h:I

    iget v1, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->g:I

    iget-object v2, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->f:Ljava/util/List;

    check-cast v2, Ljava/util/List;

    iget-object v6, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->e:Lcoil3/EventListener;

    iget-object v8, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->d:Lcoil3/request/Options;

    iget-object v9, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->c:Lcoil3/request/ImageRequest;

    iget-object v10, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->b:Lcoil3/intercept/EngineInterceptor$ExecuteResult;

    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v16, v8

    move v8, v0

    move-object v0, v10

    move-object v10, v4

    move-object v4, v2

    move-object/from16 v2, v16

    goto/16 :goto_5

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v3, Lcoil3/request/ImageRequestsKt;->a:Lcoil3/Extras$Key;

    invoke-static {v1, v3}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    return-object v0

    :cond_3
    iget-object v6, v0, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->a:Lcoil3/Image;

    instance-of v8, v6, Lcoil3/BitmapImage;

    if-nez v8, :cond_5

    sget-object v9, Lcoil3/request/ImageRequestsKt;->d:Lcoil3/Extras$Key;

    invoke-static {v1, v9}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_5

    if-eqz p4, :cond_4

    sget-object v1, Lcoil3/util/Logger$Level;->Info:Lcoil3/util/Logger$Level;

    invoke-interface/range {p4 .. p4}, Lcoil3/util/Logger;->a()Lcoil3/util/Logger$Level;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gtz v1, :cond_4

    iget-object v1, v0, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->a:Lcoil3/Image;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KClass;->B()Ljava/lang/String;

    invoke-interface/range {p4 .. p4}, Lcoil3/util/Logger;->b()V

    :cond_4
    return-object v0

    :cond_5
    const/4 v9, 0x0

    if-eqz v8, :cond_8

    move-object v8, v6

    check-cast v8, Lcoil3/BitmapImage;

    iget-object v8, v8, Lcoil3/BitmapImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    if-nez v10, :cond_6

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_6
    sget-object v11, Lcoil3/util/Utils_androidKt;->a:[Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11}, Lkotlin/collections/ArraysKt;->f(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_3

    :cond_7
    if-eqz p4, :cond_9

    sget-object v8, Lcoil3/util/Logger$Level;->Info:Lcoil3/util/Logger$Level;

    invoke-interface/range {p4 .. p4}, Lcoil3/util/Logger;->a()Lcoil3/util/Logger$Level;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v8

    if-gtz v8, :cond_9

    invoke-static {v10}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-interface/range {p4 .. p4}, Lcoil3/util/Logger;->b()V

    goto :goto_1

    :cond_8
    if-eqz p4, :cond_9

    sget-object v8, Lcoil3/util/Logger$Level;->Info:Lcoil3/util/Logger$Level;

    invoke-interface/range {p4 .. p4}, Lcoil3/util/Logger;->a()Lcoil3/util/Logger$Level;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v8

    if-gtz v8, :cond_9

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    sget-object v10, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v10, v8}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/reflect/KClass;->w()Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-interface/range {p4 .. p4}, Lcoil3/util/Logger;->b()V

    :cond_9
    :goto_1
    iget-object v8, v2, Lcoil3/request/Options;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v6, v8}, Lcoil3/Image_androidKt;->a(Lcoil3/Image;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    sget-object v6, Lcoil3/request/ImageRequests_androidKt;->b:Lcoil3/Extras$Key;

    invoke-static {v2, v6}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Landroid/graphics/Bitmap$Config;

    iget-object v12, v2, Lcoil3/request/Options;->b:Lcoil3/size/Size;

    iget-object v13, v2, Lcoil3/request/Options;->c:Lcoil3/size/Scale;

    sget-object v6, Lcoil3/request/ImageRequestsKt;->b:Lcoil3/Extras$Key;

    invoke-static {v2, v6}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Lcoil3/size/Size;

    iget-object v6, v2, Lcoil3/request/Options;->d:Lcoil3/size/Precision;

    sget-object v8, Lcoil3/size/Precision;->INEXACT:Lcoil3/size/Precision;

    if-ne v6, v8, :cond_a

    move v15, v7

    goto :goto_2

    :cond_a
    move v15, v9

    :goto_2
    invoke-static/range {v10 .. v15}, Lcoil3/util/DrawableUtils;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lcoil3/size/Size;Lcoil3/size/Scale;Lcoil3/size/Size;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    :goto_3
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v6, v3

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    move-object v10, v8

    move-object v8, v4

    move-object v4, v3

    move-object/from16 v3, p3

    :goto_4
    if-ge v9, v6, :cond_c

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcoil3/transform/Transformation;

    iget-object v11, v2, Lcoil3/request/Options;->b:Lcoil3/size/Size;

    iput-object v0, v8, Lcoil3/intercept/EngineInterceptorKt$transform$1;->b:Lcoil3/intercept/EngineInterceptor$ExecuteResult;

    iput-object v1, v8, Lcoil3/intercept/EngineInterceptorKt$transform$1;->c:Lcoil3/request/ImageRequest;

    iput-object v2, v8, Lcoil3/intercept/EngineInterceptorKt$transform$1;->d:Lcoil3/request/Options;

    iput-object v3, v8, Lcoil3/intercept/EngineInterceptorKt$transform$1;->e:Lcoil3/EventListener;

    move-object v11, v4

    check-cast v11, Ljava/util/List;

    iput-object v11, v8, Lcoil3/intercept/EngineInterceptorKt$transform$1;->f:Ljava/util/List;

    iput v9, v8, Lcoil3/intercept/EngineInterceptorKt$transform$1;->g:I

    iput v6, v8, Lcoil3/intercept/EngineInterceptorKt$transform$1;->h:I

    iput v7, v8, Lcoil3/intercept/EngineInterceptorKt$transform$1;->j:I

    invoke-virtual {v10}, Lcoil3/transform/Transformation;->b()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v5, :cond_b

    return-object v5

    :cond_b
    move/from16 v16, v9

    move-object v9, v1

    move/from16 v1, v16

    move/from16 v16, v6

    move-object v6, v3

    move-object v3, v10

    move-object v10, v8

    move/from16 v8, v16

    :goto_5
    check-cast v3, Landroid/graphics/Bitmap;

    invoke-interface {v10}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v11

    invoke-static {v11}, Lkotlinx/coroutines/JobKt;->d(Lkotlin/coroutines/CoroutineContext;)V

    add-int/2addr v1, v7

    move-object/from16 v16, v9

    move v9, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v10

    move-object v10, v3

    move-object v3, v6

    move v6, v8

    move-object/from16 v8, v16

    goto :goto_4

    :cond_c
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcoil3/Image_androidKt;->c(Landroid/graphics/Bitmap;)Lcoil3/BitmapImage;

    move-result-object v1

    iget-boolean v2, v0, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->b:Z

    iget-object v3, v0, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->c:Lcoil3/decode/DataSource;

    iget-object v0, v0, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->d:Ljava/lang/String;

    new-instance v4, Lcoil3/intercept/EngineInterceptor$ExecuteResult;

    invoke-direct {v4, v1, v2, v3, v0}, Lcoil3/intercept/EngineInterceptor$ExecuteResult;-><init>(Lcoil3/Image;ZLcoil3/decode/DataSource;Ljava/lang/String;)V

    return-object v4
.end method
