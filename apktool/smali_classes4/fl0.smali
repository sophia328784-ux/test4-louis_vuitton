.class public final synthetic Lfl0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;


# direct methods
.method public synthetic constructor <init>(ILcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lfl0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lfl0;->c:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;)V
    .locals 1

    .line 9
    const/4 v0, 0x1

    iput v0, p0, Lfl0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfl0;->c:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lfl0;->b:I

    const/4 v1, 0x1

    iget-object p0, p0, Lfl0;->c:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;

    packed-switch v0, :pswitch_data_0

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0x3

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eq p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    and-int/2addr p1, v1

    invoke-interface {v7, p1, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string p2, "ThematicPlpToolBox___WMjBM$lambda$2$1$2"

    invoke-direct {p1, p2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object p2

    iget p2, p2, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->m:F

    invoke-static {p1, p2}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object p1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Reduced;->b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Reduced;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p0, 0x7625d060

    invoke-interface {v7, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object p0

    iget p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->C:I

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Full;->b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Full;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7625dc42

    invoke-interface {v7, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object p0

    iget p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->D:I

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    :goto_1
    invoke-static {p0, v7, v2}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v2

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v5, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    const/16 v8, 0x38

    const/4 v9, 0x0

    const/4 v3, 0x0

    invoke-static/range {v2 .. v9}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    goto :goto_2

    :cond_2
    const p0, 0x7625c447

    invoke-static {v7, p0}, Lo60;->v(Landroidx/compose/runtime/Composer;I)Lkotlin/NoWhenBranchMatchedException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPSkeletonKt;->c(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
