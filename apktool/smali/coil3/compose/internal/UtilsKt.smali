.class public abstract Lcoil3/compose/internal/UtilsKt;
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


# static fields
.field public static final a:Landroidx/compose/ui/layout/MeasurePolicy;

.field public static final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {v0, v0, v0, v0, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    move-result-wide v0

    sput-wide v0, Lcoil3/compose/internal/UtilsKt;->b:J

    return-void
.end method

.method public static final a()Landroidx/compose/ui/layout/MeasurePolicy;
    .locals 1

    sget-object v0, Lcoil3/compose/internal/UtilsKt$UseMinConstraintsMeasurePolicy$1;->a:Lcoil3/compose/internal/UtilsKt$UseMinConstraintsMeasurePolicy$1;

    return-object v0
.end method

.method public static final b(Landroidx/compose/runtime/Composer;)Lcoil3/compose/AsyncImagePreviewHandler;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/InspectionModeKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7857f7a4

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v0, Lcoil3/compose/LocalAsyncImagePreviewHandlerKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoil3/compose/AsyncImagePreviewHandler;

    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->F()V

    return-object v0

    :cond_0
    const v0, 0x7858d845

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->F()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final c(Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/Composer;)Lcoil3/size/SizeResolver;
    .locals 2

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/layout/ContentScale$Companion;->g:Landroidx/compose/ui/layout/FixedScale;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->b(Z)Z

    move-result v0

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_0

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v0, :cond_2

    :cond_0
    if-eqz p0, :cond_1

    sget-object p0, Lcoil3/size/SizeResolver;->a:Lcoil3/size/RealSizeResolver;

    :goto_0
    move-object v1, p0

    goto :goto_1

    :cond_1
    new-instance p0, Lcoil3/compose/ConstraintsSizeResolver;

    invoke-direct {p0}, Lcoil3/compose/ConstraintsSizeResolver;-><init>()V

    goto :goto_0

    :goto_1
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v1, Lcoil3/size/SizeResolver;

    return-object v1
.end method

.method public static final d(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Lcoil3/request/ImageRequest;
    .locals 3

    const v0, 0x4ea817fa

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    instance-of v0, p0, Lcoil3/request/ImageRequest;

    if-eqz v0, :cond_0

    const v0, 0x5b3f4fec

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    check-cast p0, Lcoil3/request/ImageRequest;

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->F()V

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->F()V

    return-object p0

    :cond_0
    const v0, 0x5b3fe93a

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_1

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v1, :cond_2

    :cond_1
    new-instance v1, Lcoil3/request/ImageRequest$Builder;

    invoke-direct {v1, v0}, Lcoil3/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    iput-object p0, v1, Lcoil3/request/ImageRequest$Builder;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Lcoil3/request/ImageRequest$Builder;->a()Lcoil3/request/ImageRequest;

    move-result-object v2

    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v2, Lcoil3/request/ImageRequest;

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->F()V

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->F()V

    return-object v2
.end method

.method public static final e(Ljava/lang/Object;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/Composer;I)Lcoil3/request/ImageRequest;
    .locals 3

    const p3, -0x13a0feae

    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object p3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    instance-of p3, p0, Lcoil3/request/ImageRequest;

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz p3, :cond_3

    const p3, -0x3c233d08

    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->L(I)V

    move-object p3, p0

    check-cast p3, Lcoil3/request/ImageRequest;

    iget-object v1, p3, Lcoil3/request/ImageRequest;->y:Lcoil3/request/ImageRequest$Defined;

    iget-object v1, v1, Lcoil3/request/ImageRequest$Defined;->k:Lcoil3/size/SizeResolver;

    if-eqz v1, :cond_0

    const p0, -0x3c22a094

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->F()V

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->F()V

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->F()V

    return-object p3

    :cond_0
    const v1, -0x3c21e466

    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {p1, p2}, Lcoil3/compose/internal/UtilsKt;->c(Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/Composer;)Lcoil3/size/SizeResolver;

    move-result-object p1

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr p0, v1

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez p0, :cond_1

    if-ne v1, v0, :cond_2

    :cond_1
    invoke-static {p3}, Lcoil3/request/ImageRequest;->a(Lcoil3/request/ImageRequest;)Lcoil3/request/ImageRequest$Builder;

    move-result-object p0

    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->v:Lcoil3/size/SizeResolver;

    invoke-virtual {p0}, Lcoil3/request/ImageRequest$Builder;->a()Lcoil3/request/ImageRequest;

    move-result-object v1

    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v1, Lcoil3/request/ImageRequest;

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->F()V

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->F()V

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->F()V

    return-object v1

    :cond_3
    const p3, -0x3c1df3ee

    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object p3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-static {p1, p2}, Lcoil3/compose/internal/UtilsKt;->c(Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/Composer;)Lcoil3/size/SizeResolver;

    move-result-object p1

    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_4

    if-ne v2, v0, :cond_5

    :cond_4
    new-instance v0, Lcoil3/request/ImageRequest$Builder;

    invoke-direct {v0, p3}, Lcoil3/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    iput-object p0, v0, Lcoil3/request/ImageRequest$Builder;->c:Ljava/lang/Object;

    iput-object p1, v0, Lcoil3/request/ImageRequest$Builder;->v:Lcoil3/size/SizeResolver;

    invoke-virtual {v0}, Lcoil3/request/ImageRequest$Builder;->a()Lcoil3/request/ImageRequest;

    move-result-object v2

    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v2, Lcoil3/request/ImageRequest;

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->F()V

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->F()V

    return-object v2
.end method

.method public static final f(J)J
    .locals 6

    const/16 v0, 0x20

    shr-long v1, p0, v0

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->c(F)I

    move-result v1

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Lkotlin/math/MathKt;->c(F)I

    move-result p0

    int-to-long v4, v1

    shl-long v0, v4, v0

    int-to-long p0, p0

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    sget-object v0, Landroidx/compose/ui/unit/IntSize;->b:Landroidx/compose/ui/unit/IntSize$Companion;

    return-wide p0
.end method

.method public static g(Ljava/lang/String;)V
    .locals 4

    const-string v0, "If you wish to display this "

    const-string v1, ", use androidx.compose.foundation.Image."

    invoke-static {v0, p0, v1}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported type: "

    const-string v3, ". "

    invoke-static {v2, p0, v3, v0}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final h(Lcoil3/request/ImageRequest;)V
    .locals 3

    iget-object v0, p0, Lcoil3/request/ImageRequest;->b:Ljava/lang/Object;

    instance-of v1, v0, Lcoil3/request/ImageRequest$Builder;

    if-nez v1, :cond_5

    instance-of v1, v0, Landroidx/compose/ui/graphics/ImageBitmap;

    const/4 v2, 0x0

    if-nez v1, :cond_4

    instance-of v1, v0, Landroidx/compose/ui/graphics/vector/ImageVector;

    if-nez v1, :cond_3

    instance-of v0, v0, Landroidx/compose/ui/graphics/painter/Painter;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcoil3/request/ImageRequest;->c:Lcoil3/target/Target;

    if-nez v0, :cond_1

    sget-object v0, Lcoil3/request/ImageRequests_androidKt;->e:Lcoil3/Extras$Key;

    invoke-static {p0, v0}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/Lifecycle;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "request.lifecycle must be null."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "request.target must be null."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "Painter"

    invoke-static {p0}, Lcoil3/compose/internal/UtilsKt;->g(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-string p0, "ImageVector"

    invoke-static {p0}, Lcoil3/compose/internal/UtilsKt;->g(Ljava/lang/String;)V

    throw v2

    :cond_4
    const-string p0, "ImageBitmap"

    invoke-static {p0}, Lcoil3/compose/internal/UtilsKt;->g(Ljava/lang/String;)V

    throw v2

    :cond_5
    const-string p0, "Unsupported type: ImageRequest.Builder. Did you forget to call ImageRequest.Builder.build()?"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method
