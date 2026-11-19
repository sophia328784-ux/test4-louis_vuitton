.class public abstract Lcom/vuitton/android/presentation/screen/authentication/common/components/NativeAuthenticationTitleKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;Ljava/util/List;ILandroidx/compose/runtime/Composer;I)V
    .locals 11

    if-eqz p0, :cond_0

    const-string v0, "HeaderTitle"

    invoke-static {p0, v0}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :cond_0
    move-object v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x354d3e20

    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    or-int/2addr p0, p4

    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    const/16 p3, 0x20

    goto :goto_1

    :cond_2
    const/16 p3, 0x10

    :goto_1
    or-int/2addr p0, p3

    invoke-virtual {v4, p2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result p3

    if-eqz p3, :cond_3

    const/16 p3, 0x100

    goto :goto_2

    :cond_3
    const/16 p3, 0x80

    :goto_2
    or-int/2addr p0, p3

    and-int/lit16 p3, p0, 0x93

    const/16 v1, 0x92

    if-eq p3, v1, :cond_4

    const/4 p3, 0x1

    goto :goto_3

    :cond_4
    const/4 p3, 0x0

    :goto_3
    and-int/lit8 v1, p0, 0x1

    invoke-virtual {v4, v1, p3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result p3

    if-eqz p3, :cond_5

    sget-object p3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object p3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, p3}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p3

    move-object v10, p3

    check-cast v10, Landroid/content/Context;

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object p3

    iget-object v7, p3, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->l:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v4}, Landroidx/compose/ui/text/TextMeasurerHelperKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/text/TextMeasurer;

    move-result-object v8

    new-instance v5, Lne0;

    move-object v6, p1

    move v9, p2

    invoke-direct/range {v5 .. v10}, Lne0;-><init>(Ljava/util/List;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextMeasurer;ILandroid/content/Context;)V

    const p2, 0x7fb2f876

    invoke-static {p2, v5, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v3

    and-int/lit8 p0, p0, 0xe

    or-int/lit16 v5, p0, 0xc00

    const/4 v6, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    goto :goto_4

    :cond_5
    move v9, p2

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_4
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_6

    new-instance p2, Lx70;

    invoke-direct {p2, v0, p1, v9, p4}, Lx70;-><init>(Landroidx/compose/ui/Modifier;Ljava/util/List;II)V

    iput-object p2, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method
