.class public final Landroidx/compose/ui/text/font/AndroidFontLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/text/font/PlatformFontLoader;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/compose/ui/text/font/AndroidFontLoader;",
        "Landroidx/compose/ui/text/font/PlatformFontLoader;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "ui-text"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/text/font/AndroidFontLoader;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/text/font/Font;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Landroidx/compose/ui/text/font/AndroidFont;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/ui/text/font/AndroidFont;

    iget-object p0, p1, Landroidx/compose/ui/text/font/AndroidFont;->b:Landroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;

    invoke-interface {p0}, Landroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;->a()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p1, Landroidx/compose/ui/text/font/ResourceFont;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/text/font/ResourceFont;

    iget v2, v0, Landroidx/compose/ui/text/font/ResourceFont;->e:I

    sget-object v3, Landroidx/compose/ui/text/font/FontLoadingStrategy;->a:Landroidx/compose/ui/text/font/FontLoadingStrategy$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/compose/ui/text/font/AndroidFontLoader;->a:Landroid/content/Context;

    if-nez v2, :cond_1

    iget p1, v0, Landroidx/compose/ui/text/font/ResourceFont;->a:I

    invoke-static {p1, p0}, Landroidx/core/content/res/ResourcesCompat;->b(ILandroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_1
    sget v3, Landroidx/compose/ui/text/font/FontLoadingStrategy;->b:I

    if-ne v2, v3, :cond_3

    :try_start_0
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    check-cast p1, Landroidx/compose/ui/text/font/ResourceFont;

    iget p1, p1, Landroidx/compose/ui/text/font/ResourceFont;->a:I

    invoke-static {p1, p0}, Landroidx/core/content/res/ResourcesCompat;->b(ILandroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v2

    :goto_0
    instance-of v2, p1, Lkotlin/Result$Failure;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, p1

    :goto_1
    move-object p1, v1

    check-cast p1, Landroid/graphics/Typeface;

    :goto_2
    iget-object v0, v0, Landroidx/compose/ui/text/font/ResourceFont;->d:Landroidx/compose/ui/text/font/FontVariation$Settings;

    invoke-static {p1, v0, p0}, Landroidx/compose/ui/text/font/PlatformTypefaces_androidKt;->a(Landroid/graphics/Typeface;Landroidx/compose/ui/text/font/FontVariation$Settings;Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_3
    sget p0, Landroidx/compose/ui/text/font/FontLoadingStrategy;->c:I

    if-ne v2, p0, :cond_4

    const-string p0, "Unsupported Async font load path"

    invoke-static {p0}, Lmt;->i(Ljava/lang/String;)V

    return-object v1

    :cond_4
    const-string p0, "Unknown loading type "

    invoke-static {v2}, Landroidx/compose/ui/text/font/FontLoadingStrategy;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Laz;->w(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    return-object v1
.end method

.method public final b()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final c(Landroidx/compose/ui/text/font/Font;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p2, Landroidx/compose/ui/text/font/AndroidFontLoader$awaitLoad$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/compose/ui/text/font/AndroidFontLoader$awaitLoad$1;

    iget v1, v0, Landroidx/compose/ui/text/font/AndroidFontLoader$awaitLoad$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/ui/text/font/AndroidFontLoader$awaitLoad$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/ui/text/font/AndroidFontLoader$awaitLoad$1;

    check-cast p2, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    invoke-direct {v0, p0, p2}, Landroidx/compose/ui/text/font/AndroidFontLoader$awaitLoad$1;-><init>(Landroidx/compose/ui/text/font/AndroidFontLoader;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Landroidx/compose/ui/text/font/AndroidFontLoader$awaitLoad$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/compose/ui/text/font/AndroidFontLoader$awaitLoad$1;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    iget-object v5, p0, Landroidx/compose/ui/text/font/AndroidFontLoader;->a:Landroid/content/Context;

    const/4 p0, 0x1

    if-eqz v2, :cond_3

    if-eq v2, p0, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Landroidx/compose/ui/text/font/AndroidFontLoader$awaitLoad$1;->b:Landroidx/compose/ui/text/font/ResourceFont;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    return-object p2

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    instance-of p2, p1, Landroidx/compose/ui/text/font/AndroidFont;

    if-eqz p2, :cond_5

    check-cast p1, Landroidx/compose/ui/text/font/AndroidFont;

    iget-object p1, p1, Landroidx/compose/ui/text/font/AndroidFont;->b:Landroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;

    iput p0, v0, Landroidx/compose/ui/text/font/AndroidFontLoader$awaitLoad$1;->e:I

    invoke-interface {p1}, Landroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;->b()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    goto :goto_2

    :cond_4
    return-object p0

    :cond_5
    instance-of p2, p1, Landroidx/compose/ui/text/font/ResourceFont;

    if-eqz p2, :cond_8

    move-object p2, p1

    check-cast p2, Landroidx/compose/ui/text/font/ResourceFont;

    iput-object p2, v0, Landroidx/compose/ui/text/font/AndroidFontLoader$awaitLoad$1;->b:Landroidx/compose/ui/text/font/ResourceFont;

    iput v4, v0, Landroidx/compose/ui/text/font/AndroidFontLoader$awaitLoad$1;->e:I

    new-instance v2, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->b(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    invoke-direct {v2, v0, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    iget v6, p2, Landroidx/compose/ui/text/font/ResourceFont;->a:I

    new-instance v9, Landroidx/compose/ui/text/font/AndroidFontLoader_androidKt$loadAsync$2$1;

    invoke-direct {v9, v2, p2}, Landroidx/compose/ui/text/font/AndroidFontLoader_androidKt$loadAsync$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;Landroidx/compose/ui/text/font/ResourceFont;)V

    sget-object p0, Landroidx/core/content/res/ResourcesCompat;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Landroid/content/Context;->isRestricted()Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, -0x4

    invoke-virtual {v9, p0}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->a(I)V

    goto :goto_1

    :cond_6
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v11}, Landroidx/core/content/res/ResourcesCompat;->c(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/res/ResourcesCompat$FontCallback;ZZ)Landroid/graphics/Typeface;

    :goto_1
    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    :goto_2
    return-object v1

    :cond_7
    :goto_3
    check-cast p2, Landroid/graphics/Typeface;

    check-cast p1, Landroidx/compose/ui/text/font/ResourceFont;

    iget-object p0, p1, Landroidx/compose/ui/text/font/ResourceFont;->d:Landroidx/compose/ui/text/font/FontVariation$Settings;

    invoke-static {p2, p0, v5}, Landroidx/compose/ui/text/font/PlatformTypefaces_androidKt;->a(Landroid/graphics/Typeface;Landroidx/compose/ui/text/font/FontVariation$Settings;Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_8
    const-string p0, "Unknown font type: "

    invoke-static {p1, p0}, Laz;->m(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3
.end method
