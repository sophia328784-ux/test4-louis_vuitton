.class public final Landroidx/compose/material3/DatePickerDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/compose/material3/DatePickerDefaults;",
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
.field public static final a:Landroidx/compose/material3/DatePickerDefaults;

.field public static final b:Lkotlin/ranges/IntRange;

.field public static final c:Landroidx/compose/material3/DatePickerDefaults$AllDates$1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/material3/DatePickerDefaults;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/material3/DatePickerDefaults;->a:Landroidx/compose/material3/DatePickerDefaults;

    new-instance v0, Lkotlin/ranges/IntRange;

    const/16 v1, 0x76c

    const/16 v2, 0x834

    invoke-direct {v0, v1, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    sput-object v0, Landroidx/compose/material3/DatePickerDefaults;->b:Lkotlin/ranges/IntRange;

    sget v0, Landroidx/compose/material3/tokens/ElevationTokens;->a:F

    new-instance v0, Landroidx/compose/material3/DatePickerDefaults$AllDates$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/material3/DatePickerDefaults;->c:Landroidx/compose/material3/DatePickerDefaults$AllDates$1;

    return-void
.end method

.method public static c(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/DatePickerColors;
    .locals 143

    move-object/from16 v0, p0

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v0}, Landroidx/compose/material3/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    iget-object v2, v1, Landroidx/compose/material3/ColorScheme;->a0:Landroidx/compose/material3/DatePickerColors;

    if-nez v2, :cond_4

    const v2, 0x264a7f77

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v2, Landroidx/compose/material3/tokens/DatePickerModalTokens;->a:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v4

    sget-object v2, Landroidx/compose/material3/tokens/DatePickerModalTokens;->r:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v6

    sget-object v2, Landroidx/compose/material3/tokens/DatePickerModalTokens;->p:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v8

    sget-object v2, Landroidx/compose/material3/tokens/DatePickerModalTokens;->w:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v10

    sget-object v2, Landroidx/compose/material3/tokens/DatePickerModalTokens;->v:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v12

    iget-wide v14, v1, Landroidx/compose/material3/ColorScheme;->s:J

    sget-object v2, Landroidx/compose/material3/tokens/DatePickerModalTokens;->E:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v16

    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v2

    move-wide/from16 v18, v4

    const v4, 0x3ec28f5c    # 0.38f

    invoke-static {v4, v2, v3}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v2

    sget-object v5, Landroidx/compose/material3/tokens/DatePickerModalTokens;->m:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v5}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v20

    sget-object v4, Landroidx/compose/material3/tokens/DatePickerModalTokens;->C:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v23

    move-wide/from16 v25, v2

    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v2

    const v4, 0x3ec28f5c    # 0.38f

    invoke-static {v4, v2, v3}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v2

    sget-object v4, Landroidx/compose/material3/tokens/DatePickerModalTokens;->B:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-wide/from16 v28, v18

    move-wide/from16 v18, v25

    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v26

    move-wide/from16 v30, v2

    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v2

    const v4, 0x3ec28f5c    # 0.38f

    invoke-static {v4, v2, v3}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v2

    sget-object v4, Landroidx/compose/material3/tokens/DatePickerModalTokens;->n:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-wide/from16 v32, v23

    move-wide/from16 v24, v30

    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v30

    move-wide/from16 v34, v2

    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v2

    const v4, 0x3ec28f5c    # 0.38f

    invoke-static {v4, v2, v3}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v2

    sget-object v4, Landroidx/compose/material3/tokens/DatePickerModalTokens;->j:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-wide/from16 v36, v28

    move-wide/from16 v28, v34

    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v34

    move-wide/from16 v38, v2

    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v2

    const v4, 0x3ec28f5c    # 0.38f

    invoke-static {v4, v2, v3}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v2

    sget-object v4, Landroidx/compose/material3/tokens/DatePickerModalTokens;->i:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-wide/from16 v40, v32

    move-wide/from16 v32, v38

    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v38

    move-wide/from16 v42, v2

    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v2

    const v4, 0x3ec28f5c    # 0.38f

    invoke-static {v4, v2, v3}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v2

    invoke-static {v1, v5}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v4

    move-wide/from16 v44, v2

    sget-object v2, Landroidx/compose/material3/tokens/DatePickerModalTokens;->k:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v2

    move-wide/from16 v46, v2

    sget-object v2, Landroidx/compose/material3/tokens/DatePickerModalTokens;->u:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v48

    sget-object v2, Landroidx/compose/material3/tokens/DatePickerModalTokens;->t:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v2

    move-wide/from16 v50, v2

    sget-object v2, Landroidx/compose/material3/tokens/DividerTokens;->a:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v2

    sget-object v23, Landroidx/compose/material3/OutlinedTextFieldDefaults;->a:Landroidx/compose/material3/OutlinedTextFieldDefaults;

    sget-object v23, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move-wide/from16 v52, v2

    iget-object v2, v1, Landroidx/compose/material3/ColorScheme;->h0:Landroidx/compose/material3/TextFieldColors;

    if-nez v2, :cond_0

    const v2, 0x1745d472

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->F()V

    const/4 v2, 0x0

    move-wide/from16 v141, v4

    goto/16 :goto_2

    :cond_0
    move-wide/from16 v141, v4

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->F:J

    move-wide/from16 v116, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->E:J

    move-wide/from16 v114, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->D:J

    move-wide/from16 v112, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->C:J

    move-wide/from16 v110, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->B:J

    move-wide/from16 v108, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->A:J

    move-wide/from16 v106, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->z:J

    move-wide/from16 v104, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->y:J

    move-wide/from16 v102, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->x:J

    move-wide/from16 v100, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->w:J

    move-wide/from16 v98, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->v:J

    move-wide/from16 v96, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->u:J

    move-wide/from16 v94, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->t:J

    move-wide/from16 v92, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->s:J

    move-wide/from16 v90, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->r:J

    move-wide/from16 v88, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->q:J

    move-wide/from16 v86, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->p:J

    move-wide/from16 v84, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->o:J

    move-wide/from16 v82, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->n:J

    move-wide/from16 v80, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->m:J

    move-wide/from16 v78, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->l:J

    iget-object v5, v2, Landroidx/compose/material3/TextFieldColors;->k:Landroidx/compose/foundation/text/selection/TextSelectionColors;

    move-wide/from16 v76, v3

    const v3, 0x1745d473

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v3, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_1

    :cond_1
    move-object/from16 v23, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->a:J

    move-wide/from16 v55, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->b:J

    move-wide/from16 v57, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->c:J

    move-wide/from16 v59, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->d:J

    move-wide/from16 v61, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->e:J

    move-wide/from16 v63, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->f:J

    move-wide/from16 v65, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->g:J

    move-wide/from16 v67, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->h:J

    move-wide/from16 v69, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->i:J

    move-wide/from16 v71, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->j:J

    move-wide/from16 v73, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->G:J

    move-wide/from16 v118, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->H:J

    move-wide/from16 v120, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->I:J

    move-wide/from16 v122, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->J:J

    move-wide/from16 v124, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->K:J

    move-wide/from16 v126, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->L:J

    move-wide/from16 v128, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->M:J

    move-wide/from16 v130, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->N:J

    move-wide/from16 v132, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->O:J

    move-wide/from16 v134, v3

    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->P:J

    move-wide/from16 v136, v3

    iget-wide v2, v2, Landroidx/compose/material3/TextFieldColors;->Q:J

    if-nez v23, :cond_2

    move-object/from16 v75, v5

    goto :goto_0

    :cond_2
    move-object/from16 v75, v23

    :goto_0
    new-instance v54, Landroidx/compose/material3/TextFieldColors;

    const/16 v140, 0x0

    move-wide/from16 v138, v2

    invoke-direct/range {v54 .. v140}, Landroidx/compose/material3/TextFieldColors;-><init>(JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v54

    iput-object v2, v1, Landroidx/compose/material3/ColorScheme;->h0:Landroidx/compose/material3/TextFieldColors;

    :goto_1
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->F()V

    :goto_2
    if-nez v2, :cond_3

    const v2, -0x6a979da7

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    new-instance v54, Landroidx/compose/material3/TextFieldColors;

    sget-object v2, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->p:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v55

    sget-object v2, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->v:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v57

    sget-object v2, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->c:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v3

    const v5, 0x3ec28f5c    # 0.38f

    invoke-static {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v59

    sget-object v3, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->j:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v3}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v61

    sget-object v3, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v63, Landroidx/compose/ui/graphics/Color;->h:J

    sget-object v3, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->a:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v3}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v71

    sget-object v3, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->i:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v3}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v73

    sget-object v3, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v75, v3

    check-cast v75, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    sget-object v3, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->s:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v3}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v76

    sget-object v3, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->B:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v3}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v78

    sget-object v3, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->f:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v3}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v3

    const v5, 0x3df5c28f    # 0.12f

    invoke-static {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v80

    sget-object v3, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->m:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v3}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v82

    sget-object v3, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->r:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v3}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v84

    sget-object v3, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->A:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v3}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v86

    sget-object v3, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->e:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v3}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v3

    const v5, 0x3ec28f5c    # 0.38f

    invoke-static {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v88

    sget-object v3, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->l:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v3}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v90

    sget-object v3, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->u:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v3}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v92

    sget-object v3, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->D:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v3}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v94

    sget-object v3, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->h:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v3}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v96

    sget-object v3, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->o:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v3}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v98

    sget-object v3, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->q:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v3}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v100

    sget-object v3, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->z:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v3}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v102

    sget-object v3, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->d:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v3}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v104

    sget-object v3, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->k:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v3}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v106

    sget-object v3, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->w:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v3}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v108

    invoke-static {v1, v3}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v110

    move-wide/from16 v22, v6

    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v112

    invoke-static {v1, v3}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v114

    sget-object v2, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->t:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v116

    sget-object v2, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->C:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v118

    sget-object v2, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->g:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v2

    invoke-static {v5, v2, v3}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v120

    sget-object v2, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->n:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v122

    sget-object v2, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->x:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v124

    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v126

    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v128

    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v130

    sget-object v2, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->y:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v132

    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v134

    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v136

    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v138

    const/16 v140, 0x0

    move-wide/from16 v65, v63

    move-wide/from16 v67, v63

    move-wide/from16 v69, v63

    invoke-direct/range {v54 .. v140}, Landroidx/compose/material3/TextFieldColors;-><init>(JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v54

    iput-object v2, v1, Landroidx/compose/material3/ColorScheme;->h0:Landroidx/compose/material3/TextFieldColors;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_3

    :cond_3
    move-wide/from16 v22, v6

    const v3, -0x6a9a946d

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->F()V

    :goto_3
    new-instance v3, Landroidx/compose/material3/DatePickerColors;

    move-wide/from16 v6, v22

    move-wide/from16 v22, v40

    move-wide/from16 v40, v44

    move-wide/from16 v44, v46

    move-wide/from16 v46, v50

    move-wide/from16 v50, v52

    const/16 v53, 0x0

    move-object/from16 v52, v2

    move-wide/from16 v4, v36

    move-wide/from16 v36, v42

    move-wide/from16 v42, v141

    invoke-direct/range {v3 .. v53}, Landroidx/compose/material3/DatePickerColors;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJLandroidx/compose/material3/TextFieldColors;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, v1, Landroidx/compose/material3/ColorScheme;->a0:Landroidx/compose/material3/DatePickerColors;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->F()V

    return-object v3

    :cond_4
    const v1, 0x26489319

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->F()V

    return-object v2
.end method


# virtual methods
.method public final a(Ljava/lang/Long;ILandroidx/compose/material3/DatePickerFormatter;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;I)V
    .locals 29

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v0, p4

    if-eqz v0, :cond_0

    const-string v1, "DatePickerHeadline-ISIPfiY"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v5, v0

    const v0, 0x72111f7c

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int v1, p8, v1

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_1

    :cond_2
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v1, v6

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x100

    goto :goto_2

    :cond_3
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v1, v6

    move-wide/from16 v8, p5

    invoke-virtual {v0, v8, v9}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x4000

    goto :goto_3

    :cond_4
    const/16 v6, 0x2000

    :goto_3
    or-int/2addr v1, v6

    const v6, 0x12493

    and-int/2addr v6, v1

    const v7, 0x12492

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq v6, v7, :cond_5

    move v6, v10

    goto :goto_4

    :cond_5
    move v6, v11

    :goto_4
    and-int/lit8 v7, v1, 0x1

    invoke-virtual {v0, v7, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v6, p8, 0x1

    if-eqz v6, :cond_7

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    :cond_7
    :goto_5
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v0}, Landroidx/compose/material3/CalendarLocale_androidKt;->a(Landroidx/compose/runtime/Composer;)Ljava/util/Locale;

    move-result-object v6

    invoke-interface {v4, v2, v6, v11}, Landroidx/compose/material3/DatePickerFormatter;->b(Ljava/lang/Long;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v2, v6, v10}, Landroidx/compose/material3/DatePickerFormatter;->b(Ljava/lang/Long;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v6

    const-string v12, ""

    if-nez v6, :cond_a

    const v6, 0x16a92d4b

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v6, Landroidx/compose/material3/DisplayMode;->b:Landroidx/compose/material3/DisplayMode$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v3, :cond_8

    const v6, 0x32478caf

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget v6, Landroidx/compose/material3/internal/Strings;->a:I

    const v6, 0x7f140bc3

    invoke-static {v0, v6}, Landroidx/compose/material3/internal/Strings_androidKt;->a(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_6

    :cond_8
    sget v6, Landroidx/compose/material3/DisplayMode;->c:I

    if-ne v3, v6, :cond_9

    const v6, 0x3247984a

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget v6, Landroidx/compose/material3/internal/Strings;->a:I

    const v6, 0x7f140bbe

    invoke-static {v0, v6}, Landroidx/compose/material3/internal/Strings_androidKt;->a(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_6

    :cond_9
    const v6, 0x16ac8e42

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v6, v12

    :goto_6
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_7

    :cond_a
    const v13, 0x32476ef2

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_7
    if-nez v7, :cond_d

    const v7, 0x16ae15c3

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v7, Landroidx/compose/material3/DisplayMode;->b:Landroidx/compose/material3/DisplayMode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v3, :cond_b

    const v7, 0x3247b541

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget v7, Landroidx/compose/material3/internal/Strings;->a:I

    const v7, 0x7f140bc0

    invoke-static {v0, v7}, Landroidx/compose/material3/internal/Strings_androidKt;->a(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_8

    :cond_b
    sget v7, Landroidx/compose/material3/DisplayMode;->c:I

    if-ne v3, v7, :cond_c

    const v7, 0x3247bf20

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget v7, Landroidx/compose/material3/internal/Strings;->a:I

    const v7, 0x7f140bb8

    invoke-static {v0, v7}, Landroidx/compose/material3/internal/Strings_androidKt;->a(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_8

    :cond_c
    const v7, 0x16b11ca2

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v7, v12

    :goto_8
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_9

    :cond_d
    const v13, 0x3247aa20

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_9
    sget-object v13, Landroidx/compose/material3/DisplayMode;->b:Landroidx/compose/material3/DisplayMode$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v3, :cond_e

    const v12, 0x3247dd0c

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget v12, Landroidx/compose/material3/internal/Strings;->a:I

    const v12, 0x7f140bc1

    invoke-static {v0, v12}, Landroidx/compose/material3/internal/Strings_androidKt;->a(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_a

    :cond_e
    sget v13, Landroidx/compose/material3/DisplayMode;->c:I

    if-ne v3, v13, :cond_f

    const v12, 0x3247e84b

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget v12, Landroidx/compose/material3/internal/Strings;->a:I

    const v12, 0x7f140bb9

    invoke-static {v0, v12}, Landroidx/compose/material3/internal/Strings_androidKt;->a(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_a

    :cond_f
    const v13, 0x16b64222

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_a
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v12, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v10, :cond_10

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v12, v10, :cond_11

    :cond_10
    new-instance v12, La4;

    const/16 v10, 0x17

    invoke-direct {v12, v6, v10}, La4;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-static {v5, v11, v12}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    shr-int/lit8 v1, v1, 0x6

    and-int/lit16 v1, v1, 0x380

    const/16 v27, 0x6000

    const v28, 0x3bff8

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v25, v7

    move-object v7, v6

    move-object/from16 v6, v25

    move-object/from16 v25, v0

    move/from16 v26, v1

    invoke-static/range {v6 .. v28}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    goto :goto_b

    :cond_12
    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_b
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_13

    new-instance v0, Lvr;

    move-object/from16 v1, p0

    move-wide/from16 v6, p5

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lvr;-><init>(Landroidx/compose/material3/DatePickerDefaults;Ljava/lang/Long;ILandroidx/compose/material3/DatePickerFormatter;Landroidx/compose/ui/Modifier;JI)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_13
    return-void
.end method

.method public final b(IIJLandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V
    .locals 26

    move/from16 v2, p1

    move-object/from16 v0, p6

    if-eqz v0, :cond_0

    const-string v1, "DatePickerTitle-FNtVw6o"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v4, v0

    const v0, -0x174c5e2e

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int v1, p2, v1

    move-wide/from16 v5, p3

    invoke-virtual {v0, v5, v6}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x100

    goto :goto_1

    :cond_2
    const/16 v3, 0x80

    :goto_1
    or-int/2addr v1, v3

    and-int/lit16 v3, v1, 0x493

    const/16 v7, 0x492

    const/4 v8, 0x0

    if-eq v3, v7, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    move v3, v8

    :goto_2
    and-int/lit8 v7, v1, 0x1

    invoke-virtual {v0, v7, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    :cond_5
    :goto_3
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Landroidx/compose/material3/DisplayMode;->b:Landroidx/compose/material3/DisplayMode$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_6

    const v3, -0x75ad6a1c

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget v3, Landroidx/compose/material3/internal/Strings;->a:I

    const v3, 0x7f140bcc

    invoke-static {v0, v3}, Landroidx/compose/material3/internal/Strings_androidKt;->a(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    and-int/lit16 v1, v1, 0x3f0

    const/16 v24, 0x0

    const v25, 0x3fff8

    move v9, v8

    const-wide/16 v7, 0x0

    move v10, v9

    const/4 v9, 0x0

    move v12, v10

    const-wide/16 v10, 0x0

    move v13, v12

    const/4 v12, 0x0

    move v14, v13

    const/4 v13, 0x0

    move/from16 v16, v14

    const-wide/16 v14, 0x0

    move/from16 v17, v16

    const/16 v16, 0x0

    move/from16 v18, v17

    const/16 v17, 0x0

    move/from16 v19, v18

    const/16 v18, 0x0

    move/from16 v20, v19

    const/16 v19, 0x0

    move/from16 v21, v20

    const/16 v20, 0x0

    move/from16 v22, v21

    const/16 v21, 0x0

    move/from16 v23, v22

    move-object/from16 v22, v0

    move/from16 v0, v23

    move/from16 v23, v1

    invoke-static/range {v3 .. v25}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v3, v22

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_4

    :cond_6
    move-object v3, v0

    move v0, v8

    sget v5, Landroidx/compose/material3/DisplayMode;->c:I

    if-ne v2, v5, :cond_7

    const v5, -0x75ad4d9d

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget v5, Landroidx/compose/material3/internal/Strings;->a:I

    const v5, 0x7f140bbf

    invoke-static {v3, v5}, Landroidx/compose/material3/internal/Strings_androidKt;->a(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    and-int/lit16 v1, v1, 0x3f0

    const/16 v24, 0x0

    const v25, 0x3fff8

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v23, v1

    move-object/from16 v22, v3

    move-object v3, v5

    move-wide/from16 v5, p3

    invoke-static/range {v3 .. v25}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v3, v22

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_4

    :cond_7
    const v1, -0x3ff9a6d0

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_4

    :cond_8
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_4
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_9

    new-instance v0, Lwr;

    move-object/from16 v1, p0

    move/from16 v6, p2

    move-object v3, v4

    move-wide/from16 v4, p3

    invoke-direct/range {v0 .. v6}, Lwr;-><init>(Landroidx/compose/material3/DatePickerDefaults;ILandroidx/compose/ui/Modifier;JI)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method
