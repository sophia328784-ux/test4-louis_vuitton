.class public final Lcom/perfectcorp/perfectlib/ShadeFinder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/CameraOperator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ShadeFinder$Preferences;,
        Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderFrameProcessingThread;,
        Lcom/perfectcorp/perfectlib/ShadeFinder$CreateCallback;,
        Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderCallback;
    }
.end annotation


# static fields
.field public static e:Z = false

.field public static f:Z = true


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;

.field public final b:Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderFrameProcessingThread;

.field public final c:Z

.field public volatile d:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "PFMNN"

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/ReLinker;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "venus_tracking"

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/ReLinker;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "venus_shadefinder"

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/ReLinker;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;

    invoke-static {}, Lcom/perfectcorp/common/PfCommonsJni;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "libvenus_shadefinder.so"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;->SHADE_FINDER_WITHOUT_CALIBRATION_V4:Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;

    invoke-static {v0, v1}, Lcom/perfectcorp/perfectlib/ShadeFinder;->initShadeFinder(Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;)V

    new-instance v1, Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;

    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;-><init>()V

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/ShadeFinder;->a:Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;

    new-instance v2, Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderFrameProcessingThread;

    invoke-direct {v2, v0, p1, v1}, Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderFrameProcessingThread;-><init>(Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;)V

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/ShadeFinder;->b:Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderFrameProcessingThread;

    iput-boolean p2, p0, Lcom/perfectcorp/perfectlib/ShadeFinder;->c:Z

    return-void
.end method

.method public static a()V
    .locals 4

    sget-object v0, Lcom/perfectcorp/perfectlib/ShadeFinder$Preferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    const-string v1, "CUSTOM_FEATURE_BRAND"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/common/utility/j;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CUSTOM_FEATURE_SHADE_FINDER_LV"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "LV"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sput-boolean v0, Lcom/perfectcorp/perfectlib/ShadeFinder;->e:Z

    const-string v2, "Brand "

    const-string v3, ", LV ShadeFinder: "

    invoke-static {v2, v1, v3}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v0, "ON"

    goto :goto_0

    :cond_0
    const-string v0, "OFF"

    :goto_0
    const/4 v2, 0x4

    const-string v3, "ShadeFinder"

    invoke-static {v1, v0, v2, v3}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_1
    sput-boolean v3, Lcom/perfectcorp/perfectlib/ShadeFinder;->e:Z

    return-void
.end method

.method public static b()Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/w;
    .locals 3

    new-instance v0, La8;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, La8;-><init>(I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v0

    new-instance v1, Ld8;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Ld8;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object v0

    new-instance v1, Ld8;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Ld8;-><init>(I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    new-instance v0, Lct0;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lct0;-><init>(I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/w;

    invoke-direct {v1, v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/w;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object v1
.end method

.method public static create(Lcom/perfectcorp/perfectlib/ShadeFinder$CreateCallback;)V
    .locals 5

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/PerfectLib;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "createCallback can\'t be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/ShadeFinder$CreateCallback;

    invoke-static {v0, p0}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ShadeFinder$CreateCallback;

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v0, v0, Lcom/perfectcorp/perfectlib/Configuration;->g:Z

    new-instance v1, Ln7;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Ln7;-><init>(I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/i;

    invoke-direct {v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/i;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    invoke-static {}, Lcom/perfectcorp/perfectlib/ShadeFinder;->b()Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/w;

    move-result-object v1

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/d;

    invoke-direct {v3, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/d;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    new-instance v1, Lwm;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Lwm;-><init>(ZI)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v0, v3, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v0

    new-instance v1, Ld8;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Ld8;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object v0

    new-instance v1, Ld8;

    const/16 v3, 0x1d

    invoke-direct {v1, v3}, Ld8;-><init>(I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;

    invoke-direct {v3, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    new-instance v0, Lx1;

    invoke-direct {v0, v2}, Lx1;-><init>(I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/w;

    invoke-direct {v1, v3, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/w;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v0, Lpv0;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lpv0;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object v0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lqv0;

    invoke-direct {v3, p0, v2}, Lqv0;-><init>(Lcom/perfectcorp/perfectlib/ShadeFinder$CreateCallback;I)V

    new-instance v2, Lqv0;

    const/4 v4, 0x1

    invoke-direct {v2, p0, v4}, Lqv0;-><init>(Lcom/perfectcorp/perfectlib/ShadeFinder$CreateCallback;I)V

    invoke-direct {v1, v3, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    return-void

    :cond_0
    const-string p0, "PerfectLib.init() must be called first."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static initShadeFinder(Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;)V
    .locals 18

    move-object/from16 v2, p0

    const-string v0, ", "

    const-string v6, "ShadeFinder"

    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v7

    sget-object v1, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-object v8, v1, Lcom/perfectcorp/perfectlib/Configuration;->a:Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;

    :try_start_0
    sget-boolean v1, Lcom/perfectcorp/perfectlib/ShadeFinder;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, " ms"

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x3

    if-nez v1, :cond_3

    :try_start_1
    sget-object v1, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;->SHADE_FINDER_LV_SHADE_DETECT:Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;

    move-object/from16 v3, p1

    if-ne v3, v1, :cond_0

    :goto_0
    const-wide/32 v16, 0xf4240

    goto/16 :goto_4

    :cond_0
    new-array v0, v12, [Ljava/lang/String;

    iget-wide v4, v2, Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;->a:J

    invoke-static {v4, v5, v2, v0}, Lcom/perfectcorp/perfectlib/jniproxy/UIShadeFinderJNI;->CUIShadeFinder_GetInternalModelVersion(JLcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;[Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "internal model versions="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v6, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v4, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    const-string v5, ".mnn"

    if-eqz v1, :cond_1

    :try_start_2
    new-instance v1, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    const-wide/32 v16, 0xf4240

    const-string v10, "YMK_Davinci_"

    aget-object v11, v0, v13

    invoke-direct {v1, v10, v5, v11}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v4, v1}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->d(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_1
    const-wide/32 v16, 0xf4240

    new-instance v1, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    aget-object v10, v0, v13

    invoke-direct {v1, v10}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v1}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->a(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-boolean v4, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v10, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    if-eqz v4, :cond_2

    :try_start_3
    new-instance v4, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    const-string v11, "YMK_Venus_"

    aget-object v0, v0, v14

    invoke-direct {v4, v11, v5, v0}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v10, v4}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->d(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    new-instance v4, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    aget-object v0, v0, v14

    invoke-direct {v4, v0}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v4}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->a(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-wide v10, v2, Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;->a:J

    invoke-static {v10, v11, v2, v1, v0}, Lcom/perfectcorp/perfectlib/jniproxy/UIShadeFinderJNI;->CUIShadeFinder_SetInternalModelPaths(JLcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SetInternalModelPaths in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long/2addr v10, v4

    div-long v10, v10, v16

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v6, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-wide v0, v2, Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;->a:J

    :goto_3
    invoke-static {v0, v1, v2}, Lcom/perfectcorp/perfectlib/jniproxy/UIShadeFinderJNI;->CUIShadeFinder_IsModelLoaded(JLcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;)Z

    move-result v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    goto/16 :goto_8

    :cond_3
    move-object/from16 v3, p1

    goto/16 :goto_0

    :goto_4
    new-array v1, v15, [Ljava/lang/String;

    iget-wide v4, v2, Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;->a:J

    invoke-static {v4, v5, v2, v1}, Lcom/perfectcorp/perfectlib/jniproxy/UIShadeFinderJNI;->CUIShadeFinder_GetInternalModelVersionLV(JLcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;[Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "internal LV model versions="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v6, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v5, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    if-eqz v4, :cond_4

    :try_start_4
    new-instance v4, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    aget-object v10, v1, v13

    invoke-direct {v4, v10}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v5, v4}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->e(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_4
    new-instance v4, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    aget-object v10, v1, v13

    invoke-direct {v4, v10}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v4}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    move-result-object v4

    :goto_5
    iget-boolean v5, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v10, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    if-eqz v5, :cond_5

    :try_start_5
    new-instance v5, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    aget-object v11, v1, v14

    invoke-direct {v5, v11}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v10, v5}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->e(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_5
    new-instance v5, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    aget-object v11, v1, v14

    invoke-direct {v5, v11}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v5}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    move-result-object v5

    :goto_6
    iget-boolean v10, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v11, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    if-eqz v10, :cond_6

    :try_start_6
    new-instance v10, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    aget-object v1, v1, v12

    invoke-direct {v10, v1}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v11, v10}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->e(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_6
    new-instance v10, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    aget-object v1, v1, v12

    invoke-direct {v10, v1}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v10}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    move-result-object v1

    :goto_7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    move-object v3, v4

    move-object v4, v5

    move-object v5, v1

    iget-wide v0, v2, Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;->a:J

    invoke-static/range {v0 .. v5}, Lcom/perfectcorp/perfectlib/jniproxy/UIShadeFinderJNI;->CUIShadeFinder_SetInternalModelPathsLV(JLcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SetInternalLVModelPaths in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v10

    div-long v3, v3, v16

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v6, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-wide v0, v2, Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;->a:J

    goto/16 :goto_3

    :goto_8
    new-array v0, v12, [Ljava/lang/String;

    iget-wide v3, v2, Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;->a:J

    invoke-virtual/range {p1 .. p1}, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;->a()I

    move-result v1

    invoke-static {v3, v4, v2, v0, v1}, Lcom/perfectcorp/perfectlib/jniproxy/UIShadeFinderJNI;->CUIShadeFinder_GetShadeFinderModelVersion(JLcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;[Ljava/lang/Object;I)Z

    move-result v1

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "shade finder model versions="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v6, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v3, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    if-eqz v1, :cond_7

    :try_start_7
    new-instance v1, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    aget-object v4, v0, v13

    invoke-direct {v1, v4}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v3, v1}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->e(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    move-result-object v1

    :goto_9
    move-object v3, v1

    goto :goto_a

    :cond_7
    new-instance v1, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    aget-object v4, v0, v13

    invoke-direct {v1, v4}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v1}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :goto_a
    iget-boolean v1, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v4, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    if-eqz v1, :cond_8

    :try_start_8
    new-instance v1, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    aget-object v0, v0, v14

    invoke-direct {v1, v0}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v4, v1}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->e(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    move-object v4, v0

    goto :goto_c

    :cond_8
    new-instance v1, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    aget-object v0, v0, v14

    invoke-direct {v1, v0}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v1}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :goto_c
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    iget-wide v0, v2, Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;->a:J

    invoke-virtual/range {p1 .. p1}, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;->a()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/perfectcorp/perfectlib/jniproxy/UIShadeFinderJNI;->CUIShadeFinder_SetShadeFinderModelPath(JLcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SetShadeFinderModelPath in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v7

    div-long v3, v3, v16

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v6, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    iget-wide v0, v2, Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;->a:J

    invoke-static {v0, v1, v2, v14}, Lcom/perfectcorp/perfectlib/jniproxy/UIShadeFinderJNI;->CUIShadeFinder_SetMaxDetectedFaceNumber(JLcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;I)Z

    move-result v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    iget-wide v0, v2, Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;->a:J

    invoke-virtual/range {p1 .. p1}, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;->a()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/perfectcorp/perfectlib/jniproxy/UIShadeFinderJNI;->CUIShadeFinder_SetShadeFinderMode(JLcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;I)Z

    move-result v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    return-void

    :cond_9
    move-object v3, v4

    move-object v4, v5

    move-object v5, v1

    :try_start_9
    const-string v1, "No face tracking model(s) found."

    invoke-static {v6, v1}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Please take the models from CSM : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/exceptions/ModuleLoadFailedException;

    const-string v1, "Makeup module load failed. Please take the models from CSM."

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/exceptions/ModuleLoadFailedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_d
    const-string v1, "Module load failed"

    invoke-static {v6, v1, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/perfectcorp/perfectlib/exceptions/ModuleLoadFailedException;

    invoke-direct {v1, v0}, Lcom/perfectcorp/perfectlib/exceptions/ModuleLoadFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final onCameraOpened(ZIII)V
    .locals 0

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    iget-object p3, p0, Lcom/perfectcorp/perfectlib/ShadeFinder;->a:Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;

    iput-boolean p1, p3, Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;->f:Z

    iput p2, p3, Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;->g:I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ShadeFinder;->a:Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;->c:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x10e

    goto :goto_0

    :cond_1
    const/16 p1, 0xb4

    goto :goto_0

    :cond_2
    const/16 p1, 0x5a

    :goto_0
    iget-boolean p2, p0, Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;->f:Z

    iget p3, p0, Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;->g:I

    if-eqz p2, :cond_3

    add-int/2addr p3, p1

    rem-int/lit16 p3, p3, 0x168

    rsub-int p1, p3, 0x168

    rem-int/lit16 p1, p1, 0x168

    goto :goto_1

    :cond_3
    sub-int/2addr p3, p1

    add-int/lit16 p3, p3, 0x168

    rem-int/lit16 p1, p3, 0x168

    :goto_1
    iput p1, p0, Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;->h:I

    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    return-void
.end method

.method public final onCreated()V
    .locals 0

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    return-void
.end method

.method public final onDestroyed()V
    .locals 0

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ShadeFinder;->b:Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderFrameProcessingThread;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread;->quit()Z

    return-void
.end method

.method public final onPaused()V
    .locals 2

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ShadeFinder;->a:Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;->a:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;->i:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "LivePreviewHelper"

    const-string v1, "onPause"

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onResumed()V
    .locals 3

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ShadeFinder;->a:Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;->b:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;->a:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;->i:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    const-string v0, "LivePreviewHelper"

    const-string v1, "onResume"

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onStarted()V
    .locals 0

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    return-void
.end method

.method public final onStopped()V
    .locals 0

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    return-void
.end method

.method public final sendCameraBuffer(Lcom/perfectcorp/perfectlib/CameraFrame;)V
    .locals 4

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    new-instance v0, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;-><init>()V

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/CameraFrame;->a:[B

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->d:[B

    iget v1, p1, Lcom/perfectcorp/perfectlib/CameraFrame;->b:I

    iput v1, v0, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->b:I

    iget v1, p1, Lcom/perfectcorp/perfectlib/CameraFrame;->c:I

    iput v1, v0, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->c:I

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->a:J

    iget-boolean v1, p1, Lcom/perfectcorp/perfectlib/CameraFrame;->d:Z

    iput-boolean v1, v0, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->f:Z

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ShadeFinder;->b:Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderFrameProcessingThread;

    invoke-virtual {v1, v0}, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread;->sendNewFrame(Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;)V

    iget-boolean v0, p0, Lcom/perfectcorp/perfectlib/ShadeFinder;->c:Z

    if-eqz v0, :cond_1

    iget-boolean p1, p1, Lcom/perfectcorp/perfectlib/CameraFrame;->d:Z

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/ShadeFinder;->d:J

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/perfectcorp/perfectlib/ShadeFinder;->d:J

    sub-long/2addr v0, v2

    const-wide v2, 0x2540be400L

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    invoke-static {}, Lcom/perfectcorp/common/utility/ToastUtils;->a()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/ShadeFinder;->d:J

    :cond_1
    return-void
.end method

.method public final setShadeFinderCallback(Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderCallback;)V
    .locals 2

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ShadeFinder;->b:Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderFrameProcessingThread;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderFrameProcessingThread;->a(Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderCallback;)V

    return-void

    :cond_0
    new-instance v0, Lln0;

    const/16 v1, 0xa

    invoke-direct {v0, p1, v1}, Lln0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderFrameProcessingThread;->a(Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderCallback;)V

    return-void
.end method
