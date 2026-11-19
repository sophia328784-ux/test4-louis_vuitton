.class public abstract Lcom/vuitton/android/designkit/ui/theme/ShadowKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "system"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x41200000    # 10.0f

    sput v0, Lcom/vuitton/android/designkit/ui/theme/ShadowKt;->a:F

    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;JFFFFLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 13

    move-object/from16 v0, p7

    move/from16 v1, p8

    if-eqz p0, :cond_0

    const-string v2, "drawColoredShadow-BsmKPOM"

    invoke-static {p0, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :cond_0
    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit16 v2, v1, 0x380

    xor-int/lit16 v2, v2, 0x180

    const/16 v3, 0x100

    const/4 v4, 0x0

    const/4 v5, 0x1

    move/from16 v7, p3

    if-le v2, v3, :cond_1

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->c(F)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    and-int/lit16 v2, v1, 0x180

    if-ne v2, v3, :cond_3

    :cond_2
    move v2, v5

    goto :goto_0

    :cond_3
    move v2, v4

    :goto_0
    const/high16 v3, 0x70000

    and-int/2addr v3, v1

    const/high16 v6, 0x30000

    xor-int/2addr v3, v6

    const/high16 v8, 0x20000

    move/from16 v9, p6

    if-le v3, v8, :cond_4

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->c(F)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    and-int v3, v1, v6

    if-ne v3, v8, :cond_6

    :cond_5
    move v3, v5

    goto :goto_1

    :cond_6
    move v3, v4

    :goto_1
    or-int/2addr v2, v3

    and-int/lit16 v3, v1, 0x1c00

    xor-int/lit16 v3, v3, 0xc00

    const/16 v6, 0x800

    move/from16 v10, p4

    if-le v3, v6, :cond_7

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->c(F)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    and-int/lit16 v1, v1, 0xc00

    if-ne v1, v6, :cond_9

    :cond_8
    move v4, v5

    :cond_9
    or-int v1, v2, v4

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_a

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v1, :cond_b

    :cond_a
    new-instance v6, Lbw0;

    move-wide v11, p1

    move/from16 v8, p5

    invoke-direct/range {v6 .. v12}, Lbw0;-><init>(FFFFJ)V

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v2, v6

    :cond_b
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v2}, Landroidx/compose/ui/draw/DrawModifierKt;->b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Landroidx/compose/ui/Modifier;FLandroidx/compose/runtime/Composer;II)Landroidx/compose/ui/Modifier;
    .locals 9

    if-eqz p0, :cond_0

    const-string v0, "shadowBottom-6a0pyJM"

    invoke-static {p0, v0}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :cond_0
    move-object v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 p0, p4, 0x2

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    :cond_1
    move v4, p1

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-wide v1, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->a:J

    sget-object p0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    and-int/lit8 p0, p3, 0xe

    const p1, 0x1b6030

    or-int v8, p0, p1

    const v3, 0x3d23d70a    # 0.04f

    sget v5, Lcom/vuitton/android/designkit/ui/theme/ShadowKt;->a:F

    const/high16 v6, 0x41c00000    # 24.0f

    move-object v7, p2

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/designkit/ui/theme/ShadowKt;->a(Landroidx/compose/ui/Modifier;JFFFFLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)Landroidx/compose/ui/Modifier;
    .locals 9

    if-eqz p0, :cond_0

    const-string v0, "shadowTop-6a0pyJM"

    invoke-static {p0, v0}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :cond_0
    move-object v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 p0, p3, 0x2

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    :goto_0
    move v4, p0

    goto :goto_1

    :cond_1
    const/high16 p0, 0x41000000    # 8.0f

    goto :goto_0

    :goto_1
    sget-object p0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-wide v1, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->a:J

    sget-object p0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    and-int/lit8 p0, p2, 0xe

    const p3, 0x186030

    or-int/2addr p0, p3

    shl-int/lit8 p2, p2, 0x3

    and-int/lit16 p2, p2, 0x1c00

    or-int v8, p0, p2

    const v3, 0x3d75c28f    # 0.06f

    sget v5, Lcom/vuitton/android/designkit/ui/theme/ShadowKt;->a:F

    const/high16 v6, -0x3e800000    # -16.0f

    move-object v7, p1

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/designkit/ui/theme/ShadowKt;->a(Landroidx/compose/ui/Modifier;JFFFFLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
