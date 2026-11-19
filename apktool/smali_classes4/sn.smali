.class public final synthetic Lsn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function8;


# virtual methods
.method public final q(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/Composer;Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Landroidx/compose/ui/Modifier;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move-object v2, p4

    check-cast v2, Landroidx/compose/foundation/contextmenu/ContextMenuColors;

    move-object v4, p5

    check-cast v4, Lkotlin/jvm/functions/Function3;

    move-object v5, p6

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object p2, Landroidx/compose/foundation/contextmenu/ComposableSingletons$ContextMenuUiKt;->a:Landroidx/compose/foundation/contextmenu/ComposableSingletons$ContextMenuUiKt;

    if-eqz p1, :cond_0

    const-string p2, "lambda__1571120048$lambda$0"

    invoke-static {p1, p2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    :cond_0
    move-object v3, p1

    and-int/lit8 p1, p0, 0x6

    if-nez p1, :cond_2

    invoke-interface {p7, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    or-int/2addr p1, p0

    goto :goto_1

    :cond_2
    move p1, p0

    :goto_1
    and-int/lit8 p2, p0, 0x30

    if-nez p2, :cond_4

    invoke-interface {p7, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0x20

    goto :goto_2

    :cond_3
    const/16 p2, 0x10

    :goto_2
    or-int/2addr p1, p2

    :cond_4
    and-int/lit16 p2, p0, 0x180

    if-nez p2, :cond_6

    invoke-interface {p7, v1}, Landroidx/compose/runtime/Composer;->b(Z)Z

    move-result p2

    if-eqz p2, :cond_5

    const/16 p2, 0x100

    goto :goto_3

    :cond_5
    const/16 p2, 0x80

    :goto_3
    or-int/2addr p1, p2

    :cond_6
    and-int/lit16 p2, p0, 0xc00

    if-nez p2, :cond_8

    invoke-interface {p7, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/16 p2, 0x800

    goto :goto_4

    :cond_7
    const/16 p2, 0x400

    :goto_4
    or-int/2addr p1, p2

    :cond_8
    and-int/lit16 p2, p0, 0x6000

    if-nez p2, :cond_a

    invoke-interface {p7, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    const/16 p2, 0x4000

    goto :goto_5

    :cond_9
    const/16 p2, 0x2000

    :goto_5
    or-int/2addr p1, p2

    :cond_a
    const/high16 p2, 0x30000

    and-int/2addr p0, p2

    if-nez p0, :cond_c

    invoke-interface {p7, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/high16 p0, 0x20000

    goto :goto_6

    :cond_b
    const/high16 p0, 0x10000

    :goto_6
    or-int/2addr p1, p0

    :cond_c
    const p0, 0x92493

    and-int/2addr p0, p1

    const p2, 0x92492

    if-eq p0, p2, :cond_d

    const/4 p0, 0x1

    goto :goto_7

    :cond_d
    const/4 p0, 0x0

    :goto_7
    and-int/lit8 p2, p1, 0x1

    invoke-interface {p7, p2, p0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p0

    if-eqz p0, :cond_e

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    shr-int/lit8 p0, p1, 0x3

    and-int/lit16 p0, p0, 0x3fe

    shl-int/lit8 p2, p1, 0x9

    and-int/lit16 p2, p2, 0x1c00

    or-int/2addr p0, p2

    const p2, 0xe000

    and-int/2addr p2, p1

    or-int/2addr p0, p2

    const/high16 p2, 0x70000

    and-int/2addr p1, p2

    or-int v7, p0, p1

    move-object v6, p7

    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/contextmenu/ContextMenuUiKt;->c(Ljava/lang/String;ZLandroidx/compose/foundation/contextmenu/ContextMenuColors;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_8

    :cond_e
    invoke-interface {p7}, Landroidx/compose/runtime/Composer;->D()V

    :goto_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
