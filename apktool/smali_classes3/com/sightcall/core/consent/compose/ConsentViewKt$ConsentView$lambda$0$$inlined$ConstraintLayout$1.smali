.class public final Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/core/consent/compose/ConsentViewKt;->ConsentView(Landroid/content/Context;Ljava/lang/String;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/sightcall/core/consent/ConsentViewModel;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\u000b\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $channel:Lkotlinx/coroutines/channels/Channel;

.field final synthetic $compositionSource:Landroidx/compose/ui/node/Ref;

.field final synthetic $consentBody$inlined:Landroidx/compose/ui/text/AnnotatedString;

.field final synthetic $consentTitle$inlined:Ljava/lang/String;

.field final synthetic $contentTracker:Landroidx/compose/runtime/MutableState;

.field final synthetic $context$inlined:Landroid/content/Context;

.field final synthetic $end:Landroidx/compose/runtime/MutableState;

.field final synthetic $onAccept$inlined:Lkotlin/jvm/functions/Function0;

.field final synthetic $onDecline$inlined:Lkotlin/jvm/functions/Function0;

.field final synthetic $scope:Landroidx/constraintlayout/compose/ConstraintLayoutScope;

.field final synthetic $start:Landroidx/compose/runtime/MutableState;

.field final synthetic $viewModel$inlined:Lcom/sightcall/core/consent/ConsentViewModel;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/node/Ref;Landroidx/constraintlayout/compose/ConstraintLayoutScope;Lkotlinx/coroutines/channels/Channel;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/text/AnnotatedString;Lcom/sightcall/core/consent/ConsentViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->$contentTracker:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->$compositionSource:Landroidx/compose/ui/node/Ref;

    iput-object p3, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->$scope:Landroidx/constraintlayout/compose/ConstraintLayoutScope;

    iput-object p4, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->$channel:Lkotlinx/coroutines/channels/Channel;

    iput-object p5, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->$start:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->$end:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->$context$inlined:Landroid/content/Context;

    iput-object p8, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->$consentTitle$inlined:Ljava/lang/String;

    iput-object p9, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->$onAccept$inlined:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->$onDecline$inlined:Lkotlin/jvm/functions/Function0;

    iput-object p11, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->$consentBody$inlined:Landroidx/compose/ui/text/AnnotatedString;

    iput-object p12, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->$viewModel$inlined:Lcom/sightcall/core/consent/ConsentViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1287
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 54

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    and-int/lit8 v1, p2, 0x3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->i()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->D()V

    return-void

    :cond_1
    :goto_0
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->$contentTracker:Landroidx/compose/runtime/MutableState;

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v1, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->$compositionSource:Landroidx/compose/ui/node/Ref;

    iget-object v2, v1, Landroidx/compose/ui/node/Ref;->a:Landroidx/constraintlayout/compose/CompositionSource;

    sget-object v3, Landroidx/constraintlayout/compose/CompositionSource;->Unknown:Landroidx/constraintlayout/compose/CompositionSource;

    if-ne v2, v3, :cond_2

    sget-object v2, Landroidx/constraintlayout/compose/CompositionSource;->Content:Landroidx/constraintlayout/compose/CompositionSource;

    iput-object v2, v1, Landroidx/compose/ui/node/Ref;->a:Landroidx/constraintlayout/compose/CompositionSource;

    :cond_2
    iget-object v1, v0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->$scope:Landroidx/constraintlayout/compose/ConstraintLayoutScope;

    invoke-virtual {v1}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;->d()V

    iget-object v1, v0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->$scope:Landroidx/constraintlayout/compose/ConstraintLayoutScope;

    const v2, -0x6df8d48b

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-virtual {v1}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;->c()Landroidx/constraintlayout/compose/ConstraintLayoutScope$ConstrainedLayoutReferences;

    move-result-object v1

    iget-object v1, v1, Landroidx/constraintlayout/compose/ConstraintLayoutScope$ConstrainedLayoutReferences;->a:Landroidx/constraintlayout/compose/ConstraintLayoutScope;

    invoke-virtual {v1}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;->b()Landroidx/constraintlayout/compose/ConstrainedLayoutReference;

    move-result-object v11

    invoke-virtual {v1}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;->b()Landroidx/constraintlayout/compose/ConstrainedLayoutReference;

    move-result-object v12

    invoke-virtual {v1}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;->b()Landroidx/constraintlayout/compose/ConstrainedLayoutReference;

    move-result-object v13

    invoke-virtual {v1}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;->b()Landroidx/constraintlayout/compose/ConstrainedLayoutReference;

    move-result-object v14

    invoke-virtual {v1}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;->b()Landroidx/constraintlayout/compose/ConstrainedLayoutReference;

    move-result-object v15

    invoke-virtual {v1}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;->b()Landroidx/constraintlayout/compose/ConstrainedLayoutReference;

    move-result-object v1

    iget-object v2, v0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->$context$inlined:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sightcall/graphik/R$bool;->universal_feature_universal_logo:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    const v2, -0x6df8187d

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    sget v2, Lcom/sightcall/graphik/R$drawable;->universal_consent_logo:I

    invoke-static {v2, v4, v5}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v2

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_3

    sget-object v6, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$1$1$1$1;->INSTANCE:Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$1$1$1$1;

    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {v11, v6}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;->a(Landroidx/constraintlayout/compose/ConstrainedLayoutReference;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    sget-object v6, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v21, 0x7

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v20, 0x41800000    # 16.0f

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v22

    const/16 v27, 0x0

    const v28, 0x1fffc

    const/high16 v23, 0x3fc00000    # 1.5f

    const/high16 v24, 0x3fc00000    # 1.5f

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v22 .. v28}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->b(Landroidx/compose/ui/Modifier;FFFFLandroidx/compose/ui/graphics/Shape;I)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const/16 v9, 0x30

    const/16 v10, 0x78

    move-object v7, v1

    move-object v1, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v8, v5

    const/4 v5, 0x0

    move-object/from16 v16, v3

    move-object v3, v6

    const/4 v6, 0x0

    move-object/from16 v17, v7

    const/4 v7, 0x0

    move-object/from16 v8, p1

    move-object/from16 p2, v13

    move-object/from16 v13, v16

    move-object/from16 v29, v17

    invoke-static/range {v1 .. v10}, Landroidx/compose/foundation/ImageKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    move-object v4, v8

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_1

    :cond_4
    move-object/from16 v29, v1

    move-object/from16 p2, v13

    move-object v13, v3

    const v1, -0x6dee5be5

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->F()V

    :goto_1
    invoke-static {v4}, Landroidx/compose/material3/MaterialTheme;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/Typography;

    move-result-object v1

    iget-object v1, v1, Landroidx/compose/material3/Typography;->g:Landroidx/compose/ui/text/TextStyle;

    invoke-static {}, Lcom/sightcall/graphik/ColorsKt;->getLocalVisionAppColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sightcall/graphik/Colors;

    sget v3, Lcom/sightcall/graphik/Colors;->$stable:I

    invoke-virtual {v2, v4, v3}, Lcom/sightcall/graphik/Colors;->getConsentTitleTextColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v31

    const/16 v45, 0x0

    const v46, 0xfffffe

    const-wide/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const-wide/16 v42, 0x0

    const/16 v44, 0x0

    move-object/from16 v30, v1

    invoke-static/range {v30 .. v46}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/BaselineShift;IIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v1

    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_5

    if-ne v5, v13, :cond_6

    :cond_5
    new-instance v5, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$1$1$2$1;

    invoke-direct {v5, v11}, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$1$1$2$1;-><init>(Landroidx/constraintlayout/compose/ConstrainedLayoutReference;)V

    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v12, v5}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;->a(Landroidx/constraintlayout/compose/ConstrainedLayoutReference;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    move-object v5, v15

    move-object v15, v1

    iget-object v1, v0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->$consentTitle$inlined:Ljava/lang/String;

    const/16 v17, 0x0

    const v18, 0xfffc

    move v6, v3

    const-wide/16 v3, 0x0

    move-object v7, v5

    move v8, v6

    const-wide/16 v5, 0x0

    move-object v9, v7

    move v10, v8

    const-wide/16 v7, 0x0

    move-object v11, v9

    move/from16 v16, v10

    const-wide/16 v9, 0x0

    move-object/from16 v19, v11

    const/4 v11, 0x0

    move-object/from16 v20, v12

    const/4 v12, 0x0

    move-object/from16 v21, v13

    const/4 v13, 0x0

    move-object/from16 v22, v14

    const/4 v14, 0x0

    move-object/from16 v47, p2

    move/from16 v50, v16

    move-object/from16 v49, v19

    move-object/from16 v0, v20

    move-object/from16 v51, v21

    move-object/from16 v48, v22

    move-object/from16 v16, p1

    invoke-static/range {v1 .. v18}, Landroidx/compose/material3/TextKt;->b(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJJIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v4, v16

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v13, v51

    if-nez v1, :cond_7

    if-ne v2, v13, :cond_8

    :cond_7
    new-instance v2, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$1$1$3$1;

    invoke-direct {v2, v0}, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$1$1$3$1;-><init>(Landroidx/constraintlayout/compose/ConstrainedLayoutReference;)V

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object/from16 v0, v48

    invoke-static {v0, v2}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;->a(Landroidx/constraintlayout/compose/ConstrainedLayoutReference;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v12, 0x0

    invoke-static {v1, v4, v12, v12}, Lcom/sightcall/graphik/composent/DividersKt;->VisionDivider(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    const/4 v14, 0x0

    if-ne v1, v13, :cond_9

    invoke-static {v14}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->a(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object v1

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    move-object v15, v1

    check-cast v15, Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v13, :cond_a

    invoke-static {v14}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->a(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object v1

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v1, Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v3, v49

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v2, v5

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_b

    if-ne v5, v13, :cond_c

    :cond_b
    new-instance v5, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$1$1$4$1;

    invoke-direct {v5, v0, v3}, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$1$1$4$1;-><init>(Landroidx/constraintlayout/compose/ConstrainedLayoutReference;Landroidx/constraintlayout/compose/ConstrainedLayoutReference;)V

    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v5, Lkotlin/jvm/functions/Function1;

    move-object/from16 v0, v47

    invoke-static {v0, v5}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;->a(Landroidx/constraintlayout/compose/ConstrainedLayoutReference;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v13, :cond_d

    new-instance v2, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$1$1$5$1;

    invoke-direct {v2, v1}, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$1$1$5$1;-><init>(Landroidx/compose/runtime/MutableFloatState;)V

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v2}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v5, v12}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v6

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->G()I

    move-result v7

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v4, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v10

    const/16 v16, 0x0

    if-eqz v10, :cond_24

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_e
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->o()V

    :goto_2
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v6, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v8, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v11

    if-nez v11, :cond_f

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_f
    invoke-static {v8, v7, v4, v7}, Lfc;->A(Lkotlin/jvm/functions/Function2;ILandroidx/compose/runtime/Composer;I)V

    :cond_10
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v0, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4}, Landroidx/compose/foundation/ScrollKt;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/ScrollState;

    move-result-object v0

    sget-object v7, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    const/16 v11, 0xe

    invoke-static {v7, v0, v12, v11}, Landroidx/compose/foundation/ScrollKt;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZI)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v13, :cond_11

    new-instance v11, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$1$1$6$1$1;

    invoke-direct {v11, v15}, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$1$1$6$1$1;-><init>(Landroidx/compose/runtime/MutableFloatState;)V

    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-static {v7, v11}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v17

    sget-object v7, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v21, 0x0

    const/16 v22, 0xb

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v20, 0x41800000    # 16.0f

    invoke-static/range {v17 .. v22}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v11, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    move/from16 v17, v14

    sget-object v14, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v11, v14, v4, v12}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v11

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->G()I

    move-result v14

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    invoke-static {v4, v7}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v18

    if-eqz v18, :cond_23

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v18

    if-eqz v18, :cond_12

    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_12
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->o()V

    :goto_3
    invoke-static {v4, v11, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4, v12, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v11

    if-nez v11, :cond_13

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_14

    :cond_13
    invoke-static {v8, v14, v4, v14}, Lfc;->A(Lkotlin/jvm/functions/Function2;ILandroidx/compose/runtime/Composer;I)V

    :cond_14
    invoke-static {v4, v7, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4}, Landroidx/compose/material3/MaterialTheme;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/Typography;

    move-result-object v7

    iget-object v7, v7, Landroidx/compose/material3/Typography;->k:Landroidx/compose/ui/text/TextStyle;

    invoke-static {}, Lcom/sightcall/graphik/ColorsKt;->getLocalVisionAppColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v11

    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sightcall/graphik/Colors;

    move/from16 v12, v50

    invoke-virtual {v11, v4, v12}, Lcom/sightcall/graphik/Colors;->getConsentBodyTextColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v31

    const/16 v45, 0x0

    const v46, 0xfffffe

    const-wide/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const-wide/16 v42, 0x0

    const/16 v44, 0x0

    move-object/from16 v30, v7

    invoke-static/range {v30 .. v46}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/BaselineShift;IIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v7

    move-object/from16 v12, p0

    move-object v11, v1

    iget-object v1, v12, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->$consentBody$inlined:Landroidx/compose/ui/text/AnnotatedString;

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 v18, v1

    iget-object v1, v12, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->$viewModel$inlined:Lcom/sightcall/core/consent/ConsentViewModel;

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v1, v14

    iget-object v14, v12, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->$context$inlined:Landroid/content/Context;

    invoke-interface {v4, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v1, v14

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v1, :cond_16

    if-ne v14, v13, :cond_15

    goto :goto_4

    :cond_15
    move-object/from16 v19, v2

    move-object/from16 v49, v3

    goto :goto_5

    :cond_16
    :goto_4
    new-instance v14, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$1$1$6$2$1$1;

    iget-object v1, v12, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->$consentBody$inlined:Landroidx/compose/ui/text/AnnotatedString;

    move-object/from16 v19, v2

    iget-object v2, v12, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->$viewModel$inlined:Lcom/sightcall/core/consent/ConsentViewModel;

    move-object/from16 v49, v3

    iget-object v3, v12, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->$context$inlined:Landroid/content/Context;

    invoke-direct {v14, v1, v2, v3}, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$1$1$6$2$1$1;-><init>(Landroidx/compose/ui/text/AnnotatedString;Lcom/sightcall/core/consent/ConsentViewModel;Landroid/content/Context;)V

    invoke-interface {v4, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_5
    check-cast v14, Lkotlin/jvm/functions/Function1;

    move-object v1, v10

    const/16 v10, 0x30

    move-object v2, v11

    const/16 v11, 0x78

    move-object v3, v2

    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    const/4 v4, 0x0

    move-object/from16 v21, v5

    const/4 v5, 0x0

    move-object/from16 v22, v6

    const/4 v6, 0x0

    move-object/from16 v23, v3

    move-object v3, v7

    const/4 v7, 0x0

    move-object/from16 v52, v8

    move-object v8, v14

    move-object/from16 p2, v15

    move-object/from16 v53, v19

    move-object/from16 v15, v21

    move-object/from16 v19, v49

    const/high16 v12, 0x3f800000    # 1.0f

    move-object v14, v9

    move-object/from16 v21, v13

    move-object/from16 v9, p1

    move-object v13, v1

    move-object/from16 v1, v18

    invoke-static/range {v1 .. v11}, Landroidx/compose/foundation/text/ClickableTextKt;->a(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;ZIILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object v4, v9

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->r()V

    invoke-static/range {p2 .. p2}, Lcom/sightcall/core/consent/compose/ConsentViewKt;->access$ConsentView$lambda$0$0$4(Landroidx/compose/runtime/MutableFloatState;)F

    move-result v1

    invoke-static/range {v23 .. v23}, Lcom/sightcall/core/consent/compose/ConsentViewKt;->access$ConsentView$lambda$0$0$7(Landroidx/compose/runtime/MutableFloatState;)F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_17

    iget-object v0, v0, Landroidx/compose/foundation/ScrollState;->a:Landroidx/compose/runtime/MutableIntState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->f()I

    move-result v0

    int-to-float v0, v0

    invoke-static/range {p2 .. p2}, Lcom/sightcall/core/consent/compose/ConsentViewKt;->access$ConsentView$lambda$0$0$4(Landroidx/compose/runtime/MutableFloatState;)F

    move-result v1

    invoke-static/range {v23 .. v23}, Lcom/sightcall/core/consent/compose/ConsentViewKt;->access$ConsentView$lambda$0$0$7(Landroidx/compose/runtime/MutableFloatState;)F

    move-result v3

    sub-float/2addr v1, v3

    div-float/2addr v0, v1

    goto :goto_6

    :cond_17
    move/from16 v0, v17

    :goto_6
    invoke-static/range {v23 .. v23}, Lcom/sightcall/core/consent/compose/ConsentViewKt;->access$ConsentView$lambda$0$0$7(Landroidx/compose/runtime/MutableFloatState;)F

    move-result v1

    invoke-static/range {p2 .. p2}, Lcom/sightcall/core/consent/compose/ConsentViewKt;->access$ConsentView$lambda$0$0$4(Landroidx/compose/runtime/MutableFloatState;)F

    move-result v3

    div-float/2addr v1, v3

    invoke-static/range {v23 .. v23}, Lcom/sightcall/core/consent/compose/ConsentViewKt;->access$ConsentView$lambda$0$0$7(Landroidx/compose/runtime/MutableFloatState;)F

    move-result v3

    mul-float/2addr v3, v1

    invoke-static/range {v23 .. v23}, Lcom/sightcall/core/consent/compose/ConsentViewKt;->access$ConsentView$lambda$0$0$7(Landroidx/compose/runtime/MutableFloatState;)F

    move-result v1

    cmpl-float v5, v3, v1

    if-lez v5, :cond_18

    move v3, v1

    :cond_18
    invoke-static/range {v23 .. v23}, Lcom/sightcall/core/consent/compose/ConsentViewKt;->access$ConsentView$lambda$0$0$7(Landroidx/compose/runtime/MutableFloatState;)F

    move-result v1

    sub-float/2addr v1, v3

    mul-float/2addr v1, v0

    invoke-static/range {v23 .. v23}, Lcom/sightcall/core/consent/compose/ConsentViewKt;->access$ConsentView$lambda$0$0$7(Landroidx/compose/runtime/MutableFloatState;)F

    move-result v0

    cmpl-float v0, v0, v17

    if-lez v0, :cond_1d

    invoke-static/range {p2 .. p2}, Lcom/sightcall/core/consent/compose/ConsentViewKt;->access$ConsentView$lambda$0$0$4(Landroidx/compose/runtime/MutableFloatState;)F

    move-result v0

    cmpl-float v0, v0, v17

    if-lez v0, :cond_1d

    invoke-static/range {p2 .. p2}, Lcom/sightcall/core/consent/compose/ConsentViewKt;->access$ConsentView$lambda$0$0$4(Landroidx/compose/runtime/MutableFloatState;)F

    move-result v0

    invoke-static/range {v23 .. v23}, Lcom/sightcall/core/consent/compose/ConsentViewKt;->access$ConsentView$lambda$0$0$7(Landroidx/compose/runtime/MutableFloatState;)F

    move-result v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1d

    const v0, 0x5bca8901

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->g:Landroidx/compose/ui/BiasAlignment;

    sget-object v5, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v5, v2, v0}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v0, v5}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, v12}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v5, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v5, Landroidx/compose/ui/graphics/Color;->h:J

    sget-object v7, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v0, v5, v6, v7}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v8, 0x0

    invoke-static {v15, v8}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v5

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->G()I

    move-result v6

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v7

    invoke-static {v4, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v8

    if-eqz v8, :cond_1c

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-interface {v4, v14}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_7

    :cond_19
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->o()V

    :goto_7
    invoke-static {v4, v5, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v5, v22

    invoke-static {v4, v7, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    :cond_1a
    move-object/from16 v5, v52

    goto :goto_9

    :cond_1b
    :goto_8
    move-object/from16 v5, v53

    goto :goto_a

    :goto_9
    invoke-static {v5, v6, v4, v6}, Lfc;->A(Lkotlin/jvm/functions/Function2;ILandroidx/compose/runtime/Composer;I)V

    goto :goto_8

    :goto_a
    invoke-static {v4, v0, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2, v12}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/unit/Density;

    invoke-interface {v5, v3}, Landroidx/compose/ui/unit/Density;->l1(F)F

    move-result v3

    new-instance v5, Landroidx/compose/ui/unit/Dp;

    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/Density;

    invoke-interface {v2, v1}, Landroidx/compose/ui/unit/Density;->l1(F)F

    move-result v1

    const/4 v2, 0x1

    move/from16 v3, v17

    invoke-static {v0, v3, v1, v2}, Landroidx/compose/foundation/layout/OffsetKt;->c(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-wide v1, Landroidx/compose/ui/graphics/Color;->d:J

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v8, 0x0

    invoke-static {v0, v4, v8}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->r()V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_b

    :cond_1c
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v16

    :cond_1d
    const v0, 0x5bd5cc01

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->F()V

    :goto_b
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->r()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->$context$inlined:Landroid/content/Context;

    sget v2, Lcom/sightcall/core/R$string;->consent_button_accept:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->$onAccept$inlined:Lkotlin/jvm/functions/Function0;

    move-object/from16 v7, v29

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v13, v21

    if-nez v3, :cond_1e

    if-ne v5, v13, :cond_1f

    :cond_1e
    new-instance v5, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$1$1$7$1;

    invoke-direct {v5, v7}, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$1$1$7$1;-><init>(Landroidx/constraintlayout/compose/ConstrainedLayoutReference;)V

    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1f
    check-cast v5, Lkotlin/jvm/functions/Function1;

    move-object/from16 v3, v19

    invoke-static {v3, v5}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;->a(Landroidx/constraintlayout/compose/ConstrainedLayoutReference;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v23

    const/16 v27, 0x0

    const/16 v28, 0xd

    const/16 v24, 0x0

    const/16 v26, 0x0

    move/from16 v25, v20

    invoke-static/range {v23 .. v28}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/sightcall/graphik/composent/ButtonsKt;->LargeConfirmButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    iget-object v1, v0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->$context$inlined:Landroid/content/Context;

    sget v2, Lcom/sightcall/core/R$string;->consent_button_decline:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->$onDecline$inlined:Lkotlin/jvm/functions/Function0;

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v13, :cond_20

    sget-object v3, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$1$1$8$1;->INSTANCE:Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$1$1$8$1;

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_20
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v7, v3}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;->a(Landroidx/constraintlayout/compose/ConstrainedLayoutReference;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/sightcall/graphik/composent/ButtonsKt;->VisionTextButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->F()V

    iget-object v1, v0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->$scope:Landroidx/constraintlayout/compose/ConstraintLayoutScope;

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, v0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->$channel:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, v0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->$scope:Landroidx/constraintlayout/compose/ConstraintLayoutScope;

    iget-object v3, v0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->$start:Landroidx/compose/runtime/MutableState;

    iget-object v5, v0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->$end:Landroidx/compose/runtime/MutableState;

    iget-object v0, v0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->$channel:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v1, :cond_21

    if-ne v6, v13, :cond_22

    :cond_21
    new-instance v6, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1$1;

    invoke-direct {v6, v2, v3, v5, v0}, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1$1;-><init>(Landroidx/constraintlayout/compose/ConstraintLayoutScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlinx/coroutines/channels/Channel;)V

    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_22
    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v6, v4}, Landroidx/compose/runtime/EffectsKt;->i(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    return-void

    :cond_23
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v16

    :cond_24
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v16
.end method
