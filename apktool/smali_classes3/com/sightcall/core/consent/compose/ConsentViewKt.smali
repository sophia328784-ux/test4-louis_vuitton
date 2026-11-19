.class public final Lcom/sightcall/core/consent/compose/ConsentViewKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0000\u001aI\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00010\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00010\t2\u0006\u0010\u000b\u001a\u00020\u000cH\u0007\u00a2\u0006\u0002\u0010\r\u001a\r\u0010\u000e\u001a\u00020\u0001H\u0007\u00a2\u0006\u0002\u0010\u000f\u00a8\u0006\u0010\u00b2\u0006\n\u0010\u0011\u001a\u00020\u0012X\u008a\u008e\u0002\u00b2\u0006\n\u0010\u0013\u001a\u00020\u0012X\u008a\u008e\u0002"
    }
    d2 = {
        "ConsentView",
        "",
        "context",
        "Landroid/content/Context;",
        "consentTitle",
        "",
        "consentBody",
        "Landroidx/compose/ui/text/AnnotatedString;",
        "onAccept",
        "Lkotlin/Function0;",
        "onDecline",
        "viewModel",
        "Lcom/sightcall/core/consent/ConsentViewModel;",
        "(Landroid/content/Context;Ljava/lang/String;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/sightcall/core/consent/ConsentViewModel;Landroidx/compose/runtime/Composer;I)V",
        "PreviewConsentView",
        "(Landroidx/compose/runtime/Composer;I)V",
        "core_release",
        "contentHeightPx",
        "",
        "containerHeightPx"
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
.method public static final ConsentView(Landroid/content/Context;Ljava/lang/String;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/sightcall/core/consent/ConsentViewModel;Landroidx/compose/runtime/Composer;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/sightcall/core/consent/ConsentViewModel;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move/from16 v7, p7

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x6b2d80f8

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    and-int/lit8 v1, v7, 0x6

    move-object/from16 v9, p0

    if-nez v1, :cond_1

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v7

    goto :goto_1

    :cond_1
    move v1, v7

    :goto_1
    and-int/lit8 v2, v7, 0x30

    move-object/from16 v10, p1

    if-nez v2, :cond_3

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, v7, 0x180

    move-object/from16 v13, p2

    if-nez v2, :cond_5

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_3

    :cond_4
    const/16 v2, 0x80

    :goto_3
    or-int/2addr v1, v2

    :cond_5
    and-int/lit16 v2, v7, 0xc00

    move-object/from16 v11, p3

    if-nez v2, :cond_7

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x800

    goto :goto_4

    :cond_6
    const/16 v2, 0x400

    :goto_4
    or-int/2addr v1, v2

    :cond_7
    and-int/lit16 v2, v7, 0x6000

    move-object/from16 v12, p4

    if-nez v2, :cond_9

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x4000

    goto :goto_5

    :cond_8
    const/16 v2, 0x2000

    :goto_5
    or-int/2addr v1, v2

    :cond_9
    const/high16 v2, 0x30000

    and-int/2addr v2, v7

    move-object/from16 v14, p5

    if-nez v2, :cond_b

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/high16 v2, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v2, 0x10000

    :goto_6
    or-int/2addr v1, v2

    :cond_b
    const v2, 0x12493

    and-int/2addr v1, v2

    const v2, 0x12492

    if-ne v1, v2, :cond_d

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->i()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    goto :goto_8

    :cond_d
    :goto_7
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v8, Lu1;

    const/16 v15, 0xa

    invoke-direct/range {v8 .. v15}, Lu1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v1, 0x269a1d9e

    invoke-static {v1, v8, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v0, v2}, Lcom/sightcall/graphik/VisionThemeKt;->VisionTheme(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    :goto_8
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_e

    new-instance v0, Lz2;

    const/4 v8, 0x4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v8}, Lz2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_e
    return-void
.end method

.method private static final ConsentView$lambda$0(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/text/AnnotatedString;Lcom/sightcall/core/consent/ConsentViewModel;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 18

    move-object/from16 v0, p6

    and-int/lit8 v1, p7, 0x3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->i()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->D()V

    goto/16 :goto_1

    :cond_1
    :goto_0
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v1, 0x42a00000    # 80.0f

    const/high16 v2, 0x41800000    # 16.0f

    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {v3, v4, v1, v4, v2}, Landroidx/compose/foundation/layout/PaddingKt;->l(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v1, v2}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const v2, -0x3bced2e6

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    const v2, 0xca3d8b5

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->F()V

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/Density;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v4, :cond_2

    new-instance v3, Landroidx/constraintlayout/compose/Measurer2;

    invoke-direct {v3, v2}, Landroidx/constraintlayout/compose/Measurer2;-><init>(Landroidx/compose/ui/unit/Density;)V

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    move-object v7, v3

    check-cast v7, Landroidx/constraintlayout/compose/Measurer2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_3

    new-instance v2, Landroidx/constraintlayout/compose/ConstraintLayoutScope;

    invoke-direct {v2}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;-><init>()V

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v2, Landroidx/constraintlayout/compose/ConstraintLayoutScope;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_4

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object v10, v3

    check-cast v10, Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_5

    new-instance v3, Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl;

    invoke-direct {v3, v2}, Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl;-><init>(Landroidx/constraintlayout/compose/ConstraintLayoutScope;)V

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    move-object v8, v3

    check-cast v8, Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_6

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->h()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v5

    invoke-static {v3, v5}, Landroidx/compose/runtime/SnapshotStateKt;->f(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    move-object v9, v3

    check-cast v9, Landroidx/compose/runtime/MutableState;

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    move-object v6, v9

    const/16 v9, 0x101

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v5

    or-int/2addr v3, v5

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_7

    if-ne v5, v4, :cond_8

    :cond_7
    new-instance v5, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$2;

    invoke-direct/range {v5 .. v10}, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$2;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/constraintlayout/compose/Measurer2;Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl;ILandroidx/compose/runtime/MutableState;)V

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v5, Landroidx/compose/ui/layout/MeasurePolicy;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_9

    new-instance v3, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$3;

    invoke-direct {v3, v10, v8}, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$3;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl;)V

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    move-object v11, v3

    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v3, :cond_a

    if-ne v8, v4, :cond_b

    :cond_a
    new-instance v8, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$4;

    invoke-direct {v8, v7}, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$4;-><init>(Landroidx/constraintlayout/compose/Measurer2;)V

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x0

    invoke-static {v1, v3, v8}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    new-instance v8, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$5;

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    move-object v10, v2

    move-object v9, v6

    invoke-direct/range {v8 .. v17}, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$5;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/constraintlayout/compose/ConstraintLayoutScope;Lkotlin/jvm/functions/Function0;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/text/AnnotatedString;Lcom/sightcall/core/consent/ConsentViewModel;)V

    const v2, 0x478ef317

    invoke-static {v2, v8, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    const/16 v3, 0x30

    invoke-static {v1, v2, v5, v0, v3}, Landroidx/compose/ui/layout/LayoutKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->F()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method private static final ConsentView$lambda$0$0$4(Landroidx/compose/runtime/MutableFloatState;)F
    .locals 0

    invoke-interface {p0}, Landroidx/compose/runtime/FloatState;->a()F

    move-result p0

    return p0
.end method

.method private static final ConsentView$lambda$0$0$5(Landroidx/compose/runtime/MutableFloatState;F)V
    .locals 0

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->w(F)V

    return-void
.end method

.method private static final ConsentView$lambda$0$0$7(Landroidx/compose/runtime/MutableFloatState;)F
    .locals 0

    invoke-interface {p0}, Landroidx/compose/runtime/FloatState;->a()F

    move-result p0

    return p0
.end method

.method private static final ConsentView$lambda$0$0$8(Landroidx/compose/runtime/MutableFloatState;F)V
    .locals 0

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->w(F)V

    return-void
.end method

.method private static final ConsentView$lambda$1(Landroid/content/Context;Ljava/lang/String;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/sightcall/core/consent/ConsentViewModel;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 8

    or-int/lit8 p6, p6, 0x1

    invoke-static {p6}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    invoke-static/range {v0 .. v7}, Lcom/sightcall/core/consent/compose/ConsentViewKt;->ConsentView(Landroid/content/Context;Ljava/lang/String;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/sightcall/core/consent/ConsentViewModel;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final PreviewConsentView(Landroidx/compose/runtime/Composer;I)V
    .locals 32

    move/from16 v0, p1

    const v1, 0x1c3222f

    move-object/from16 v2, p0

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    if-nez v0, :cond_1

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->i()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->D()V

    goto/16 :goto_1

    :cond_1
    :goto_0
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/Context;

    new-instance v1, Landroidx/compose/ui/text/AnnotatedString$Builder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v5, v3, v4}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget v3, Lcom/sightcall/core/R$string;->consent_privacy_policy:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;->e(Ljava/lang/String;)V

    new-instance v9, Landroidx/compose/ui/text/SpanStyle;

    sget-object v3, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v10, Landroidx/compose/ui/graphics/Color;->g:J

    sget-object v3, Landroidx/compose/ui/text/style/TextDecoration;->b:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v26, Landroidx/compose/ui/text/style/TextDecoration;->d:Landroidx/compose/ui/text/style/TextDecoration;

    const v30, 0xeffe

    const/16 v31, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-direct/range {v9 .. v31}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/graphics/drawscope/DrawStyle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v9}, Landroidx/compose/ui/text/AnnotatedString$Builder;->h(Landroidx/compose/ui/text/SpanStyle;)I

    move-result v3

    :try_start_0
    const-string v4, "Privacy Policy"

    invoke-virtual {v1, v4}, Landroidx/compose/ui/text/AnnotatedString$Builder;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1, v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;->f(I)V

    invoke-virtual {v1}, Landroidx/compose/ui/text/AnnotatedString$Builder;->i()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v4

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v3, :cond_2

    new-instance v1, Llp;

    const/16 v5, 0x15

    invoke-direct {v1, v5}, Llp;-><init>(I)V

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2
    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_3

    new-instance v1, Llp;

    const/16 v3, 0x16

    invoke-direct {v1, v3}, Llp;-><init>(I)V

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_3
    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function0;

    new-instance v7, Lcom/sightcall/core/consent/ConsentViewModel;

    invoke-direct {v7}, Lcom/sightcall/core/consent/ConsentViewModel;-><init>()V

    const/16 v9, 0x6c30

    const-string v3, "Information about your data"

    invoke-static/range {v2 .. v9}, Lcom/sightcall/core/consent/compose/ConsentViewKt;->ConsentView(Landroid/content/Context;Ljava/lang/String;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/sightcall/core/consent/ConsentViewModel;Landroidx/compose/runtime/Composer;I)V

    :goto_1
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Lwh;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Lwh;-><init>(II)V

    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1, v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;->f(I)V

    throw v0
.end method

.method private static final PreviewConsentView$lambda$1$0()Lkotlin/Unit;
    .locals 1

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method private static final PreviewConsentView$lambda$2$0()Lkotlin/Unit;
    .locals 1

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method private static final PreviewConsentView$lambda$3(ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {p1, p0}, Lcom/sightcall/core/consent/compose/ConsentViewKt;->PreviewConsentView(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic a(ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sightcall/core/consent/compose/ConsentViewKt;->PreviewConsentView$lambda$3(ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$ConsentView$lambda$0$0$4(Landroidx/compose/runtime/MutableFloatState;)F
    .locals 0

    invoke-static {p0}, Lcom/sightcall/core/consent/compose/ConsentViewKt;->ConsentView$lambda$0$0$4(Landroidx/compose/runtime/MutableFloatState;)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$ConsentView$lambda$0$0$5(Landroidx/compose/runtime/MutableFloatState;F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/core/consent/compose/ConsentViewKt;->ConsentView$lambda$0$0$5(Landroidx/compose/runtime/MutableFloatState;F)V

    return-void
.end method

.method public static final synthetic access$ConsentView$lambda$0$0$7(Landroidx/compose/runtime/MutableFloatState;)F
    .locals 0

    invoke-static {p0}, Lcom/sightcall/core/consent/compose/ConsentViewKt;->ConsentView$lambda$0$0$7(Landroidx/compose/runtime/MutableFloatState;)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$ConsentView$lambda$0$0$8(Landroidx/compose/runtime/MutableFloatState;F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/core/consent/compose/ConsentViewKt;->ConsentView$lambda$0$0$8(Landroidx/compose/runtime/MutableFloatState;F)V

    return-void
.end method

.method public static synthetic b()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/sightcall/core/consent/compose/ConsentViewKt;->PreviewConsentView$lambda$1$0()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/text/AnnotatedString;Lcom/sightcall/core/consent/ConsentViewModel;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/sightcall/core/consent/compose/ConsentViewKt;->ConsentView$lambda$0(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/text/AnnotatedString;Lcom/sightcall/core/consent/ConsentViewModel;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroid/content/Context;Ljava/lang/String;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/sightcall/core/consent/ConsentViewModel;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/sightcall/core/consent/compose/ConsentViewKt;->ConsentView$lambda$1(Landroid/content/Context;Ljava/lang/String;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/sightcall/core/consent/ConsentViewModel;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/sightcall/core/consent/compose/ConsentViewKt;->PreviewConsentView$lambda$2$0()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
