.class public final synthetic Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;

.field public final synthetic c:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/StandardTopBarConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/StandardTopBarConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/g;->b:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;

    iput-object p2, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/g;->c:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/StandardTopBarConfig;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    and-int/2addr p1, v0

    invoke-interface {v5, p1, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object p1, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVStandardTopBarKt$WhenMappings;->b:[I

    iget-object p2, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/g;->b:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, p1, v3

    if-eq v3, v0, :cond_2

    if-ne v3, v2, :cond_1

    const v3, -0x287c019d

    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->q:I

    invoke-static {v3, v5, v1}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v1

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_1

    :cond_1
    const p0, -0x287c1805

    invoke-static {v5, p0}, Lo60;->v(Landroidx/compose/runtime/Composer;I)Lkotlin/NoWhenBranchMatchedException;

    move-result-object p0

    throw p0

    :cond_2
    const v3, -0x287c0ff7

    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->H:I

    invoke-static {v3, v5, v1}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v1

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v0, :cond_4

    if-ne p1, v2, :cond_3

    const p1, -0x287bd8ec

    const p2, 0x7f140319

    :goto_2
    invoke-static {v5, p1, p2, v5}, Lo60;->k(Landroidx/compose/runtime/Composer;IILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_3
    const p0, -0x287becaa

    invoke-static {v5, p0}, Lo60;->v(Landroidx/compose/runtime/Composer;I)Lkotlin/NoWhenBranchMatchedException;

    move-result-object p0

    throw p0

    :cond_4
    const p1, -0x287be48d

    const p2, 0x7f140304

    goto :goto_2

    :goto_3
    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/g;->c:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/StandardTopBarConfig;

    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/StandardTopBarConfig;->b:J

    const/16 v6, 0x8

    const/4 v7, 0x4

    const/4 v2, 0x0

    move-object v0, v1

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    goto :goto_4

    :cond_5
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->D()V

    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
