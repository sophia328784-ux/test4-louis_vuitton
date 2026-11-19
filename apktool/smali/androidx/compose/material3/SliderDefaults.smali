.class public final Landroidx/compose/material3/SliderDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/compose/material3/SliderDefaults;",
        "",
        "material3"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Landroidx/compose/material3/SliderDefaults;

.field public static final b:F

.field public static final c:F

.field public static final d:Landroidx/compose/ui/graphics/AndroidPath;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/SliderDefaults;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/material3/SliderDefaults;->a:Landroidx/compose/material3/SliderDefaults;

    sget v0, Landroidx/compose/material3/tokens/SliderTokens;->o:F

    sput v0, Landroidx/compose/material3/SliderDefaults;->b:F

    sput v0, Landroidx/compose/material3/SliderDefaults;->c:F

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->a()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/SliderDefaults;->d:Landroidx/compose/ui/graphics/AndroidPath;

    return-void
.end method

.method public static d(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/SliderColors;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {p0}, Landroidx/compose/material3/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/material3/SliderDefaults;->f(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/SliderColors;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/foundation/gestures/Orientation;JJJFF)V
    .locals 18

    move-wide/from16 v0, p2

    invoke-static/range {p8 .. p8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    invoke-static/range {p8 .. p8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v2, v6

    const-wide v7, 0xffffffffL

    and-long/2addr v4, v7

    or-long v10, v2, v4

    sget-object v2, Landroidx/compose/ui/geometry/CornerRadius;->a:Landroidx/compose/ui/geometry/CornerRadius$Companion;

    invoke-static/range {p9 .. p9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    invoke-static/range {p9 .. p9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v2, v6

    and-long/2addr v4, v7

    or-long v12, v2, v4

    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    move-object/from16 v3, p1

    if-ne v3, v2, :cond_0

    shr-long v2, p4, v6

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    and-long v3, p4, v7

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v4, v2

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v4, v6

    and-long/2addr v2, v7

    or-long/2addr v2, v4

    sget-object v4, Landroidx/compose/ui/geometry/Size;->b:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/RectKt;->a(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v9

    move-wide v14, v12

    move-wide v12, v10

    move-wide/from16 v16, v14

    invoke-static/range {v9 .. v17}, Landroidx/compose/ui/geometry/RoundRectKt;->a(Landroidx/compose/ui/geometry/Rect;JJJJ)Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-wide v14, v12

    shr-long v2, p4, v6

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    and-long v3, p4, v7

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v4, v2

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v4, v6

    and-long/2addr v2, v7

    or-long/2addr v2, v4

    sget-object v4, Landroidx/compose/ui/geometry/Size;->b:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/RectKt;->a(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v9

    move-wide/from16 v16, v10

    invoke-static/range {v9 .. v17}, Landroidx/compose/ui/geometry/RoundRectKt;->a(Landroidx/compose/ui/geometry/Rect;JJJJ)Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v0

    :goto_0
    sget-object v2, Landroidx/compose/material3/SliderDefaults;->d:Landroidx/compose/ui/graphics/AndroidPath;

    invoke-static {v2, v0}, Landroidx/compose/ui/graphics/Path;->r(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;)V

    const/4 v5, 0x0

    const/16 v6, 0x3c

    move-object/from16 v1, p0

    move-wide/from16 v3, p6

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->U(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;JLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/AndroidPath;->k()V

    return-void
.end method

.method public static f(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/SliderColors;
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/material3/ColorScheme;->f0:Landroidx/compose/material3/SliderColors;

    if-nez v1, :cond_0

    new-instance v2, Landroidx/compose/material3/SliderColors;

    sget-object v1, Landroidx/compose/material3/tokens/SliderTokens;->i:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v3

    sget-object v1, Landroidx/compose/material3/tokens/SliderTokens;->b:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v5

    sget-object v7, Landroidx/compose/material3/tokens/SliderTokens;->m:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v7}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v8

    invoke-static {v0, v7}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v10

    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v12

    sget-object v1, Landroidx/compose/material3/tokens/SliderTokens;->e:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v14

    sget v1, Landroidx/compose/material3/tokens/SliderTokens;->f:F

    invoke-static {v1, v14, v15}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v14

    move-object v7, v2

    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->p:J

    invoke-static {v14, v15, v1, v2}, Landroidx/compose/ui/graphics/ColorKt;->f(JJ)J

    move-result-wide v1

    sget-object v14, Landroidx/compose/material3/tokens/SliderTokens;->c:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-wide v15, v1

    invoke-static {v0, v14}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v1

    move-wide/from16 v17, v3

    sget v3, Landroidx/compose/material3/tokens/SliderTokens;->d:F

    invoke-static {v3, v1, v2}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v1

    sget-object v4, Landroidx/compose/material3/tokens/SliderTokens;->g:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-wide/from16 v19, v1

    invoke-static {v0, v4}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v1

    move-wide/from16 v21, v5

    sget v5, Landroidx/compose/material3/tokens/SliderTokens;->h:F

    invoke-static {v5, v1, v2}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v1

    move-wide/from16 v23, v1

    invoke-static {v0, v4}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v1

    invoke-static {v5, v1, v2}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v1

    invoke-static {v0, v14}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v3

    move-wide/from16 v5, v21

    move-wide/from16 v21, v3

    move-wide/from16 v3, v17

    move-wide/from16 v17, v23

    const/16 v23, 0x0

    move-wide/from16 v25, v1

    move-object v2, v7

    move-wide v7, v8

    move-wide v9, v10

    move-wide v11, v12

    move-wide v13, v15

    move-wide/from16 v15, v19

    move-wide/from16 v19, v25

    invoke-direct/range {v2 .. v23}, Landroidx/compose/material3/SliderColors;-><init>(JJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Landroidx/compose/material3/ColorScheme;->f0:Landroidx/compose/material3/SliderColors;

    return-object v2

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZJLandroidx/compose/runtime/Composer;I)V
    .locals 14

    move-object/from16 v0, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    const-string v1, "Thumb-9LiSoMs"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v3, -0x114d4821

    move-object/from16 v6, p7

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x4

    if-eqz v6, :cond_1

    move v6, v7

    goto :goto_0

    :cond_1
    const/4 v6, 0x2

    :goto_0
    or-int v6, p8, v6

    or-int/lit8 v6, v6, 0x30

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x100

    goto :goto_1

    :cond_2
    const/16 v8, 0x80

    :goto_1
    or-int/2addr v6, v8

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x800

    goto :goto_2

    :cond_3
    const/16 v8, 0x400

    :goto_2
    or-int/2addr v6, v8

    or-int/lit16 v6, v6, 0x6000

    const v8, 0x12493

    and-int/2addr v8, v6

    const v9, 0x12492

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v8, v9, :cond_4

    move v8, v11

    goto :goto_3

    :cond_4
    move v8, v10

    :goto_3
    and-int/lit8 v9, v6, 0x1

    invoke-virtual {v3, v9, v8}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v8, p8, 0x1

    if-eqz v8, :cond_6

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->D()V

    move-wide/from16 v8, p5

    goto :goto_5

    :cond_6
    :goto_4
    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-wide v8, Landroidx/compose/material3/SliderKt;->c:J

    :goto_5
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v12, :cond_7

    new-instance v1, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-direct {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v1, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    and-int/lit8 v6, v6, 0xe

    if-ne v6, v7, :cond_8

    move v10, v11

    :cond_8
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v10, :cond_9

    if-ne v6, v12, :cond_a

    :cond_9
    new-instance v6, Landroidx/compose/material3/SliderDefaults$Thumb$1$1;

    const/4 v7, 0x0

    invoke-direct {v6, p1, v1, v7}, Landroidx/compose/material3/SliderDefaults$Thumb$1$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v3, p1, v6}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/DpSize;->b(J)F

    move-result v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v1, v6

    sget-object v6, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/DpSize;->a(J)F

    move-result v6

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v10, v1

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v6, v1

    const/16 v1, 0x20

    shl-long/2addr v10, v1

    const-wide v12, 0xffffffffL

    and-long/2addr v6, v12

    or-long/2addr v6, v10

    goto :goto_6

    :cond_b
    move-wide v6, v8

    :goto_6
    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->a:Landroidx/compose/foundation/layout/FillElement;

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/DpSize;->b(J)F

    move-result v1

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/DpSize;->a(J)F

    move-result v6

    invoke-static {v0, v1, v6}, Landroidx/compose/foundation/layout/SizeKt;->p(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/compose/foundation/HoverableKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-eqz v5, :cond_c

    iget-wide v6, v4, Landroidx/compose/material3/SliderColors;->a:J

    goto :goto_7

    :cond_c
    iget-wide v6, v4, Landroidx/compose/material3/SliderColors;->f:J

    :goto_7
    sget-object v10, Landroidx/compose/material3/tokens/SliderTokens;->k:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v10, v3}, Landroidx/compose/material3/ShapesKt;->a(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v10

    invoke-static {v1, v6, v7, v10}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v3, v1}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    move-wide v6, v8

    goto :goto_8

    :cond_d
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->D()V

    move-wide/from16 v6, p5

    :goto_8
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_e

    move-object v3, v0

    new-instance v0, Lr10;

    move-object v1, p0

    move-object v2, p1

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lr10;-><init>(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZJI)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_e
    return-void
.end method

.method public final b(Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FFLandroidx/compose/runtime/Composer;II)V
    .locals 19

    move-object/from16 v0, p2

    move-object/from16 v5, p4

    move/from16 v13, p10

    move/from16 v14, p11

    const-string v1, "Track-4EFweAY"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v2, 0x2fab503

    move-object/from16 v3, p9

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v10

    and-int/lit8 v2, v13, 0x6

    if-nez v2, :cond_2

    move-object/from16 v2, p1

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v13

    goto :goto_1

    :cond_2
    move-object/from16 v2, p1

    move v3, v13

    :goto_1
    and-int/lit8 v4, v14, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v6, v13, 0x30

    if-nez v6, :cond_5

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    :cond_5
    :goto_3
    and-int/lit8 v6, v14, 0x4

    if-eqz v6, :cond_7

    or-int/lit16 v3, v3, 0x180

    :cond_6
    move/from16 v8, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v8, v13, 0x180

    if-nez v8, :cond_6

    move/from16 v8, p3

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x100

    goto :goto_4

    :cond_8
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v3, v9

    :goto_5
    and-int/lit16 v9, v13, 0xc00

    if-nez v9, :cond_a

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/16 v9, 0x800

    goto :goto_6

    :cond_9
    const/16 v9, 0x400

    :goto_6
    or-int/2addr v3, v9

    :cond_a
    and-int/lit16 v9, v13, 0x6000

    if-nez v9, :cond_d

    and-int/lit8 v9, v14, 0x10

    if-nez v9, :cond_b

    move-object/from16 v9, p5

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const/16 v12, 0x4000

    goto :goto_7

    :cond_b
    move-object/from16 v9, p5

    :cond_c
    const/16 v12, 0x2000

    :goto_7
    or-int/2addr v3, v12

    goto :goto_8

    :cond_d
    move-object/from16 v9, p5

    :goto_8
    const/high16 v12, 0x30000

    or-int/2addr v12, v3

    and-int/lit8 v15, v14, 0x40

    if-eqz v15, :cond_f

    const/high16 v12, 0x1b0000

    or-int/2addr v12, v3

    :cond_e
    move/from16 v3, p7

    goto :goto_a

    :cond_f
    const/high16 v3, 0x180000

    and-int/2addr v3, v13

    if-nez v3, :cond_e

    move/from16 v3, p7

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x100000

    goto :goto_9

    :cond_10
    const/high16 v16, 0x80000

    :goto_9
    or-int v12, v12, v16

    :goto_a
    and-int/lit16 v7, v14, 0x80

    const/high16 v16, 0xc00000

    if-eqz v7, :cond_11

    or-int v12, v12, v16

    move/from16 v11, p8

    goto :goto_c

    :cond_11
    and-int v16, v13, v16

    move/from16 v11, p8

    if-nez v16, :cond_13

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v16

    if-eqz v16, :cond_12

    const/high16 v16, 0x800000

    goto :goto_b

    :cond_12
    const/high16 v16, 0x400000

    :goto_b
    or-int v12, v12, v16

    :cond_13
    :goto_c
    const/high16 v16, 0x6000000

    and-int v16, v13, v16

    if-nez v16, :cond_15

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    const/high16 v17, 0x4000000

    goto :goto_d

    :cond_14
    const/high16 v17, 0x2000000

    :goto_d
    or-int v12, v12, v17

    goto :goto_e

    :cond_15
    move-object/from16 v16, v0

    move-object/from16 v0, p0

    :goto_e
    const v17, 0x2492493

    and-int v0, v12, v17

    const v2, 0x2492492

    const/16 v17, 0x0

    const/16 v18, 0x1

    if-eq v0, v2, :cond_16

    move/from16 v0, v18

    goto :goto_f

    :cond_16
    move/from16 v0, v17

    :goto_f
    and-int/lit8 v2, v12, 0x1

    invoke-virtual {v10, v2, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v0, v13, 0x1

    const v2, -0xe001

    if-eqz v0, :cond_19

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_10

    :cond_17
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/lit8 v0, v14, 0x10

    if-eqz v0, :cond_18

    and-int/2addr v12, v2

    :cond_18
    move-object/from16 v7, p6

    move v4, v8

    move-object v6, v9

    move v9, v11

    move v8, v3

    move-object/from16 v3, v16

    goto/16 :goto_14

    :cond_19
    :goto_10
    if-eqz v4, :cond_1a

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_11

    :cond_1a
    move-object/from16 v0, v16

    :goto_11
    if-eqz v6, :cond_1b

    move/from16 v8, v18

    :cond_1b
    and-int/lit8 v1, v14, 0x10

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v1, :cond_22

    and-int/lit16 v1, v12, 0x1c00

    xor-int/lit16 v1, v1, 0xc00

    const/16 v6, 0x800

    if-le v1, v6, :cond_1c

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    :cond_1c
    and-int/lit16 v1, v12, 0xc00

    if-ne v1, v6, :cond_1e

    :cond_1d
    move/from16 v1, v18

    goto :goto_12

    :cond_1e
    move/from16 v1, v17

    :goto_12
    and-int/lit16 v6, v12, 0x380

    const/16 v9, 0x100

    if-ne v6, v9, :cond_1f

    move/from16 v17, v18

    :cond_1f
    or-int v1, v1, v17

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v1, :cond_20

    if-ne v6, v4, :cond_21

    :cond_20
    new-instance v6, Lz3;

    const/16 v1, 0xc

    invoke-direct {v6, v5, v8, v1}, Lz3;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_21
    move-object v1, v6

    check-cast v1, Lkotlin/jvm/functions/Function2;

    and-int/2addr v12, v2

    move-object v9, v1

    :cond_22
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_23

    sget-object v1, Landroidx/compose/material3/SliderDefaults$Track$5$1;->b:Landroidx/compose/material3/SliderDefaults$Track$5$1;

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_23
    check-cast v1, Lkotlin/jvm/functions/Function3;

    if-eqz v15, :cond_24

    sget v2, Landroidx/compose/material3/SliderKt;->d:F

    goto :goto_13

    :cond_24
    move v2, v3

    :goto_13
    if-eqz v7, :cond_25

    sget v3, Landroidx/compose/material3/SliderKt;->e:F

    move-object v7, v1

    move v4, v8

    move-object v6, v9

    move v8, v2

    move v9, v3

    move-object v3, v0

    goto :goto_14

    :cond_25
    move-object v3, v0

    move-object v7, v1

    move v4, v8

    move-object v6, v9

    move v9, v11

    move v8, v2

    :goto_14
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/unit/Dp;->e:F

    const v0, 0x30000030

    and-int/lit8 v1, v12, 0xe

    or-int/2addr v0, v1

    shl-int/lit8 v1, v12, 0x3

    and-int/lit16 v11, v1, 0x380

    or-int/2addr v0, v11

    and-int/lit16 v11, v1, 0x1c00

    or-int/2addr v0, v11

    const v11, 0xe000

    and-int/2addr v11, v1

    or-int/2addr v0, v11

    const/high16 v11, 0x70000

    and-int/2addr v11, v1

    or-int/2addr v0, v11

    const/high16 v11, 0x380000

    and-int/2addr v11, v1

    or-int/2addr v0, v11

    const/high16 v11, 0x1c00000

    and-int/2addr v11, v1

    or-int/2addr v0, v11

    const/high16 v11, 0xe000000

    and-int/2addr v1, v11

    or-int v11, v0, v1

    shr-int/lit8 v0, v12, 0x15

    and-int/lit8 v0, v0, 0x70

    or-int/lit8 v12, v0, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v12}, Landroidx/compose/material3/SliderDefaults;->c(Landroidx/compose/material3/SliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FFLandroidx/compose/runtime/Composer;II)V

    goto :goto_15

    :cond_26
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v7, p6

    move v4, v8

    move-object v6, v9

    move v9, v11

    move v8, v3

    move-object/from16 v3, v16

    :goto_15
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_27

    new-instance v0, Lmz0;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move v10, v13

    move v11, v14

    invoke-direct/range {v0 .. v11}, Lmz0;-><init>(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FFII)V

    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_27
    return-void
.end method

.method public final c(Landroidx/compose/material3/SliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FFLandroidx/compose/runtime/Composer;II)V
    .locals 29

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v0, p3

    move/from16 v15, p4

    move-object/from16 v1, p5

    move/from16 v4, p11

    const-string v5, "TrackImpl-VvwgllI"

    if-eqz v0, :cond_0

    invoke-static {v0, v5}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v6, 0x7f37829    # 3.66332E-34f

    move-object/from16 v7, p10

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v6

    and-int/lit8 v7, v4, 0x6

    if-nez v7, :cond_2

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x4

    goto :goto_0

    :cond_1
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v7, v4

    goto :goto_1

    :cond_2
    move v7, v4

    :goto_1
    and-int/lit8 v10, v4, 0x30

    if-nez v10, :cond_4

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v10

    if-eqz v10, :cond_3

    const/16 v10, 0x20

    goto :goto_2

    :cond_3
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v7, v10

    :cond_4
    and-int/lit16 v10, v4, 0x180

    if-nez v10, :cond_6

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v10, 0x100

    goto :goto_3

    :cond_5
    const/16 v10, 0x80

    :goto_3
    or-int/2addr v7, v10

    :cond_6
    and-int/lit16 v10, v4, 0xc00

    if-nez v10, :cond_8

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v10, 0x800

    goto :goto_4

    :cond_7
    const/16 v10, 0x400

    :goto_4
    or-int/2addr v7, v10

    :cond_8
    and-int/lit16 v10, v4, 0x6000

    if-nez v10, :cond_a

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/16 v10, 0x4000

    goto :goto_5

    :cond_9
    const/16 v10, 0x2000

    :goto_5
    or-int/2addr v7, v10

    :cond_a
    const/high16 v10, 0x30000

    and-int/2addr v10, v4

    move-object/from16 v13, p6

    if-nez v10, :cond_c

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/high16 v10, 0x20000

    goto :goto_6

    :cond_b
    const/high16 v10, 0x10000

    :goto_6
    or-int/2addr v7, v10

    :cond_c
    const/high16 v10, 0x180000

    and-int/2addr v10, v4

    if-nez v10, :cond_e

    move-object/from16 v10, p7

    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    const/high16 v16, 0x100000

    goto :goto_7

    :cond_d
    const/high16 v16, 0x80000

    :goto_7
    or-int v7, v7, v16

    goto :goto_8

    :cond_e
    move-object/from16 v10, p7

    :goto_8
    const/high16 v16, 0xc00000

    and-int v16, v4, v16

    move/from16 v14, p8

    if-nez v16, :cond_10

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v16

    if-eqz v16, :cond_f

    const/high16 v16, 0x800000

    goto :goto_9

    :cond_f
    const/high16 v16, 0x400000

    :goto_9
    or-int v7, v7, v16

    :cond_10
    const/high16 v16, 0x6000000

    and-int v16, v4, v16

    move/from16 v12, p9

    if-nez v16, :cond_12

    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v17

    if-eqz v17, :cond_11

    const/high16 v17, 0x4000000

    goto :goto_a

    :cond_11
    const/high16 v17, 0x2000000

    :goto_a
    or-int v7, v7, v17

    :cond_12
    const/high16 v17, 0x30000000

    and-int v17, v4, v17

    const/4 v9, 0x0

    if-nez v17, :cond_14

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v17

    if-eqz v17, :cond_13

    const/high16 v17, 0x20000000

    goto :goto_b

    :cond_13
    const/high16 v17, 0x10000000

    :goto_b
    or-int v7, v7, v17

    :cond_14
    and-int/lit8 v17, p12, 0x6

    if-nez v17, :cond_16

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v17

    if-eqz v17, :cond_15

    const/16 v17, 0x4

    goto :goto_c

    :cond_15
    const/16 v17, 0x2

    :goto_c
    or-int v17, p12, v17

    goto :goto_d

    :cond_16
    move/from16 v17, p12

    :goto_d
    const v20, 0x12492493

    and-int v11, v7, v20

    const v9, 0x12492492

    const/4 v8, 0x1

    if-ne v11, v9, :cond_18

    and-int/lit8 v9, v17, 0x3

    const/4 v11, 0x2

    if-eq v9, v11, :cond_17

    goto :goto_e

    :cond_17
    const/4 v9, 0x0

    goto :goto_f

    :cond_18
    :goto_e
    move v9, v8

    :goto_f
    and-int/lit8 v11, v7, 0x1

    invoke-virtual {v6, v11, v9}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v9

    if-eqz v9, :cond_28

    sget-object v9, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/4 v9, 0x0

    invoke-virtual {v1, v15, v9}, Landroidx/compose/material3/SliderColors;->a(ZZ)J

    move-result-wide v10

    move-wide/from16 v21, v10

    invoke-virtual {v1, v15, v8}, Landroidx/compose/material3/SliderColors;->a(ZZ)J

    move-result-wide v9

    if-eqz v15, :cond_19

    move-wide/from16 v23, v9

    iget-wide v8, v1, Landroidx/compose/material3/SliderColors;->e:J

    goto :goto_10

    :cond_19
    move-wide/from16 v23, v9

    iget-wide v8, v1, Landroidx/compose/material3/SliderColors;->j:J

    :goto_10
    if-eqz v15, :cond_1a

    iget-wide v11, v1, Landroidx/compose/material3/SliderColors;->c:J

    goto :goto_11

    :cond_1a
    iget-wide v11, v1, Landroidx/compose/material3/SliderColors;->h:J

    :goto_11
    iget-object v10, v2, Landroidx/compose/material3/SliderState;->m:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v10, v1, :cond_1b

    sget v1, Landroidx/compose/material3/SliderKt;->a:F

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1, v4}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    goto :goto_12

    :cond_1b
    invoke-static {v0, v4}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget v4, Landroidx/compose/material3/SliderKt;->a:F

    invoke-static {v1, v4}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    :goto_12
    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v4, v5}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    and-int/lit8 v5, v7, 0x70

    const/16 v10, 0x20

    if-ne v5, v10, :cond_1c

    const/4 v10, 0x1

    goto :goto_13

    :cond_1c
    const/4 v10, 0x0

    :goto_13
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v26

    or-int v10, v10, v26

    move-object/from16 v26, v0

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    move/from16 v27, v7

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v10, :cond_1d

    if-ne v0, v7, :cond_1e

    :cond_1d
    new-instance v0, Lnz0;

    invoke-direct {v0, v3, v2}, Lnz0;-><init>(FLandroidx/compose/material3/SliderState;)V

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1e
    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-static {v4, v0}, Landroidx/compose/ui/layout/LayoutModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/16 v10, 0x20

    if-ne v5, v10, :cond_1f

    const/4 v1, 0x1

    goto :goto_14

    :cond_1f
    const/4 v1, 0x0

    :goto_14
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    move-wide/from16 v4, v21

    invoke-virtual {v6, v4, v5}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v10

    or-int/2addr v1, v10

    move-object v10, v0

    move/from16 v19, v1

    move-wide/from16 v0, v23

    invoke-virtual {v6, v0, v1}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v21

    or-int v19, v19, v21

    invoke-virtual {v6, v8, v9}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v21

    or-int v19, v19, v21

    invoke-virtual {v6, v11, v12}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v21

    or-int v19, v19, v21

    const/high16 v21, 0x1c00000

    and-int v0, v27, v21

    const/high16 v1, 0x800000

    if-ne v0, v1, :cond_20

    const/4 v0, 0x1

    goto :goto_15

    :cond_20
    const/4 v0, 0x0

    :goto_15
    or-int v0, v19, v0

    const/high16 v1, 0xe000000

    and-int v1, v27, v1

    move/from16 v18, v0

    const/high16 v0, 0x4000000

    if-ne v1, v0, :cond_21

    const/4 v0, 0x1

    goto :goto_16

    :cond_21
    const/4 v0, 0x0

    :goto_16
    or-int v0, v18, v0

    const/high16 v1, 0x70000

    and-int v1, v27, v1

    move/from16 v16, v0

    const/high16 v0, 0x20000

    if-ne v1, v0, :cond_22

    const/4 v0, 0x1

    goto :goto_17

    :cond_22
    const/4 v0, 0x0

    :goto_17
    or-int v0, v16, v0

    const/high16 v1, 0x380000

    and-int v1, v27, v1

    move/from16 v16, v0

    const/high16 v0, 0x100000

    if-ne v1, v0, :cond_23

    const/4 v0, 0x1

    goto :goto_18

    :cond_23
    const/4 v0, 0x0

    :goto_18
    or-int v0, v16, v0

    const/high16 v1, 0x70000000

    and-int v1, v27, v1

    move/from16 p10, v0

    const/high16 v0, 0x20000000

    if-ne v1, v0, :cond_24

    const/4 v0, 0x1

    goto :goto_19

    :cond_24
    const/4 v0, 0x0

    :goto_19
    or-int v0, p10, v0

    and-int/lit8 v1, v17, 0xe

    move/from16 p10, v0

    const/4 v0, 0x4

    if-ne v1, v0, :cond_25

    const/16 v25, 0x1

    goto :goto_1a

    :cond_25
    const/16 v25, 0x0

    :goto_1a
    or-int v0, p10, v25

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_27

    if-ne v1, v7, :cond_26

    goto :goto_1b

    :cond_26
    move-object v15, v6

    move-object/from16 v28, v10

    goto :goto_1c

    :cond_27
    :goto_1b
    new-instance v0, Loz0;

    move v1, v3

    move-wide v3, v4

    move-object v15, v6

    move-wide v7, v8

    move-object/from16 v28, v10

    move-wide v9, v11

    move v11, v14

    move-wide/from16 v5, v23

    move-object/from16 v14, p7

    move/from16 v12, p9

    invoke-direct/range {v0 .. v14}, Loz0;-><init>(FLandroidx/compose/material3/SliderState;JJJJFFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_1c
    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object/from16 v10, v28

    const/4 v9, 0x0

    invoke-static {v10, v1, v15, v9}, Landroidx/compose/foundation/CanvasKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1d

    :cond_28
    move-object/from16 v26, v0

    move-object v15, v6

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1d
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_29

    new-instance v0, Lpz0;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v4, v26

    invoke-direct/range {v0 .. v12}, Lpz0;-><init>(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FFII)V

    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_29
    return-void
.end method
