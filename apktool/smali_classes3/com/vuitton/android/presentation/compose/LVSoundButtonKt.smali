.class public abstract Lcom/vuitton/android/presentation/compose/LVSoundButtonKt;
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
.method public static final a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Z)V
    .locals 9

    if-eqz p2, :cond_0

    const-string v0, "LVSoundButton"

    invoke-static {p2, v0}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    :cond_0
    move-object v1, p2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p2, 0xf5b9412

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    or-int/2addr p1, p0

    invoke-virtual {v6, p4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result p2

    if-eqz p2, :cond_2

    const/16 p2, 0x20

    goto :goto_1

    :cond_2
    const/16 p2, 0x10

    :goto_1
    or-int/2addr p1, p2

    invoke-virtual {v6, p3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0x100

    goto :goto_2

    :cond_3
    const/16 p2, 0x80

    :goto_2
    or-int/2addr p1, p2

    and-int/lit16 p2, p1, 0x93

    const/16 v0, 0x92

    const/4 v2, 0x0

    if-eq p2, v0, :cond_4

    const/4 p2, 0x1

    goto :goto_3

    :cond_4
    move p2, v2

    :goto_3
    and-int/lit8 v0, p1, 0x1

    invoke-virtual {v6, v0, p2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p2, Lp4;

    const/4 v0, 0x6

    invoke-direct {p2, p4, v0, v2}, Lp4;-><init>(ZIB)V

    const v0, -0x2f543ecc

    invoke-static {v0, p2, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    shr-int/lit8 p2, p1, 0x6

    and-int/lit8 p2, p2, 0xe

    const/high16 v0, 0x180000

    or-int/2addr p2, v0

    shl-int/lit8 p1, p1, 0x3

    and-int/lit8 p1, p1, 0x70

    or-int v7, p2, p1

    const/16 v8, 0x3c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p3

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/IconButtonKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    goto :goto_4

    :cond_5
    move-object v0, p3

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_4
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_6

    move-object v4, v0

    new-instance v0, Lv70;

    const/4 v5, 0x0

    move v2, p0

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lv70;-><init>(Landroidx/compose/ui/Modifier;IZLkotlin/jvm/functions/Function0;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method
