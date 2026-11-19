.class public abstract Landroidx/compose/ui/draw/BlurKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "ui"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;FFLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;
    .locals 8

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    sget-object v1, Landroidx/compose/ui/graphics/TileMode;->a:Landroidx/compose/ui/graphics/TileMode$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    move v5, v0

    move v7, v1

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/compose/ui/graphics/TileMode;->a:Landroidx/compose/ui/graphics/TileMode$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/graphics/TileMode;->d:I

    move v7, v0

    move v5, v1

    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/compose/ui/unit/Dp;->a(FF)I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {p2, v0}, Landroidx/compose/ui/unit/Dp;->a(FF)I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz v7, :cond_3

    :cond_2
    new-instance v2, Landroidx/compose/ui/draw/BlurKt$blur$1;

    move v3, p1

    move v4, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/draw/BlurKt$blur$1;-><init>(FFILandroidx/compose/ui/graphics/Shape;Z)V

    invoke-static {p0, v2}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :cond_3
    return-object p0
.end method
