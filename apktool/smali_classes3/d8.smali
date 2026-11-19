.class public final synthetic Ld8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ld8;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    iget v0, v0, Ld8;->a:I

    const-string v1, "LookHandler"

    const-string v2, "Instance released."

    const-string v3, "Shouldn\'t get here."

    const-string v4, "ContentPreloader"

    const-string v5, "[clearAll] failed."

    const-string v6, "ProductMaskHelper"

    const-string v7, "ShadeFinder"

    const/4 v8, 0x3

    packed-switch v0, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Throwable;

    const-string v1, "[createInstance] failed"

    invoke-static {v7, v1, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, Lcom/perfectcorp/perfectlib/ShadeFinder;

    const-string v0, "[createInstance] succeeded"

    invoke-static {v8, v7, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Throwable;

    const-string v1, "[queryDetectionMode] Update shade finder detection mode failed."

    invoke-static {v7, v1, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_2
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    const-string v0, "[queryDetectionMode] New shade finder detection mode updated."

    invoke-static {v8, v7, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_3
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Throwable;

    const-string v1, "[queryCustomFeatures] failed, using stored preferences"

    invoke-static {v7, v1, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/perfectcorp/perfectlib/ShadeFinder;->a()V

    return-void

    :pswitch_4
    move-object/from16 v0, p1

    check-cast v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/shadefinder/b$a;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ShadeFinder;->a()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[queryCustomFeatures] succeeded. customFeature="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/shadefinder/b$a;->brand:Ljava/lang/String;

    invoke-static {v1, v0, v8, v7}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :pswitch_5
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Throwable;

    const-string v1, "[queryDetectionMode] failed"

    invoke-static {v7, v1, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_6
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    const-string v1, "[queryDetectionMode] succeeded. featureMode="

    invoke-static {v8, v1, v0, v7}, La;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_7
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Throwable;

    const-string v1, "[checkNeedToUpdate] failed"

    invoke-static {v6, v1, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_8
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Boolean;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[checkNeedToUpdate] needToUpdate="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v6, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_9
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Throwable;

    const-string v1, "[syncServer] failed"

    invoke-static {v6, v1, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_a
    move-object/from16 v0, p1

    check-cast v0, Ljava/util/List;

    const-string v1, "[syncServer] ready to update DB"

    invoke-static {v8, v6, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string v1, "[runInTransaction] start"

    invoke-static {v8, v6, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Leq0;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Leq0;-><init>(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;I)V

    invoke-static {v1, v2}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    const-string v0, "[runInTransaction] end"

    invoke-static {v8, v6, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string v0, "[syncServer] DB updated for feature types"

    invoke-static {v8, v6, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_b
    move-object/from16 v0, p1

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const-string v2, "[UPDATE_PRODUCT_MAPPING_CONSUMER] start"

    const-string v3, "ProductMappingUtility"

    invoke-static {v8, v3, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sdk/a$b;

    iget-object v6, v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sdk/a$b;->skuGUID:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x5

    if-nez v6, :cond_5

    iget-object v6, v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sdk/a$b;->productId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    iget-object v6, v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sdk/a$b;->items:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sdk/a$a;

    iget-object v10, v9, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sdk/a$a;->skuItemGUID:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, v9, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sdk/a$a;->shadetId:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_2

    :cond_3
    new-instance v11, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;

    iget-object v10, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v12, v10

    check-cast v12, Ljava/lang/String;

    iget-object v13, v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sdk/a$b;->skuGUID:Ljava/lang/String;

    iget-object v14, v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sdk/a$b;->productId:Ljava/lang/String;

    iget-object v15, v9, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sdk/a$a;->skuItemGUID:Ljava/lang/String;

    iget-object v9, v9, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sdk/a$a;->shadetId:Ljava/lang/String;

    move-object/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[UPDATE_PRODUCT_MAPPING_CONSUMER] skip it, there is empty id, skuItemGUID="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v9, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sdk/a$a;->skuItemGUID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", shadetId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v9, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sdk/a$a;->shadetId:Ljava/lang/String;

    invoke-static {v10, v9, v7, v3}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :cond_5
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "[UPDATE_PRODUCT_MAPPING_CONSUMER] skip it, there is empty id, skuGUID="

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sdk/a$b;->skuGUID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", productId="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sdk/a$b;->productId:Ljava/lang/String;

    invoke-static {v6, v5, v7, v3}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "[UPDATE_PRODUCT_MAPPING_CONSUMER] product mapping table is empty"

    invoke-static {v8, v3, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;->h()Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;->n()V

    goto :goto_4

    :cond_7
    const-string v0, "[UPDATE_PRODUCT_MAPPING_CONSUMER] update DB"

    invoke-static {v8, v3, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;->h()Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v2, Lhn0;

    const/16 v4, 0xa

    invoke-direct {v2, v1, v4}, Lhn0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v2}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    const-string v0, "[UPDATE_PRODUCT_MAPPING_CONSUMER] end"

    invoke-static {v8, v3, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void

    :pswitch_c
    move-object/from16 v0, p1

    check-cast v0, Lcom/perfectcorp/perfectlib/PhotoMakeup;

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;->MAKEUP:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent;-><init>(Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;)V

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->b()V

    return-void

    :pswitch_d
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_e
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    const-string v0, "PhotoMakeup"

    invoke-static {v8, v0, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_f
    move-object/from16 v0, p1

    check-cast v0, Ljava/util/Set;

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/clflurry/a;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    invoke-static {}, Lcom/perfectcorp/uma/b;->a()V

    :goto_5
    return-void

    :pswitch_10
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Throwable;

    const-string v1, "NailLookHandler"

    invoke-static {v1, v5, v0}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_11
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_12
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    const-string v0, "MakeupCam"

    invoke-static {v8, v0, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_13
    move-object/from16 v0, p1

    check-cast v0, Lcom/perfectcorp/perfectlib/MakeupCam;

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;->MAKEUP:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent;-><init>(Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;)V

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->b()V

    return-void

    :pswitch_14
    move-object/from16 v0, p1

    check-cast v0, Lcom/perfectcorp/perfectlib/MakeupCam;

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;->MAKEUP:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent;-><init>(Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;)V

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->b()V

    return-void

    :pswitch_15
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Throwable;

    const-string v2, "[deleteLooks] failed"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_16
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, v5, v0}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_17
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Throwable;

    const-string v1, "JewelryLookHandler"

    invoke-static {v1, v5, v0}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_18
    move-object/from16 v0, p1

    check-cast v0, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;->FACE_ATTRIBUTE:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent;-><init>(Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;)V

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->b()V

    return-void

    :pswitch_19
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Long;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "preload total time="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v2, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v2, v5

    const-string v0, " ms"

    invoke-static {v2, v3, v0, v1}, Lo60;->j(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v4, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1a
    move-object/from16 v0, p1

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[preloadLook] success, preloaded size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v8, v4}, Lfc;->z(Ljava/util/List;Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :pswitch_1b
    move-object/from16 v0, p1

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[preloadSku] success, preloaded size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v8, v4}, Lfc;->z(Ljava/util/List;Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :pswitch_1c
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Throwable;

    sget-object v1, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    const-string v1, "ApplyEffectUtility"

    const-string v2, "[downloadSkuSets] queryForCacheFirstThenUpdate failed"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

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
