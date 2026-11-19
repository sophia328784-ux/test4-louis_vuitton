.class public abstract Lcoil3/compose/SingletonAsyncImageKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "io.coil-kt.coil3:coil-compose"
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
.method public static final a(Lcoil3/request/ImageRequest;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/Composer;I)V
    .locals 10

    if-eqz p1, :cond_0

    const-string v2, "AsyncImage-x1rPTaM"

    invoke-static {p1, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    sget-object v2, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    sget-object v2, Landroidx/compose/ui/graphics/drawscope/DrawScope;->a0:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v6, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->c:I

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {p4, v2}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lcoil3/SingletonImageLoader;->a(Landroid/content/Context;)Lcoil3/ImageLoader;

    move-result-object v2

    shl-int/lit8 v3, p5, 0x3

    and-int/lit16 v3, v3, 0x1c00

    const v5, 0x248030

    or-int/2addr v3, v5

    if-eqz v0, :cond_1

    const-string v5, "AsyncImage-nc27qi8"

    invoke-static {v0, v5}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_1
    shr-int/lit8 v3, v3, 0x3

    move-object v5, v0

    new-instance v0, Lcoil3/compose/internal/AsyncImageState;

    sget-object v8, Lcoil3/compose/LocalAsyncImageModelEqualityDelegateKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {p4, v8}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcoil3/compose/AsyncImageModelEqualityDelegate;

    invoke-direct {v0, p0, v8, v2}, Lcoil3/compose/internal/AsyncImageState;-><init>(Ljava/lang/Object;Lcoil3/compose/AsyncImageModelEqualityDelegate;Lcoil3/ImageLoader;)V

    sget-object v2, Lcoil3/compose/internal/UtilsKt;->a:Landroidx/compose/ui/layout/MeasurePolicy;

    if-nez p2, :cond_2

    sget-object v1, Lcoil3/compose/AsyncImagePainter;->y:Lcoil3/compose/AsyncImagePainter$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcoil3/compose/AsyncImagePainter;->z:Lu5;

    move-object v2, v1

    goto :goto_1

    :cond_2
    new-instance v2, Lp11;

    const/16 v8, 0xe

    invoke-direct {v2, p2, v8}, Lp11;-><init>(Ljava/lang/Object;I)V

    :goto_1
    const/16 v1, 0x30

    and-int/lit16 v3, v3, 0x380

    or-int v8, v1, v3

    const/4 v9, 0x0

    const/4 v3, 0x0

    move-object v7, p4

    move-object v1, v5

    move-object v5, p3

    invoke-static/range {v0 .. v9}, Lcoil3/compose/AsyncImageKt;->a(Lcoil3/compose/internal/AsyncImageState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;ILandroidx/compose/runtime/Composer;II)V

    return-void
.end method
