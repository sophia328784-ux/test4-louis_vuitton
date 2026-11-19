.class public final synthetic Lcom/perfectcorp/perfectlib/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/perfectcorp/perfectlib/e0;->a:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/e0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/e0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lcom/perfectcorp/perfectlib/e0;->a:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/e0;->b:Ljava/lang/Object;

    check-cast v1, Lcom/perfectcorp/perfectlib/NailLookHandler;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/e0;->c:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/NailLookHandler;->d:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_0
    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v3, :cond_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/e0;->b:Ljava/lang/Object;

    check-cast v1, Lcom/perfectcorp/perfectlib/JewelryLookHandler;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/e0;->c:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/JewelryLookHandler;->d:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_2
    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v3, :cond_2

    :goto_1
    return-void

    :pswitch_1
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/e0;->b:Ljava/lang/Object;

    check-cast v1, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/e0;->c:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    const-string v3, ", "

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    and-int/lit8 v4, v4, -0x4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    and-int/lit8 v5, v5, -0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v4, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ne v6, v5, :cond_4

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v4, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-static {v0, v4, v5, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v4

    const-string v5, "PFMNN"

    invoke-static {v4, v5}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/ReLinker;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v5, "venus_tracking"

    invoke-static {v4, v5}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/ReLinker;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->h:Lcom/perfectcorp/perfectlib/jniproxy/CUITracking;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/jniproxy/CUITracking;->a()V

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->h:Lcom/perfectcorp/perfectlib/jniproxy/CUITracking;

    :cond_5
    new-instance v10, Lcom/perfectcorp/perfectlib/jniproxy/CUITracking;

    invoke-static {}, Lcom/perfectcorp/common/PfCommonsJni;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perfectcorp/common/io/IO;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "libvenus_tracking.so"

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Lcom/perfectcorp/perfectlib/jniproxy/CUITracking;-><init>(Ljava/lang/String;)V

    iput-object v10, v1, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->h:Lcom/perfectcorp/perfectlib/jniproxy/CUITracking;

    iget-boolean v2, v1, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->d:Z

    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/Configuration;->a:Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;

    const-string v6, " ms"

    const-wide/32 v15, 0xf4240

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v11, 0x0

    const-string v12, "FaceAttributeAnalyzer"

    if-eqz v2, :cond_c

    const/4 v2, 0x4

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    iget-wide v13, v10, Lcom/perfectcorp/perfectlib/jniproxy/CUITracking;->a:J

    invoke-static {v13, v14, v10, v2}, Lcom/perfectcorp/perfectlib/jniproxy/UITrackingJNI;->CUITracking_GetInternalModelVersionLV(JLcom/perfectcorp/perfectlib/jniproxy/CUITracking;[Ljava/lang/Object;)Z

    move-result v13

    invoke-static {v13}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "internal LV model versions="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v12, v13}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-boolean v13, v5, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    iget-object v14, v5, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    if-eqz v13, :cond_6

    :try_start_1
    new-instance v13, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    move/from16 p0, v9

    aget-object v9, v2, v11

    invoke-direct {v13, v9}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v14, v13}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->e(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v9, v12

    goto/16 :goto_13

    :cond_6
    move/from16 p0, v9

    :try_start_2
    new-instance v9, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    aget-object v13, v2, v11

    invoke-direct {v9, v13}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v14, v9}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    move-result-object v9

    :goto_3
    iget-boolean v13, v5, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    iget-object v14, v5, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    if-eqz v13, :cond_7

    :try_start_3
    new-instance v13, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    aget-object v11, v2, v7

    invoke-direct {v13, v11}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v14, v13}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->e(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    move-result-object v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :cond_7
    :try_start_4
    new-instance v11, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    aget-object v13, v2, v7

    invoke-direct {v11, v13}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v14, v11}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    move-result-object v11

    :goto_4
    iget-boolean v13, v5, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    iget-object v14, v5, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    if-eqz v13, :cond_8

    :try_start_5
    new-instance v13, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    aget-object v8, v2, v8

    invoke-direct {v13, v8}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v14, v13}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->e(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    move-result-object v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_5
    move-object v13, v8

    goto :goto_6

    :cond_8
    :try_start_6
    new-instance v13, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    aget-object v8, v2, v8

    invoke-direct {v13, v8}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v14, v13}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :goto_6
    iget-boolean v8, v5, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    if-eqz v8, :cond_9

    :try_start_7
    new-instance v8, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    aget-object v2, v2, p0

    invoke-direct {v8, v2}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5, v8}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->e(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_7
    move-object v14, v2

    goto :goto_8

    :cond_9
    :try_start_8
    new-instance v4, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    aget-object v2, v2, p0

    invoke-direct {v4, v2}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v4}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :goto_8
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v2, :cond_a

    :try_start_9
    const-string v2, "No second step eye model found."

    const/4 v3, 0x5

    invoke-static {v3, v12, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_a
    :try_start_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object v4, v12

    move-object v12, v11

    move-object v11, v9

    :try_start_b
    iget-wide v8, v10, Lcom/perfectcorp/perfectlib/jniproxy/CUITracking;->a:J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-object v5, v4

    const/16 v17, 0x0

    move/from16 v4, p0

    :try_start_c
    invoke-static/range {v8 .. v14}, Lcom/perfectcorp/perfectlib/jniproxy/UITrackingJNI;->CUITracking_SetInternalModelPathsLV(JLcom/perfectcorp/perfectlib/jniproxy/CUITracking;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "SetInternalLVModelPaths in "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    sub-long/2addr v11, v2

    div-long/2addr v11, v15

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-wide v2, v10, Lcom/perfectcorp/perfectlib/jniproxy/CUITracking;->a:J

    invoke-static {v2, v3, v10}, Lcom/perfectcorp/perfectlib/jniproxy/UITrackingJNI;->CUITracking_IsModelLoaded(JLcom/perfectcorp/perfectlib/jniproxy/CUITracking;)Z

    move-result v2

    invoke-static {v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    move-object v9, v5

    move/from16 v3, v17

    goto/16 :goto_c

    :catchall_1
    move-exception v0

    :goto_9
    move-object v9, v5

    goto/16 :goto_13

    :catchall_2
    move-exception v0

    move-object v5, v4

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v5, v12

    goto :goto_9

    :cond_b
    move-object v5, v12

    move-object v12, v11

    move-object v11, v9

    const-string v0, "No face tracking model(s) found."

    invoke-static {v5, v0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Please take the models from CSM : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/exceptions/ModuleLoadFailedException;

    const-string v1, "Makeup module load failed. Please take the models from CSM."

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/exceptions/ModuleLoadFailedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_c
    move v2, v9

    move v3, v11

    move-object v9, v12

    :try_start_d
    new-array v8, v8, [Ljava/lang/String;

    iget-wide v11, v10, Lcom/perfectcorp/perfectlib/jniproxy/CUITracking;->a:J

    invoke-static {v11, v12, v10, v8}, Lcom/perfectcorp/perfectlib/jniproxy/UITrackingJNI;->CUITracking_GetInternalModelVersion(JLcom/perfectcorp/perfectlib/jniproxy/CUITracking;[Ljava/lang/Object;)Z

    move-result v11

    invoke-static {v11}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "internal model versions="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v9, v11}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-boolean v11, v5, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    iget-object v12, v5, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    const-string v13, ".mnn"

    if-eqz v11, :cond_d

    :try_start_e
    new-instance v11, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    const-string v14, "YMK_Davinci_"

    move-wide/from16 v17, v15

    aget-object v15, v8, v3

    invoke-direct {v11, v14, v13, v15}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v12, v11}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->d(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    move-result-object v11

    goto :goto_a

    :catchall_4
    move-exception v0

    goto/16 :goto_13

    :cond_d
    move-wide/from16 v17, v15

    new-instance v11, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    aget-object v14, v8, v3

    invoke-direct {v11, v14}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v12, v11}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->a(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    move-result-object v11

    :goto_a
    iget-boolean v12, v5, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    if-eqz v12, :cond_e

    :try_start_f
    new-instance v12, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    const-string v14, "YMK_Venus_"

    aget-object v8, v8, v7

    invoke-direct {v12, v14, v13, v8}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v5, v12}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->d(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    :cond_e
    new-instance v4, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    aget-object v8, v8, v7

    invoke-direct {v4, v8}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v4}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->a(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    move-result-object v4

    :goto_b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    iget-wide v14, v10, Lcom/perfectcorp/perfectlib/jniproxy/CUITracking;->a:J

    invoke-static {v14, v15, v10, v11, v4}, Lcom/perfectcorp/perfectlib/jniproxy/UITrackingJNI;->CUITracking_SetInternalModelPaths(JLcom/perfectcorp/perfectlib/jniproxy/CUITracking;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SetInternalModelPaths in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    sub-long/2addr v14, v12

    div-long v14, v14, v17

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v9, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-wide v4, v10, Lcom/perfectcorp/perfectlib/jniproxy/CUITracking;->a:J

    invoke-static {v4, v5, v10}, Lcom/perfectcorp/perfectlib/jniproxy/UITrackingJNI;->CUITracking_IsModelLoaded(JLcom/perfectcorp/perfectlib/jniproxy/CUITracking;)Z

    move-result v2

    invoke-static {v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    :goto_c
    invoke-static {}, Lcom/perfectcorp/perfectlib/jniproxy/UITrackingJNI;->CUITracking_GetMaxDetectedFaceCount()I

    move-result v2

    iget-wide v4, v10, Lcom/perfectcorp/perfectlib/jniproxy/CUITracking;->a:J

    invoke-static {v4, v5, v10, v2}, Lcom/perfectcorp/perfectlib/jniproxy/UITrackingJNI;->CUITracking_SetMaxDetectedFaceNumber(JLcom/perfectcorp/perfectlib/jniproxy/CUITracking;I)Z

    move-result v2

    invoke-static {v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    iget-object v12, v1, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->h:Lcom/perfectcorp/perfectlib/jniproxy/CUITracking;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/makeupcam/utility/CameraUtils$PictureTaken;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v13

    invoke-static {}, Lcom/perfectcorp/perfectlib/jniproxy/UITrackingJNI;->CUITracking_GetMaxDetectedFaceCount()I

    move-result v2

    new-array v4, v2, [Z

    new-array v5, v2, [Z

    new-array v6, v2, [Landroid/graphics/Rect;

    new-array v8, v2, [Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupLiveFaceAlignData;

    move v11, v3

    :goto_d
    if-ge v11, v2, :cond_f

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    aput-object v9, v6, v11

    new-instance v9, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupLiveFaceAlignData;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-direct {v9, v10, v14}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupLiveFaceAlignData;-><init>(II)V

    aput-object v9, v8, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    :catch_0
    :goto_e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long v9, v9, v18

    const-wide/32 v14, 0x59682f00

    cmp-long v9, v9, v14

    if-gez v9, :cond_15

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    const/16 v17, 0x0

    iget-wide v10, v12, Lcom/perfectcorp/perfectlib/jniproxy/CUITracking;->a:J

    const/16 v16, 0x0

    invoke-static/range {v10 .. v17}, Lcom/perfectcorp/perfectlib/jniproxy/UITrackingJNI;->CUITracking_AnalyzeFrameYUV420Biplanar(JLcom/perfectcorp/perfectlib/jniproxy/CUITracking;[BIIIZ)Z

    iget-wide v9, v12, Lcom/perfectcorp/perfectlib/jniproxy/CUITracking;->a:J

    invoke-static {v9, v10, v12, v6, v4}, Lcom/perfectcorp/perfectlib/jniproxy/UITrackingJNI;->CUITracking_GetFaceRectangle(JLcom/perfectcorp/perfectlib/jniproxy/CUITracking;[Ljava/lang/Object;[Z)Z

    move-result v9

    if-eqz v9, :cond_14

    new-array v6, v2, [J

    move v11, v3

    :goto_f
    if-ge v11, v2, :cond_11

    aget-object v9, v8, v11

    if-nez v9, :cond_10

    const-wide/16 v9, 0x0

    goto :goto_10

    :cond_10
    iget-wide v9, v9, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupLiveFaceAlignData;->a:J

    :goto_10
    aput-wide v9, v6, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    :cond_11
    iget-wide v9, v12, Lcom/perfectcorp/perfectlib/jniproxy/CUITracking;->a:J

    invoke-static {v9, v10, v12, v6, v5}, Lcom/perfectcorp/perfectlib/jniproxy/UITrackingJNI;->CUITracking_GetMakeupMetadata(JLcom/perfectcorp/perfectlib/jniproxy/CUITracking;[J[Z)Z

    sget-object v6, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v6, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v6}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    move v11, v3

    :goto_11
    if-ge v11, v2, :cond_13

    aget-boolean v9, v4, v11

    if-eqz v9, :cond_12

    aget-boolean v9, v5, v11

    if-eqz v9, :cond_12

    aget-object v9, v8, v11

    invoke-virtual {v6, v9}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    :cond_12
    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    :cond_13
    invoke-virtual {v6}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v2

    goto :goto_12

    :cond_14
    const-wide/16 v9, 0x42

    :try_start_10
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    goto :goto_e

    :cond_15
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_12
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_18

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v7, :cond_17

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupLiveFaceAlignData;

    iget-wide v5, v4, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupLiveFaceAlignData;->a:J

    invoke-static {v5, v6, v4}, Lcom/perfectcorp/perfectlib/jniproxy/UITrackingJNI;->UIMakeupLiveFaceAlignData_isFaceRectOutOfBoundary(JLcom/perfectcorp/perfectlib/jniproxy/UIMakeupLiveFaceAlignData;)Z

    move-result v4

    if-nez v4, :cond_16

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupLiveFaceAlignData;

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->g:Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupLiveFaceAlignData;

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->f:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/perfectcorp/common/utility/ImageUtils;->b(Landroid/graphics/Bitmap;)V

    iput-object v0, v1, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->f:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$PredictionCache;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FacePredictResult;

    invoke-direct {v2}, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FacePredictResult;-><init>()V

    iput-object v2, v0, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$PredictionCache;->a:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FacePredictResult;

    new-instance v2, Lcom/perfectcorp/perfectlib/FaceAnalysisData$Extra;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$PredictionCache;->b:Lcom/perfectcorp/perfectlib/FaceAnalysisData$Extra;

    new-instance v2, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;

    sget-object v3, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-direct {v2, v3}, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;-><init>(Ljava/util/Set;)V

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;->a()[Z

    move-result-object v2

    iput-object v2, v0, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$PredictionCache;->c:[Z

    iput-object v0, v1, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->i:Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$PredictionCache;

    return-void

    :cond_16
    new-instance v0, Lcom/perfectcorp/perfectlib/exceptions/FaceRectOutOfBoundaryException;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/exceptions/FaceRectOutOfBoundaryException;-><init>()V

    throw v0

    :cond_17
    new-instance v0, Lcom/perfectcorp/perfectlib/exceptions/MultiFaceNotSupportedException;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/exceptions/MultiFaceNotSupportedException;-><init>()V

    throw v0

    :cond_18
    new-instance v0, Lcom/perfectcorp/perfectlib/exceptions/DetectFailedException;

    const-string v1, "No face detected."

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/exceptions/DetectFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_13
    const-string v1, "Module load failed"

    invoke-static {v9, v1, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/perfectcorp/perfectlib/exceptions/ModuleLoadFailedException;

    invoke-direct {v1, v0}, Lcom/perfectcorp/perfectlib/exceptions/ModuleLoadFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
