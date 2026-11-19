.class public final synthetic Lf41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lf41;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lf41;->c:Ljava/lang/String;

    iput-object p3, p0, Lf41;->d:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lf41;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf41;->c:Ljava/lang/String;

    iput-object p2, p0, Lf41;->d:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 167

    move-object/from16 v0, p0

    iget v1, v0, Lf41;->b:I

    iget-object v2, v0, Lf41;->d:Lkotlin/jvm/functions/Function2;

    iget-object v0, v0, Lf41;->c:Ljava/lang/String;

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x31

    invoke-static {v3}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v3

    invoke-static {v0, v2, v1, v3}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    and-int/lit8 v4, v3, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v4, v5, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    and-int/2addr v3, v6

    invoke-interface {v1, v3, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Lcom/vuitton/android/designkit/ui/theme/SpacingKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance v7, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    const/16 v22, 0x3fff

    const/16 v23, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v7 .. v23}, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;-><init>(FFFFFFFFFFFFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v7}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v8

    sget-object v3, Lcom/vuitton/android/designkit/ui/theme/ColorKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v4, Lcom/vuitton/android/designkit/ui/theme/LvTheme;->Default:Lcom/vuitton/android/designkit/ui/theme/LvTheme;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/vuitton/android/designkit/ui/theme/ThemeKt$WhenMappings;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v5, v7

    const/4 v9, 0x0

    if-ne v7, v6, :cond_2

    new-instance v10, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;

    const v63, 0x3ffffff

    const/16 v64, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const-wide/16 v51, 0x0

    const-wide/16 v53, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    const-wide/16 v59, 0x0

    const-wide/16 v61, 0x0

    invoke-direct/range {v10 .. v64}, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v11, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v12, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->y:J

    const/16 v68, 0x0

    move-wide/from16 v66, v12

    iget-wide v12, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->h:J

    iget-wide v14, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->g:J

    iget-wide v6, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->e:J

    move-object/from16 p1, v5

    move-wide/from16 v16, v6

    iget-wide v5, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->c:J

    move-wide/from16 v18, v5

    iget-wide v5, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->f:J

    move-wide/from16 v20, v5

    iget-wide v5, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->u:J

    move-wide/from16 v22, v5

    iget-wide v5, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->t:J

    move-wide/from16 v24, v5

    iget-wide v5, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->s:J

    move-wide/from16 v26, v5

    iget-wide v5, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->q:J

    move-wide/from16 v28, v5

    iget-wide v5, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->a:J

    move-wide/from16 v32, v5

    iget-wide v5, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->b:J

    move-wide/from16 v34, v5

    iget-wide v5, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->d:J

    move-wide/from16 v38, v5

    iget-wide v5, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->r:J

    move-wide/from16 v48, v5

    iget-wide v5, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->i:J

    move-wide/from16 v52, v5

    iget-wide v5, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->j:J

    move-wide/from16 v54, v5

    iget-wide v5, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->k:J

    move-wide/from16 v56, v5

    iget-wide v5, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->l:J

    move-wide/from16 v58, v5

    iget-wide v5, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->v:J

    move-wide/from16 v60, v5

    iget-wide v5, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->w:J

    move-wide/from16 v62, v5

    iget-wide v5, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;->x:J

    move-wide/from16 v30, v20

    move-wide/from16 v36, v14

    move-wide/from16 v40, v18

    move-wide/from16 v42, v38

    move-wide/from16 v44, v16

    move-wide/from16 v46, v28

    move-wide/from16 v50, v26

    move-wide/from16 v64, v5

    invoke-direct/range {v11 .. v68}, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v5, v10

    new-instance v10, Lcom/vuitton/android/designkit/ui/theme/LVColor;

    const/16 v20, 0x3c

    const/16 v21, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    move-object v12, v11

    move-object v11, v5

    invoke-direct/range {v10 .. v21}, Lcom/vuitton/android/designkit/ui/theme/LVColor;-><init>(Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;JJJLandroidx/compose/material3/ColorScheme;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v3

    sget-object v5, Lcom/vuitton/android/designkit/ui/theme/TypographyKt;->c:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, p1, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    new-instance v10, Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    const v27, 0xffff

    const/16 v28, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v10 .. v28}, Lcom/vuitton/android/designkit/ui/theme/LVTypography;-><init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v10

    sget-object v5, Lcom/vuitton/android/designkit/ui/theme/ShapeKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance v11, Lcom/vuitton/android/designkit/ui/theme/LVShape;

    const/16 v17, 0x1f

    invoke-direct/range {v11 .. v18}, Lcom/vuitton/android/designkit/ui/theme/LVShape;-><init>(Landroidx/compose/foundation/shape/RoundedCornerShape;Landroidx/compose/foundation/shape/RoundedCornerShape;Landroidx/compose/foundation/shape/RoundedCornerShape;Landroidx/compose/foundation/shape/RoundedCornerShape;Landroidx/compose/foundation/shape/RoundedCornerShape;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v5, v11}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v11

    sget-object v5, Lcom/vuitton/android/designkit/ui/theme/DimensKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance v12, Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    const/16 v45, -0x1

    const/16 v46, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    invoke-direct/range {v12 .. v46}, Lcom/vuitton/android/designkit/ui/theme/LVDimens;-><init>(FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v5, v12}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v12

    sget-object v5, Lcom/vuitton/android/designkit/ui/theme/IconKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance v13, Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    const v165, 0x7ffff

    const/16 v166, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    const/16 v92, 0x0

    const/16 v93, 0x0

    const/16 v94, 0x0

    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v97, 0x0

    const/16 v98, 0x0

    const/16 v99, 0x0

    const/16 v100, 0x0

    const/16 v101, 0x0

    const/16 v102, 0x0

    const/16 v103, 0x0

    const/16 v104, 0x0

    const/16 v105, 0x0

    const/16 v106, 0x0

    const/16 v107, 0x0

    const/16 v108, 0x0

    const/16 v109, 0x0

    const/16 v110, 0x0

    const/16 v111, 0x0

    const/16 v112, 0x0

    const/16 v113, 0x0

    const/16 v114, 0x0

    const/16 v115, 0x0

    const/16 v116, 0x0

    const/16 v117, 0x0

    const/16 v118, 0x0

    const/16 v119, 0x0

    const/16 v120, 0x0

    const/16 v121, 0x0

    const/16 v122, 0x0

    const/16 v123, 0x0

    const/16 v124, 0x0

    const/16 v125, 0x0

    const/16 v126, 0x0

    const/16 v127, 0x0

    const/16 v128, 0x0

    const/16 v129, 0x0

    const/16 v130, 0x0

    const/16 v131, 0x0

    const/16 v132, 0x0

    const/16 v133, 0x0

    const/16 v134, 0x0

    const/16 v135, 0x0

    const/16 v136, 0x0

    const/16 v137, 0x0

    const/16 v138, 0x0

    const/16 v139, 0x0

    const/16 v140, 0x0

    const/16 v141, 0x0

    const/16 v142, 0x0

    const/16 v143, 0x0

    const/16 v144, 0x0

    const/16 v145, 0x0

    const/16 v146, 0x0

    const/16 v147, 0x0

    const/16 v148, 0x0

    const/16 v149, 0x0

    const/16 v150, 0x0

    const/16 v151, 0x0

    const/16 v152, 0x0

    const/16 v153, 0x0

    const/16 v154, 0x0

    const/16 v155, 0x0

    const/16 v156, 0x0

    const/16 v157, 0x0

    const/16 v158, 0x0

    const/16 v159, 0x0

    const/16 v160, 0x0

    const/16 v161, -0x1

    const/16 v162, -0x1

    const/16 v163, -0x1

    const/16 v164, -0x1

    invoke-direct/range {v13 .. v166}, Lcom/vuitton/android/designkit/ui/theme/LVIcon;-><init>(IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIILcom/vuitton/android/designkit/ui/theme/LVPaymentIcons;IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v13

    sget-object v5, Lcom/vuitton/android/designkit/ui/theme/AnimationKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance v14, Lcom/vuitton/android/designkit/ui/theme/LVAnimation;

    const/16 v56, 0xff

    const/16 v57, 0x0

    const/16 v55, -0x1

    invoke-direct/range {v14 .. v57}, Lcom/vuitton/android/designkit/ui/theme/LVAnimation;-><init>(IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v5, v14}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v14

    sget-object v5, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v15

    sget-object v4, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v16

    move-object v9, v3

    filled-new-array/range {v8 .. v16}, [Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    new-instance v3, Lz4;

    const/16 v4, 0x9

    invoke-direct {v3, v4, v2}, Lz4;-><init>(ILkotlin/jvm/functions/Function2;)V

    const v2, -0xaeb31b9

    invoke-static {v2, v3, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    const/16 v3, 0x38

    invoke-static {v0, v2, v1, v3}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lv40;->g()V

    goto :goto_2

    :cond_2
    invoke-static {}, Lv40;->g()V

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v9, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_2
    return-object v9

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
