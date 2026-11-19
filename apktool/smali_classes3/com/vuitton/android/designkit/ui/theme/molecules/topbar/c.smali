.class public final synthetic Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lkotlin/jvm/functions/Function0;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/c;->b:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/c;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/c;->d:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    const-string p2, "LVMediumTopBar$lambda$15$0$2"

    iget-object v0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/c;->c:Landroidx/compose/ui/Modifier;

    invoke-static {v0, p2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/2addr p1, v2

    invoke-interface {v6, p1, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/c;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_1

    const p1, 0x7b52b48f

    invoke-interface {v6, p1}, Landroidx/compose/runtime/Composer;->L(I)V

    const-string p1, "header_backArrow_button"

    invoke-static {p2, p1}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    new-instance p1, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/d;

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/c;->d:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;

    invoke-direct {p1, p0}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/d;-><init>(Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;)V

    const p0, 0x68b1e746    # 6.721001E24f

    invoke-static {p0, p1, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    const/high16 v7, 0x180000

    const/16 v8, 0x3c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/IconButtonKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_1

    :cond_1
    const p0, 0x7b5aa255    # 1.1352132E36f

    invoke-interface {v6, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_1

    :cond_2
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
