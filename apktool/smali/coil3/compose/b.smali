.class public final synthetic Lcoil3/compose/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lcoil3/compose/ConstraintsSizeResolver;

.field public final synthetic c:Lkotlin/jvm/functions/Function3;

.field public final synthetic d:Lcoil3/compose/AsyncImagePainter;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Landroidx/compose/ui/Alignment;

.field public final synthetic g:Landroidx/compose/ui/layout/ContentScale;


# direct methods
.method public synthetic constructor <init>(Lcoil3/compose/ConstraintsSizeResolver;Lkotlin/jvm/functions/Function3;Lcoil3/compose/AsyncImagePainter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil3/compose/b;->b:Lcoil3/compose/ConstraintsSizeResolver;

    iput-object p2, p0, Lcoil3/compose/b;->c:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Lcoil3/compose/b;->d:Lcoil3/compose/AsyncImagePainter;

    iput-object p4, p0, Lcoil3/compose/b;->e:Ljava/lang/String;

    iput-object p5, p0, Lcoil3/compose/b;->f:Landroidx/compose/ui/Alignment;

    iput-object p6, p0, Lcoil3/compose/b;->g:Landroidx/compose/ui/layout/ContentScale;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit8 p3, p1, 0x6

    if-nez p3, :cond_1

    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x4

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    :goto_0
    or-int/2addr p1, p3

    :cond_1
    and-int/lit8 p3, p1, 0x13

    const/16 v0, 0x12

    const/4 v9, 0x0

    const/4 v2, 0x1

    if-eq p3, v0, :cond_2

    move p3, v2

    goto :goto_1

    :cond_2
    move p3, v9

    :goto_1
    and-int/2addr p1, v2

    invoke-interface {p2, p1, p3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->c()J

    move-result-wide v2

    iget-object p1, p0, Lcoil3/compose/b;->b:Lcoil3/compose/ConstraintsSizeResolver;

    invoke-virtual {p1, v2, v3}, Lcoil3/compose/ConstraintsSizeResolver;->v(J)V

    new-instance v0, Lcoil3/compose/RealSubcomposeAsyncImageScope;

    iget-object v2, p0, Lcoil3/compose/b;->d:Lcoil3/compose/AsyncImagePainter;

    iget-object v3, p0, Lcoil3/compose/b;->e:Ljava/lang/String;

    iget-object v4, p0, Lcoil3/compose/b;->f:Landroidx/compose/ui/Alignment;

    iget-object v5, p0, Lcoil3/compose/b;->g:Landroidx/compose/ui/layout/ContentScale;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcoil3/compose/RealSubcomposeAsyncImageScope;-><init>(Landroidx/compose/foundation/layout/BoxScope;Lcoil3/compose/AsyncImagePainter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Z)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcoil3/compose/b;->c:Lkotlin/jvm/functions/Function3;

    invoke-interface {p0, v0, p2, p1}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
