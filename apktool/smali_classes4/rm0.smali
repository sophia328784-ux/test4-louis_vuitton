.class public final synthetic Lrm0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Landroidx/compose/material3/TopAppBarScrollBehavior;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;

.field public final synthetic e:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:Lkotlin/jvm/functions/Function0;

.field public final synthetic j:Lkotlin/jvm/functions/Function1;

.field public final synthetic k:Lkotlin/jvm/functions/Function0;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Lcom/vuitton/android/presentation/contact/ContactUsTracker;

.field public final synthetic n:Lkotlin/jvm/functions/Function0;

.field public final synthetic o:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(ZLandroidx/compose/material3/TopAppBarScrollBehavior;Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/contact/ContactUsTracker;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lrm0;->b:Z

    iput-object p2, p0, Lrm0;->c:Landroidx/compose/material3/TopAppBarScrollBehavior;

    iput-object p3, p0, Lrm0;->d:Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;

    iput-object p4, p0, Lrm0;->e:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    iput-object p5, p0, Lrm0;->f:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lrm0;->g:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

    iput-object p7, p0, Lrm0;->h:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lrm0;->i:Lkotlin/jvm/functions/Function0;

    iput-object p9, p0, Lrm0;->j:Lkotlin/jvm/functions/Function1;

    iput-object p10, p0, Lrm0;->k:Lkotlin/jvm/functions/Function0;

    iput-object p11, p0, Lrm0;->l:Lkotlin/jvm/functions/Function1;

    iput-object p12, p0, Lrm0;->m:Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    iput-object p13, p0, Lrm0;->n:Lkotlin/jvm/functions/Function0;

    iput-object p14, p0, Lrm0;->o:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    and-int/2addr v1, v5

    invoke-interface {v12, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v0, Lrm0;->c:Landroidx/compose/material3/TopAppBarScrollBehavior;

    invoke-interface {v1}, Landroidx/compose/material3/TopAppBarScrollBehavior;->getState()Landroidx/compose/material3/TopAppBarState;

    move-result-object v1

    iget-object v1, v1, Landroidx/compose/material3/TopAppBarState;->b:Landroidx/compose/runtime/MutableFloatState;

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->a()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    move v2, v5

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    iget-object v14, v0, Lrm0;->d:Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;

    iget-boolean v3, v14, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->e:Z

    iget-boolean v4, v14, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->A:Z

    iget-object v1, v14, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->i:Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;

    iget-boolean v5, v1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->n:Z

    iget-boolean v6, v14, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->B:Z

    iget-object v1, v0, Lrm0;->e:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    iget-boolean v7, v1, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->a:Z

    iget-object v8, v14, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->l:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;

    invoke-interface {v12, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    iget-object v15, v0, Lrm0;->f:Lkotlin/jvm/functions/Function0;

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v9, v10

    iget-object v10, v0, Lrm0;->g:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v9, v11

    iget-object v11, v0, Lrm0;->h:Lkotlin/jvm/functions/Function1;

    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v9, v13

    iget-object v13, v0, Lrm0;->i:Lkotlin/jvm/functions/Function0;

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v16

    or-int v9, v9, v16

    move/from16 p1, v2

    iget-object v2, v0, Lrm0;->j:Lkotlin/jvm/functions/Function1;

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v16

    or-int v9, v9, v16

    move-object/from16 v21, v2

    iget-object v2, v0, Lrm0;->k:Lkotlin/jvm/functions/Function0;

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v16

    or-int v9, v9, v16

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v16

    or-int v9, v9, v16

    move-object/from16 v17, v1

    iget-object v1, v0, Lrm0;->l:Lkotlin/jvm/functions/Function1;

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v16

    or-int v9, v9, v16

    move-object/from16 v22, v1

    iget-object v1, v0, Lrm0;->m:Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v16

    or-int v9, v9, v16

    move-object/from16 v23, v1

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v2

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v9, :cond_2

    if-ne v1, v2, :cond_3

    :cond_2
    move-object/from16 v20, v13

    new-instance v13, Lvm0;

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    invoke-direct/range {v13 .. v23}, Lvm0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/contact/ContactUsTracker;)V

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v1, v13

    :cond_3
    move-object v9, v1

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_4

    new-instance v1, Lc30;

    const/16 v2, 0x19

    iget-object v10, v0, Lrm0;->o:Landroidx/compose/runtime/MutableState;

    invoke-direct {v1, v2, v10}, Lc30;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object v11, v1

    check-cast v11, Lkotlin/jvm/functions/Function1;

    const/4 v13, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    iget-boolean v1, v0, Lrm0;->b:Z

    iget-object v10, v0, Lrm0;->n:Lkotlin/jvm/functions/Function0;

    move-object v0, v2

    move/from16 v2, p1

    invoke-static/range {v0 .. v13}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt;->a(Landroidx/compose/ui/Modifier;ZZZZZZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_2

    :cond_5
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
