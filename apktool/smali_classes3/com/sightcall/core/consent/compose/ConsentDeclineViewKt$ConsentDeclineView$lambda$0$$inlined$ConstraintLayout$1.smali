.class public final Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt;->ConsentDeclineView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
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

.field final synthetic $contentTracker:Landroidx/compose/runtime/MutableState;

.field final synthetic $context$inlined:Landroid/content/Context;

.field final synthetic $declineBody$inlined:Ljava/lang/String;

.field final synthetic $declineTitle$inlined:Ljava/lang/String;

.field final synthetic $end:Landroidx/compose/runtime/MutableState;

.field final synthetic $onDeclineBack$inlined:Lkotlin/jvm/functions/Function0;

.field final synthetic $scope:Landroidx/constraintlayout/compose/ConstraintLayoutScope;

.field final synthetic $start:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/node/Ref;Landroidx/constraintlayout/compose/ConstraintLayoutScope;Lkotlinx/coroutines/channels/Channel;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$1;->$contentTracker:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$1;->$compositionSource:Landroidx/compose/ui/node/Ref;

    iput-object p3, p0, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$1;->$scope:Landroidx/constraintlayout/compose/ConstraintLayoutScope;

    iput-object p4, p0, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$1;->$channel:Lkotlinx/coroutines/channels/Channel;

    iput-object p5, p0, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$1;->$start:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$1;->$end:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$1;->$declineTitle$inlined:Ljava/lang/String;

    iput-object p8, p0, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$1;->$declineBody$inlined:Ljava/lang/String;

    iput-object p9, p0, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$1;->$context$inlined:Landroid/content/Context;

    iput-object p10, p0, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$1;->$onDeclineBack$inlined:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 446
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 47

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

    iget-object v1, v0, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$1;->$contentTracker:Landroidx/compose/runtime/MutableState;

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v1, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$1;->$compositionSource:Landroidx/compose/ui/node/Ref;

    iget-object v2, v1, Landroidx/compose/ui/node/Ref;->a:Landroidx/constraintlayout/compose/CompositionSource;

    sget-object v3, Landroidx/constraintlayout/compose/CompositionSource;->Unknown:Landroidx/constraintlayout/compose/CompositionSource;

    if-ne v2, v3, :cond_2

    sget-object v2, Landroidx/constraintlayout/compose/CompositionSource;->Content:Landroidx/constraintlayout/compose/CompositionSource;

    iput-object v2, v1, Landroidx/compose/ui/node/Ref;->a:Landroidx/constraintlayout/compose/CompositionSource;

    :cond_2
    iget-object v1, v0, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$1;->$scope:Landroidx/constraintlayout/compose/ConstraintLayoutScope;

    invoke-virtual {v1}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;->d()V

    iget-object v1, v0, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$1;->$scope:Landroidx/constraintlayout/compose/ConstraintLayoutScope;

    const v2, 0x3438db9b

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-virtual {v1}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;->c()Landroidx/constraintlayout/compose/ConstraintLayoutScope$ConstrainedLayoutReferences;

    move-result-object v1

    iget-object v1, v1, Landroidx/constraintlayout/compose/ConstraintLayoutScope$ConstrainedLayoutReferences;->a:Landroidx/constraintlayout/compose/ConstraintLayoutScope;

    invoke-virtual {v1}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;->b()Landroidx/constraintlayout/compose/ConstrainedLayoutReference;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;->b()Landroidx/constraintlayout/compose/ConstrainedLayoutReference;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;->b()Landroidx/constraintlayout/compose/ConstrainedLayoutReference;

    move-result-object v5

    invoke-virtual {v1}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;->b()Landroidx/constraintlayout/compose/ConstrainedLayoutReference;

    move-result-object v6

    invoke-virtual {v1}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;->b()Landroidx/constraintlayout/compose/ConstrainedLayoutReference;

    move-result-object v1

    invoke-static {v4}, Landroidx/compose/material3/MaterialTheme;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/Typography;

    move-result-object v7

    iget-object v8, v7, Landroidx/compose/material3/Typography;->g:Landroidx/compose/ui/text/TextStyle;

    invoke-static {}, Lcom/sightcall/graphik/ColorsKt;->getLocalVisionAppColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v7

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sightcall/graphik/Colors;

    sget v9, Lcom/sightcall/graphik/Colors;->$stable:I

    invoke-virtual {v7, v4, v9}, Lcom/sightcall/graphik/Colors;->getConsentTitleTextColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v10

    const/16 v23, 0x0

    const v24, 0xfffffe

    move v7, v9

    move-wide v9, v10

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    invoke-static/range {v8 .. v24}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/BaselineShift;IIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v15

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v8, :cond_3

    if-ne v9, v10, :cond_4

    :cond_3
    new-instance v9, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$1$1$1$1;

    invoke-direct {v9, v2}, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$1$1$1$1;-><init>(Landroidx/constraintlayout/compose/ConstrainedLayoutReference;)V

    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v9}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;->a(Landroidx/constraintlayout/compose/ConstrainedLayoutReference;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    move-object v8, v1

    iget-object v1, v0, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$1;->$declineTitle$inlined:Ljava/lang/String;

    const/16 v17, 0x0

    const v18, 0xfffc

    move-object v9, v3

    const-wide/16 v3, 0x0

    move-object v11, v5

    move-object v12, v6

    const-wide/16 v5, 0x0

    move v14, v7

    move-object v13, v8

    const-wide/16 v7, 0x0

    move-object/from16 v16, v9

    move-object/from16 v19, v10

    const-wide/16 v9, 0x0

    move-object/from16 v20, v11

    const/4 v11, 0x0

    move-object/from16 v21, v12

    const/4 v12, 0x0

    move-object/from16 v22, v13

    const/4 v13, 0x0

    move/from16 v23, v14

    const/4 v14, 0x0

    move-object/from16 v0, v16

    move-object/from16 v29, v19

    move-object/from16 v25, v20

    move-object/from16 v26, v21

    move-object/from16 v27, v22

    move/from16 v28, v23

    move-object/from16 v16, p1

    invoke-static/range {v1 .. v18}, Landroidx/compose/material3/TextKt;->b(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJJIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v4, v16

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_5

    move-object/from16 v1, v29

    if-ne v2, v1, :cond_6

    goto :goto_1

    :cond_5
    move-object/from16 v1, v29

    :goto_1
    new-instance v2, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$1$1$2$1;

    invoke-direct {v2, v0}, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$1$1$2$1;-><init>(Landroidx/constraintlayout/compose/ConstrainedLayoutReference;)V

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object/from16 v11, v25

    invoke-static {v11, v2}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;->a(Landroidx/constraintlayout/compose/ConstrainedLayoutReference;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v4, v2, v2}, Lcom/sightcall/graphik/composent/DividersKt;->VisionDivider(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    invoke-static {v4}, Landroidx/compose/material3/MaterialTheme;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/Typography;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/material3/Typography;->k:Landroidx/compose/ui/text/TextStyle;

    invoke-static {}, Lcom/sightcall/graphik/ColorsKt;->getLocalVisionAppColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sightcall/graphik/Colors;

    move/from16 v7, v28

    invoke-virtual {v2, v4, v7}, Lcom/sightcall/graphik/Colors;->getConsentBodyTextColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v30

    const/16 v44, 0x0

    const v45, 0xfffffe

    const-wide/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const-wide/16 v41, 0x0

    const/16 v43, 0x0

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v45}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/BaselineShift;IIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v15

    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_7

    if-ne v2, v1, :cond_8

    :cond_7
    new-instance v2, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$1$1$3$1;

    invoke-direct {v2, v11}, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$1$1$3$1;-><init>(Landroidx/constraintlayout/compose/ConstrainedLayoutReference;)V

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object/from16 v12, v26

    invoke-static {v12, v2}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;->a(Landroidx/constraintlayout/compose/ConstrainedLayoutReference;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$1;->$declineBody$inlined:Ljava/lang/String;

    const/16 v17, 0x0

    const v18, 0xfffc

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v16, p1

    move-object/from16 v46, v29

    invoke-static/range {v1 .. v18}, Landroidx/compose/material3/TextKt;->b(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJJIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v4, v16

    iget-object v1, v0, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$1;->$context$inlined:Landroid/content/Context;

    sget v2, Lcom/sightcall/core/R$string;->consent_declined_button_back:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$1;->$onDeclineBack$inlined:Lkotlin/jvm/functions/Function0;

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v7, v46

    if-ne v3, v7, :cond_9

    sget-object v3, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$1$1$4$1;->INSTANCE:Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$1$1$4$1;

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v3, Lkotlin/jvm/functions/Function1;

    move-object/from16 v13, v27

    invoke-static {v13, v3}, Landroidx/constraintlayout/compose/ConstraintLayoutScope;->a(Landroidx/constraintlayout/compose/ConstrainedLayoutReference;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/sightcall/graphik/composent/ButtonsKt;->LargeConfirmButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->F()V

    iget-object v1, v0, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$1;->$scope:Landroidx/constraintlayout/compose/ConstraintLayoutScope;

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, v0, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$1;->$channel:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, v0, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$1;->$scope:Landroidx/constraintlayout/compose/ConstraintLayoutScope;

    iget-object v3, v0, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$1;->$start:Landroidx/compose/runtime/MutableState;

    iget-object v5, v0, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$1;->$end:Landroidx/compose/runtime/MutableState;

    iget-object v0, v0, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$1;->$channel:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v1, :cond_a

    if-ne v6, v7, :cond_b

    :cond_a
    new-instance v6, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$1$1;

    invoke-direct {v6, v2, v3, v5, v0}, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$1$1;-><init>(Landroidx/constraintlayout/compose/ConstraintLayoutScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlinx/coroutines/channels/Channel;)V

    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v6, v4}, Landroidx/compose/runtime/EffectsKt;->i(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    return-void
.end method
