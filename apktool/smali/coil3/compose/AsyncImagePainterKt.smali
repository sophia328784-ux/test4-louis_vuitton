.class public abstract Lcoil3/compose/AsyncImagePainterKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "io.coil-kt.coil3:coil-compose-core"
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
.method public static final a(Lcoil3/compose/internal/AsyncImageState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;ILandroidx/compose/runtime/Composer;)Lcoil3/compose/AsyncImagePainter;
    .locals 3

    const v0, -0x4a168af5

    invoke-interface {p5, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v0, "rememberAsyncImagePainter"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcoil3/compose/internal/AsyncImageState;->a:Ljava/lang/Object;

    invoke-static {v0, p5}, Lcoil3/compose/internal/UtilsKt;->d(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Lcoil3/request/ImageRequest;

    move-result-object v0

    invoke-static {v0}, Lcoil3/compose/internal/UtilsKt;->h(Lcoil3/request/ImageRequest;)V

    new-instance v1, Lcoil3/compose/AsyncImagePainter$Input;

    iget-object v2, p0, Lcoil3/compose/internal/AsyncImageState;->c:Lcoil3/ImageLoader;

    iget-object p0, p0, Lcoil3/compose/internal/AsyncImageState;->b:Lcoil3/compose/AsyncImageModelEqualityDelegate;

    invoke-direct {v1, v2, v0, p0}, Lcoil3/compose/AsyncImagePainter$Input;-><init>(Lcoil3/ImageLoader;Lcoil3/request/ImageRequest;Lcoil3/compose/AsyncImageModelEqualityDelegate;)V

    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne p0, v0, :cond_0

    new-instance p0, Lcoil3/compose/AsyncImagePainter;

    invoke-direct {p0, v1}, Lcoil3/compose/AsyncImagePainter;-><init>(Lcoil3/compose/AsyncImagePainter$Input;)V

    invoke-interface {p5, p0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_0
    check-cast p0, Lcoil3/compose/AsyncImagePainter;

    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_1

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v0, p5}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-interface {p5, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    iput-object v2, p0, Lcoil3/compose/AsyncImagePainter;->n:Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, p0, Lcoil3/compose/AsyncImagePainter;->o:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcoil3/compose/AsyncImagePainter;->p:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcoil3/compose/AsyncImagePainter;->q:Landroidx/compose/ui/layout/ContentScale;

    iput p4, p0, Lcoil3/compose/AsyncImagePainter;->r:I

    invoke-static {p5}, Lcoil3/compose/internal/UtilsKt;->b(Landroidx/compose/runtime/Composer;)Lcoil3/compose/AsyncImagePreviewHandler;

    move-result-object p1

    iput-object p1, p0, Lcoil3/compose/AsyncImagePainter;->s:Lcoil3/compose/AsyncImagePreviewHandler;

    invoke-virtual {p0, v1}, Lcoil3/compose/AsyncImagePainter;->m(Lcoil3/compose/AsyncImagePainter$Input;)V

    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->F()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method
