.class public abstract Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpFindAStoreButtonKt;
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
.method public static final a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;)V
    .locals 12

    if-eqz p2, :cond_0

    const-string v0, "PdpFindAStoreButton"

    invoke-static {p2, v0}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    :cond_0
    move-object v3, p2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p2, 0x6fec01b6

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    or-int/2addr p1, p0

    invoke-virtual {v2, p3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/16 p2, 0x20

    goto :goto_1

    :cond_2
    const/16 p2, 0x10

    :goto_1
    or-int/2addr p1, p2

    and-int/lit8 p2, p1, 0x13

    const/16 v0, 0x12

    if-eq p2, v0, :cond_3

    const/4 p2, 0x1

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    and-int/lit8 v0, p1, 0x1

    invoke-virtual {v2, v0, p2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object p2

    iget-object v4, p2, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->e:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object p2

    iget p2, p2, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->g:I

    const v0, 0x7f141040

    invoke-static {v2, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    and-int/lit8 p2, p1, 0xe

    shl-int/lit8 p1, p1, 0x18

    const/high16 v0, 0x70000000

    and-int/2addr p1, v0

    or-int v0, p2, p1

    const/16 v1, 0x1f0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, p3

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    goto :goto_3

    :cond_4
    move-object v8, p3

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_3
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance p2, Ls;

    const/4 p3, 0x3

    invoke-direct {p2, v3, v8, p0, p3}, Ls;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;II)V

    iput-object p2, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_5
    return-void
.end method
