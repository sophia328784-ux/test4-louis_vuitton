.class public abstract Lcom/vuitton/android/presentation/screen/cart/components/sections/NativeCartReinsuranceKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Lkotlinx/collections/immutable/ImmutableList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    if-eqz p0, :cond_0

    const-string v0, "NativeCartReinsurance"

    invoke-static {p0, v0}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :cond_0
    move-object v1, p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, -0x29e56090

    invoke-interface {p4, p0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    or-int/2addr p0, p5

    invoke-virtual {v6, p1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    const/16 p4, 0x20

    goto :goto_1

    :cond_2
    const/16 p4, 0x10

    :goto_1
    or-int/2addr p0, p4

    invoke-virtual {v6, p2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result p4

    const/16 v0, 0x100

    if-eqz p4, :cond_3

    move p4, v0

    goto :goto_2

    :cond_3
    const/16 p4, 0x80

    :goto_2
    or-int/2addr p0, p4

    invoke-virtual {v6, p3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result p4

    const/16 v2, 0x800

    if-eqz p4, :cond_4

    move p4, v2

    goto :goto_3

    :cond_4
    const/16 p4, 0x400

    :goto_3
    or-int/2addr p0, p4

    and-int/lit16 p4, p0, 0x493

    const/16 v3, 0x492

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p4, v3, :cond_5

    move p4, v5

    goto :goto_4

    :cond_5
    move p4, v4

    :goto_4
    and-int/lit8 v3, p0, 0x1

    invoke-virtual {v6, v3, p4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result p4

    if-eqz p4, :cond_a

    sget-object p4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object p4

    iget-object p4, p4, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v7, p4, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->b:J

    sget-object p4, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v1, v7, v8, p4}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object p4

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->I:I

    and-int/lit16 v7, p0, 0x380

    if-ne v7, v0, :cond_6

    move v0, v5

    goto :goto_5

    :cond_6
    move v0, v4

    :goto_5
    and-int/lit16 v7, p0, 0x1c00

    if-ne v7, v2, :cond_7

    move v4, v5

    :cond_7
    or-int/2addr v0, v4

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_8

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v0, :cond_9

    :cond_8
    new-instance v2, Lk60;

    const/16 v0, 0x15

    invoke-direct {v2, p2, p3, v0}, Lk60;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function1;

    and-int/lit8 v7, p0, 0x70

    const/4 v8, 0x0

    move-object v2, p4

    move v4, v3

    move-object v3, p1

    invoke-static/range {v2 .. v8}, Lcom/vuitton/android/presentation/screen/reinsurance/components/ReinsuranceListKt;->b(Landroidx/compose/ui/Modifier;Lkotlinx/collections/immutable/ImmutableList;ILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object v2, v3

    goto :goto_6

    :cond_a
    move-object v2, p1

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_6
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_b

    new-instance v0, Luv;

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Luv;-><init>(Landroidx/compose/ui/Modifier;Lkotlinx/collections/immutable/ImmutableList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;I)V

    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method
