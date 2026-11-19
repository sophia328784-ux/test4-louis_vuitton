.class public final synthetic Ll00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Ll00;->b:I

    iput-object p1, p0, Ll00;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    iget v1, v0, Ll00;->b:I

    const/4 v2, 0x0

    const-string v3, "entered drag with non-zero pending scroll"

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v0, v0, Ll00;->c:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->a:Landroid/view/SurfaceView;

    invoke-static {v0, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->c(Landroid/view/SurfaceView;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :pswitch_0
    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->a:Landroid/view/SurfaceView;

    invoke-static {v0, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->c(Landroid/view/SurfaceView;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :pswitch_1
    check-cast v0, Lcom/sightcall/livetranslation/live/LiveSentencesViewHolder;

    move-object/from16 v1, p1

    check-cast v1, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;

    invoke-static {v0, v1}, Lcom/sightcall/livetranslation/live/LiveSentencesViewHolder;->b(Lcom/sightcall/livetranslation/live/LiveSentencesViewHolder;Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;)Lkotlin/Unit;

    move-result-object v0

    return-object v0

    :pswitch_2
    check-cast v0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/LineAnnotation;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-static {v0, v1}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/LineAnnotation;->e(Lcom/sightcall/advancedannotations/domain/drawer/annotation/LineAnnotation;Landroidx/constraintlayout/widget/ConstraintSet;)Lkotlin/Unit;

    move-result-object v0

    return-object v0

    :pswitch_3
    check-cast v0, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;

    iget-object v0, v0, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;->c:Lcom/vuitton/android/data/database/converter/EnumConverter;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    sget-object v2, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;->e:Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "SELECT * FROM LightUp"

    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->T1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    :try_start_0
    const-string v2, "DEVICE_ID"

    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    const-string v3, "TYPE"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    const-string v4, "NAME"

    invoke-static {v1, v4}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    const-string v5, "POWER_MODE"

    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    const-string v9, "PRESET_NAME"

    invoke-static {v1, v9}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    const-string v10, "PRESET_IMAGE"

    invoke-static {v1, v10}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v10

    const-string v11, "PRESET_ID"

    invoke-static {v1, v11}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v11

    const-string v12, "DEVICE_TO_STRING"

    invoke-static {v1, v12}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->Q1()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->m1(I)Ljava/lang/String;

    move-result-object v16

    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;->Companion:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v14, v8, :cond_1

    if-ne v14, v6, :cond_0

    sget-object v14, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;->X408PAIR:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    :goto_1
    move-object/from16 v17, v14

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unhandled Light Up product type"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v14, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;->KEEPALL:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    goto :goto_1

    :goto_2
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v18, v7

    goto :goto_3

    :cond_2
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->m1(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v18, v14

    :goto_3
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14}, Lcom/vuitton/android/data/database/converter/EnumConverter;->a(I)Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    move-result-object v19

    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v20, v7

    goto :goto_4

    :cond_3
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->m1(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v20, v14

    :goto_4
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v21, v7

    goto :goto_5

    :cond_4
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->m1(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v21, v14

    :goto_5
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v22, v7

    goto :goto_6

    :cond_5
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->m1(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v22, v14

    :goto_6
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->m1(I)Ljava/lang/String;

    move-result-object v23

    new-instance v15, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;

    invoke-direct/range {v15 .. v23}, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_6
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    return-object v13

    :goto_7
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_4
    check-cast v0, Landroidx/camera/core/CameraX;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Void;

    iget-object v0, v0, Landroidx/camera/core/CameraX;->m:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0

    :pswitch_5
    check-cast v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    neg-float v1, v1

    iget-object v2, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->d:Landroidx/compose/runtime/MutableState;

    cmpg-float v6, v1, v4

    if-gez v6, :cond_7

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->d()Z

    move-result v6

    if-eqz v6, :cond_10

    :cond_7
    cmpl-float v6, v1, v4

    if-lez v6, :cond_8

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->b()Z

    move-result v6

    if-nez v6, :cond_8

    goto/16 :goto_b

    :cond_8
    iget v6, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->o:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v5

    if-gtz v6, :cond_9

    goto :goto_8

    :cond_9
    invoke-static {v3}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    :goto_8
    iget v3, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->o:F

    add-float/2addr v3, v1

    iput v3, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->o:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_e

    iget v3, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->o:F

    invoke-static {v3}, Lkotlin/math/MathKt;->c(F)I

    move-result v6

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    iget-boolean v10, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->a:Z

    xor-int/2addr v10, v8

    invoke-virtual {v9, v6, v10}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->h(IZ)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    move-result-object v9

    if-eqz v9, :cond_a

    iget-object v10, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->b:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    if-eqz v10, :cond_a

    invoke-virtual {v10, v6, v8}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->h(IZ)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    move-result-object v6

    if-eqz v6, :cond_b

    iput-object v6, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->b:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    :cond_a
    move-object v7, v9

    :cond_b
    if-eqz v7, :cond_c

    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->a:Z

    invoke-virtual {v0, v7, v2, v8}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->f(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;ZZ)V

    iget-object v2, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->u:Landroidx/compose/runtime/MutableState;

    invoke-static {v2}, Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;->b(Landroidx/compose/runtime/MutableState;)V

    iget v2, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->o:F

    sub-float/2addr v3, v2

    invoke-virtual {v0, v3, v7}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->h(FLandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;)V

    goto :goto_9

    :cond_c
    iget-object v6, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->h:Landroidx/compose/ui/layout/Remeasurement;

    if-eqz v6, :cond_d

    invoke-interface {v6}, Landroidx/compose/ui/layout/Remeasurement;->e()V

    :cond_d
    iget v6, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->o:F

    sub-float/2addr v3, v6

    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    invoke-virtual {v0, v3, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->h(FLandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;)V

    :cond_e
    :goto_9
    iget v2, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->o:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_f

    :goto_a
    move v4, v1

    goto :goto_b

    :cond_f
    iget v2, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->o:F

    sub-float/2addr v1, v2

    iput v4, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->o:F

    goto :goto_a

    :cond_10
    :goto_b
    neg-float v0, v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_6
    check-cast v0, Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    return-object v0

    :pswitch_7
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListState;->r:Landroidx/compose/foundation/lazy/LazyListState$prefetchScope$1;

    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListState;->a:Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;

    iget-boolean v6, v0, Landroidx/compose/foundation/lazy/LazyListState;->k:Z

    move-object/from16 v9, p1

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    sget-object v10, Landroidx/compose/foundation/lazy/LazyListState;->y:Landroidx/compose/foundation/lazy/LazyListState$Companion;

    neg-float v9, v9

    cmpg-float v10, v9, v4

    if-gez v10, :cond_11

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->d()Z

    move-result v10

    if-eqz v10, :cond_1a

    :cond_11
    cmpl-float v10, v9, v4

    if-lez v10, :cond_12

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->b()Z

    move-result v10

    if-nez v10, :cond_12

    goto/16 :goto_f

    :cond_12
    iget v10, v0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v10, v10, v5

    if-gtz v10, :cond_13

    goto :goto_c

    :cond_13
    invoke-static {v3}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    :goto_c
    iput-boolean v8, v0, Landroidx/compose/foundation/lazy/LazyListState;->d:Z

    iget v3, v0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    add-float/2addr v3, v9

    iput v3, v0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_18

    iget v3, v0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    iget-object v11, v0, Landroidx/compose/foundation/lazy/LazyListState;->f:Landroidx/compose/runtime/MutableState;

    check-cast v11, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v11}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    iget-boolean v12, v0, Landroidx/compose/foundation/lazy/LazyListState;->b:Z

    xor-int/2addr v12, v8

    invoke-virtual {v11, v10, v12}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->m(IZ)Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-result-object v11

    if-eqz v11, :cond_14

    iget-object v12, v0, Landroidx/compose/foundation/lazy/LazyListState;->c:Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    if-eqz v12, :cond_14

    invoke-virtual {v12, v10, v8}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->m(IZ)Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-result-object v10

    if-eqz v10, :cond_15

    iput-object v10, v0, Landroidx/compose/foundation/lazy/LazyListState;->c:Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    :cond_14
    move-object v7, v11

    :cond_15
    if-eqz v7, :cond_16

    iget-boolean v10, v0, Landroidx/compose/foundation/lazy/LazyListState;->b:Z

    invoke-virtual {v0, v7, v10, v8}, Landroidx/compose/foundation/lazy/LazyListState;->g(Landroidx/compose/foundation/lazy/LazyListMeasureResult;ZZ)V

    iget-object v8, v0, Landroidx/compose/foundation/lazy/LazyListState;->w:Landroidx/compose/runtime/MutableState;

    invoke-static {v8}, Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;->b(Landroidx/compose/runtime/MutableState;)V

    iget v8, v0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    sub-float/2addr v3, v8

    if-eqz v6, :cond_18

    invoke-interface {v2, v1, v3, v7}, Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;->c(Landroidx/compose/foundation/lazy/LazyListState$prefetchScope$1;FLandroidx/compose/foundation/lazy/LazyListLayoutInfo;)V

    goto :goto_d

    :cond_16
    iget-object v7, v0, Landroidx/compose/foundation/lazy/LazyListState;->l:Landroidx/compose/ui/layout/Remeasurement;

    if-eqz v7, :cond_17

    invoke-interface {v7}, Landroidx/compose/ui/layout/Remeasurement;->e()V

    :cond_17
    iget v7, v0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    sub-float/2addr v3, v7

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->j()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v7

    if-eqz v6, :cond_18

    invoke-interface {v2, v1, v3, v7}, Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;->c(Landroidx/compose/foundation/lazy/LazyListState$prefetchScope$1;FLandroidx/compose/foundation/lazy/LazyListLayoutInfo;)V

    :cond_18
    :goto_d
    iget v1, v0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_19

    :goto_e
    move v4, v9

    goto :goto_f

    :cond_19
    iget v1, v0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    sub-float/2addr v9, v1

    iput v4, v0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    goto :goto_e

    :cond_1a
    :goto_f
    neg-float v0, v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_8
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->d(Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v0

    return-object v0

    :pswitch_9
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->p:Landroidx/compose/foundation/lazy/grid/LazyGridState$prefetchScope$1;

    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->a:Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;

    iget-boolean v6, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->i:Z

    move-object/from16 v9, p1

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    sget-object v10, Landroidx/compose/foundation/lazy/grid/LazyGridState;->w:Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion;

    neg-float v9, v9

    cmpg-float v10, v9, v4

    if-gez v10, :cond_1b

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->d()Z

    move-result v10

    if-eqz v10, :cond_24

    :cond_1b
    cmpl-float v10, v9, v4

    if-lez v10, :cond_1c

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->b()Z

    move-result v10

    if-nez v10, :cond_1c

    goto/16 :goto_13

    :cond_1c
    iget v10, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->g:F

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v10, v10, v5

    if-gtz v10, :cond_1d

    goto :goto_10

    :cond_1d
    invoke-static {v3}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    :goto_10
    iget v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->g:F

    add-float/2addr v3, v9

    iput v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->g:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_22

    iget v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->g:F

    invoke-static {v3}, Lkotlin/math/MathKt;->c(F)I

    move-result v10

    iget-object v11, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->e:Landroidx/compose/runtime/MutableState;

    check-cast v11, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v11}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    iget-boolean v12, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->b:Z

    xor-int/2addr v12, v8

    invoke-virtual {v11, v10, v12}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->m(IZ)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-result-object v11

    if-eqz v11, :cond_1e

    iget-object v12, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->c:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    if-eqz v12, :cond_1e

    invoke-virtual {v12, v10, v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->m(IZ)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-result-object v10

    if-eqz v10, :cond_1f

    iput-object v10, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->c:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    :cond_1e
    move-object v7, v11

    :cond_1f
    if-eqz v7, :cond_20

    iget-boolean v10, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->b:Z

    invoke-virtual {v0, v7, v10, v8}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->f(Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;ZZ)V

    iget-object v8, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->r:Landroidx/compose/runtime/MutableState;

    invoke-static {v8}, Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;->b(Landroidx/compose/runtime/MutableState;)V

    iget v8, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->g:F

    sub-float/2addr v3, v8

    if-eqz v6, :cond_22

    invoke-interface {v2, v1, v3, v7}, Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;->d(Landroidx/compose/foundation/lazy/grid/LazyGridState$prefetchScope$1;FLandroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;)V

    goto :goto_11

    :cond_20
    iget-object v7, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->j:Landroidx/compose/ui/layout/Remeasurement;

    if-eqz v7, :cond_21

    invoke-interface {v7}, Landroidx/compose/ui/layout/Remeasurement;->e()V

    :cond_21
    iget v7, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->g:F

    sub-float/2addr v3, v7

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->h()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object v7

    if-eqz v6, :cond_22

    invoke-interface {v2, v1, v3, v7}, Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;->d(Landroidx/compose/foundation/lazy/grid/LazyGridState$prefetchScope$1;FLandroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;)V

    :cond_22
    :goto_11
    iget v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->g:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_23

    :goto_12
    move v4, v9

    goto :goto_13

    :cond_23
    iget v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->g:F

    sub-float/2addr v9, v1

    iput v4, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->g:F

    goto :goto_12

    :cond_24
    :goto_13
    neg-float v0, v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_a
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->c(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_b
    check-cast v0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchLegalState;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    sget-object v3, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchLegalState;->ACCEPTED:Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchLegalState;

    if-ne v0, v3, :cond_25

    move v2, v8

    :cond_25
    invoke-static {v2}, Landroidx/compose/ui/state/ToggleableStateKt;->a(Z)Landroidx/compose/ui/state/ToggleableState;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->u(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/state/ToggleableState;)V

    sget-object v0, Landroidx/compose/ui/semantics/Role;->b:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/semantics/Role;->d:I

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->o(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_c
    check-cast v0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;

    move-object/from16 v1, p1

    check-cast v1, Lcom/airbnb/lottie/value/LottieFrameInfo;

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/atoms/LVRadioButtonKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-wide v2, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;->e:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->i(J)I

    move-result v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v1

    :pswitch_d
    check-cast v0, Landroidx/compose/material3/TopAppBarScrollBehavior;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    invoke-interface {v0}, Landroidx/compose/material3/TopAppBarScrollBehavior;->getState()Landroidx/compose/material3/TopAppBarState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/TopAppBarState;->b()F

    move-result v2

    add-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroidx/compose/material3/TopAppBarState;->c(F)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_e
    check-cast v0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;

    move-object/from16 v1, p1

    check-cast v1, Lcom/airbnb/lottie/value/LottieFrameInfo;

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtonKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-wide v2, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->e:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->i(J)I

    move-result v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v1

    :pswitch_f
    check-cast v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_10
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lfp;

    invoke-direct {v1, v0, v6}, Lfp;-><init>(Landroidx/fragment/app/FragmentActivity;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_11
    check-cast v0, Ljava/time/LocalDate;

    move-object/from16 v1, p1

    check-cast v1, Ljava/time/LocalDate;

    sget v2, Lcom/vuitton/android/presentation/compose/components/LVCalendarKt;->a:F

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/time/LocalDate;->isBefore(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_12
    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllDetailFragment;

    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllDetailFragment;->Y:Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllDetailFragment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_26
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;

    iget-object v3, v2, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;->e:Ljava/util/List;

    if-eqz v3, :cond_27

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqPdf;

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqPdf;->b:Ljava/lang/String;

    new-instance v7, Lbx;

    invoke-direct {v7, v0, v4, v8}, Lbx;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v5, v7}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllDetailFragment;->F0(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_15

    :cond_27
    iget-object v3, v2, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;->d:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_26

    const v3, 0x7f141108

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lbx;

    invoke-direct {v4, v0, v2, v6}, Lbx;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v3, v4}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllDetailFragment;->F0(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_14

    :cond_28
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_13
    check-cast v0, Lcom/google/firebase/datastorage/JavaDataStorage;

    move-object/from16 v2, p1

    check-cast v2, Landroid/content/Context;

    sget-object v1, Lcom/google/firebase/datastorage/JavaDataStorage;->d:[Lkotlin/reflect/KProperty;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lcom/google/firebase/datastorage/JavaDataStorage;->a:Ljava/lang/String;

    sget-object v0, Landroidx/datastore/preferences/SharedPreferencesMigrationKt;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/datastore/migrations/SharedPreferencesMigration;

    invoke-static {v0}, Landroidx/datastore/preferences/SharedPreferencesMigrationKt;->b(Ljava/util/Set;)Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {}, Landroidx/datastore/preferences/SharedPreferencesMigrationKt;->a()Lkotlin/jvm/functions/Function3;

    move-result-object v6

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v8}, Landroidx/datastore/migrations/SharedPreferencesMigration;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_14
    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/TextArticleSectionUiModel;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/TextArticleSectionUiModel;->p:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleDisclaimerUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleDisclaimerUiModel;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleCtaUiModel;

    if-eqz v0, :cond_29

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleCtaUiModel;->b:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    if-eqz v0, :cond_29

    sget-object v0, Landroidx/compose/ui/semantics/Role;->b:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->o(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    :cond_29
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_15
    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;

    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/Bitmap;

    sget-object v2, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->H:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$Companion;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->M()Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    move-result-object v2

    if-nez v0, :cond_2a

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->K:Landroid/graphics/Bitmap;

    :cond_2a
    if-eqz v0, :cond_2f

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;

    if-eqz v3, :cond_2b

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;->a:Ljava/lang/String;

    goto :goto_16

    :cond_2b
    move-object v4, v7

    :goto_16
    if-eqz v4, :cond_2e

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->h:Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;

    sget-object v4, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->IMMERSIVE_ARTICLE:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;->b:Ljava/lang/String;

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f140101

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v3, :cond_2c

    const-string v2, ""

    goto :goto_17

    :cond_2c
    move-object v2, v3

    :goto_17
    if-nez v3, :cond_2d

    const-string v3, "Article"

    :cond_2d
    move-object v5, v3

    const/16 v6, 0x20

    move-object v3, v2

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/utils/ShareUtilsKt;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_18

    :cond_2e
    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string v1, "ImmersiveArticleViewModelImpl"

    const-string v2, "Can\'t share the article at the moment, it is not loaded"

    invoke-interface {v0, v1, v2, v7}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2f
    :goto_18
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_16
    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;

    move-object/from16 v1, p1

    check-cast v1, Landroid/view/View;

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->G:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->M()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_17
    check-cast v0, Lcom/sightcall/livetranslation/history/HistoryViewHolder;

    move-object/from16 v1, p1

    check-cast v1, Lcom/sightcall/livetranslation/history/HistoryInteractor$State;

    invoke-static {v0, v1}, Lcom/sightcall/livetranslation/history/HistoryViewHolder;->c(Lcom/sightcall/livetranslation/history/HistoryViewHolder;Lcom/sightcall/livetranslation/history/HistoryInteractor$State;)Lkotlin/Unit;

    move-result-object v0

    return-object v0

    :pswitch_18
    check-cast v0, Lcom/sightcall/livetranslation/history/HistoryCoordinator;

    move-object/from16 v1, p1

    check-cast v1, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;

    invoke-static {v0, v1}, Lcom/sightcall/livetranslation/history/HistoryInteractorImpl;->d(Lcom/sightcall/livetranslation/history/HistoryCoordinator;Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;)Lkotlin/Unit;

    move-result-object v0

    return-object v0

    :pswitch_19
    check-cast v0, Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModel;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/compose/ui/semantics/CollectionInfo;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModel;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0, v8}, Landroidx/compose/ui/semantics/CollectionInfo;-><init>(II)V

    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->f(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionInfo;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1a
    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/graphics/Brush;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/GradientKt;->a:Landroidx/compose/ui/graphics/LinearGradient;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->R1()V

    const/4 v10, 0x0

    const/16 v11, 0x7e

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v1 .. v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->q1(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1b
    check-cast v0, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate$1$onCreate$1$1;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate$1$onCreate$1$1;-><init>(Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1c
    check-cast v0, Landroidx/navigation/fragment/FragmentNavigator;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    sget v2, Landroidx/navigation/fragment/FragmentNavigator;->j:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lbn;

    invoke-direct {v2, v0, v1, v8}, Lbn;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
