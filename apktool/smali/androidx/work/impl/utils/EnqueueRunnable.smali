.class public abstract Landroidx/work/impl/utils/EnqueueRunnable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "EnqueueRunnable"

    invoke-static {v0}, Landroidx/work/Logger;->b(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static a(Landroidx/work/impl/WorkContinuationImpl;)Z
    .locals 57

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/work/impl/WorkContinuationImpl;->g:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/work/impl/WorkContinuationImpl;

    iget-boolean v5, v4, Landroidx/work/impl/WorkContinuationImpl;->h:Z

    if-nez v5, :cond_0

    invoke-static {v4}, Landroidx/work/impl/utils/EnqueueRunnable;->a(Landroidx/work/impl/WorkContinuationImpl;)Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/work/Logger;->a()Landroidx/work/Logger;

    move-result-object v5

    const-string v6, ", "

    iget-object v4, v4, Landroidx/work/impl/WorkContinuationImpl;->e:Ljava/util/ArrayList;

    invoke-static {v6, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    move v3, v2

    :cond_2
    invoke-static {v0}, Landroidx/work/impl/WorkContinuationImpl;->c(Landroidx/work/impl/WorkContinuationImpl;)Ljava/util/HashSet;

    move-result-object v1

    iget-object v4, v0, Landroidx/work/impl/WorkContinuationImpl;->a:Landroidx/work/impl/WorkManagerImpl;

    iget-object v5, v0, Landroidx/work/impl/WorkContinuationImpl;->d:Ljava/util/List;

    new-array v6, v2, [Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget-object v6, v0, Landroidx/work/impl/WorkContinuationImpl;->b:Ljava/lang/String;

    iget-object v7, v0, Landroidx/work/impl/WorkContinuationImpl;->c:Landroidx/work/ExistingWorkPolicy;

    iget-object v8, v4, Landroidx/work/impl/WorkManagerImpl;->c:Landroidx/work/Configuration;

    iget-object v8, v8, Landroidx/work/Configuration;->d:Landroidx/work/Clock;

    invoke-interface {v8}, Landroidx/work/Clock;->a()J

    move-result-wide v8

    iget-object v10, v4, Landroidx/work/impl/WorkManagerImpl;->d:Landroidx/work/impl/WorkDatabase;

    if-eqz v1, :cond_3

    array-length v12, v1

    if-lez v12, :cond_3

    const/4 v12, 0x1

    goto :goto_1

    :cond_3
    move v12, v2

    :goto_1
    if-eqz v12, :cond_9

    array-length v13, v1

    move v14, v2

    move/from16 v16, v14

    move/from16 v17, v16

    const/4 v15, 0x1

    :goto_2
    if-ge v14, v13, :cond_a

    aget-object v2, v1, v14

    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->D()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v11

    invoke-interface {v11, v2}, Landroidx/work/impl/model/WorkSpecDao;->k(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-static {}, Landroidx/work/Logger;->a()Landroidx/work/Logger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    :goto_3
    move/from16 v19, v3

    const/4 v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_12

    :cond_5
    iget-object v2, v2, Landroidx/work/impl/model/WorkSpec;->b:Landroidx/work/WorkInfo$State;

    sget-object v11, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    if-ne v2, v11, :cond_6

    const/4 v11, 0x1

    goto :goto_4

    :cond_6
    const/4 v11, 0x0

    :goto_4
    and-int/2addr v15, v11

    sget-object v11, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    if-ne v2, v11, :cond_7

    const/16 v17, 0x1

    goto :goto_5

    :cond_7
    sget-object v11, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    if-ne v2, v11, :cond_8

    const/16 v16, 0x1

    :cond_8
    :goto_5
    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x0

    goto :goto_2

    :cond_9
    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    :cond_a
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    if-nez v12, :cond_19

    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->D()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v11

    invoke-interface {v11, v6}, Landroidx/work/impl/model/WorkSpecDao;->p(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_19

    sget-object v13, Landroidx/work/ExistingWorkPolicy;->APPEND:Landroidx/work/ExistingWorkPolicy;

    if-eq v7, v13, :cond_f

    sget-object v13, Landroidx/work/ExistingWorkPolicy;->APPEND_OR_REPLACE:Landroidx/work/ExistingWorkPolicy;

    if-ne v7, v13, :cond_b

    goto :goto_7

    :cond_b
    sget-object v13, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    if-ne v7, v13, :cond_d

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/work/impl/model/WorkSpec$IdAndState;

    iget-object v13, v13, Landroidx/work/impl/model/WorkSpec$IdAndState;->b:Landroidx/work/WorkInfo$State;

    sget-object v14, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    if-eq v13, v14, :cond_4

    sget-object v14, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    if-ne v13, v14, :cond_c

    goto :goto_3

    :cond_d
    new-instance v7, Lb5;

    const/4 v13, 0x7

    invoke-direct {v7, v10, v6, v4, v13}, Lb5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v13, Lxn0;

    const/16 v14, 0x13

    invoke-direct {v13, v7, v14}, Lxn0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v10, v13}, Landroidx/room/RoomDatabase;->v(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->D()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v7

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/work/impl/model/WorkSpec$IdAndState;

    iget-object v13, v13, Landroidx/work/impl/model/WorkSpec$IdAndState;->a:Ljava/lang/String;

    invoke-interface {v7, v13}, Landroidx/work/impl/model/WorkSpecDao;->a(Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    move/from16 v18, v2

    move/from16 v19, v3

    const/4 v2, 0x1

    goto/16 :goto_e

    :cond_f
    :goto_7
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->y()Landroidx/work/impl/model/DependencyDao;

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/work/impl/model/WorkSpec$IdAndState;

    move/from16 v18, v2

    iget-object v2, v14, Landroidx/work/impl/model/WorkSpec$IdAndState;->a:Ljava/lang/String;

    invoke-interface {v12, v2}, Landroidx/work/impl/model/DependencyDao;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, v14, Landroidx/work/impl/model/WorkSpec$IdAndState;->b:Landroidx/work/WorkInfo$State;

    move/from16 v19, v3

    sget-object v3, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    if-ne v2, v3, :cond_10

    const/4 v3, 0x1

    goto :goto_9

    :cond_10
    const/4 v3, 0x0

    :goto_9
    and-int/2addr v3, v15

    sget-object v15, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    if-ne v2, v15, :cond_11

    const/16 v17, 0x1

    goto :goto_a

    :cond_11
    sget-object v15, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    if-ne v2, v15, :cond_12

    const/16 v16, 0x1

    :cond_12
    :goto_a
    iget-object v2, v14, Landroidx/work/impl/model/WorkSpec$IdAndState;->a:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v15, v3

    goto :goto_b

    :cond_13
    move/from16 v19, v3

    :goto_b
    move/from16 v2, v18

    move/from16 v3, v19

    goto :goto_8

    :cond_14
    move/from16 v18, v2

    move/from16 v19, v3

    sget-object v2, Landroidx/work/ExistingWorkPolicy;->APPEND_OR_REPLACE:Landroidx/work/ExistingWorkPolicy;

    if-ne v7, v2, :cond_17

    if-nez v16, :cond_15

    if-eqz v17, :cond_17

    :cond_15
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->D()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v2

    invoke-interface {v2, v6}, Landroidx/work/impl/model/WorkSpecDao;->p(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/work/impl/model/WorkSpec$IdAndState;

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpec$IdAndState;->a:Ljava/lang/String;

    invoke-interface {v2, v7}, Landroidx/work/impl/model/WorkSpecDao;->a(Ljava/lang/String;)V

    goto :goto_c

    :cond_16
    sget-object v13, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/16 v16, 0x0

    const/16 v17, 0x0

    :cond_17
    invoke-interface {v13, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    array-length v2, v1

    if-lez v2, :cond_18

    const/4 v12, 0x1

    goto :goto_d

    :cond_18
    const/4 v12, 0x0

    :goto_d
    const/4 v2, 0x0

    goto :goto_e

    :cond_19
    move/from16 v18, v2

    move/from16 v19, v3

    goto :goto_d

    :goto_e
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/work/WorkRequest;

    iget-object v7, v5, Landroidx/work/WorkRequest;->b:Landroidx/work/impl/model/WorkSpec;

    iget-object v11, v5, Landroidx/work/WorkRequest;->a:Ljava/util/UUID;

    if-eqz v12, :cond_1c

    if-nez v15, :cond_1c

    if-eqz v17, :cond_1a

    sget-object v13, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    iput-object v13, v7, Landroidx/work/impl/model/WorkSpec;->b:Landroidx/work/WorkInfo$State;

    goto :goto_10

    :cond_1a
    if-eqz v16, :cond_1b

    sget-object v13, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    iput-object v13, v7, Landroidx/work/impl/model/WorkSpec;->b:Landroidx/work/WorkInfo$State;

    goto :goto_10

    :cond_1b
    sget-object v13, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    iput-object v13, v7, Landroidx/work/impl/model/WorkSpec;->b:Landroidx/work/WorkInfo$State;

    goto :goto_10

    :cond_1c
    iput-wide v8, v7, Landroidx/work/impl/model/WorkSpec;->n:J

    :goto_10
    iget-object v13, v7, Landroidx/work/impl/model/WorkSpec;->b:Landroidx/work/WorkInfo$State;

    sget-object v14, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    if-ne v13, v14, :cond_1d

    const/4 v2, 0x1

    :cond_1d
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->D()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v13

    iget-object v14, v4, Landroidx/work/impl/WorkManagerImpl;->f:Ljava/util/List;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v7, Landroidx/work/impl/model/WorkSpec;->e:Landroidx/work/Data;

    move/from16 v20, v2

    const-string v2, "androidx.work.multiprocess.RemoteListenableDelegatingWorker.ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME"

    invoke-virtual {v14, v2}, Landroidx/work/Data;->a(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v21, v3

    iget-object v3, v7, Landroidx/work/impl/model/WorkSpec;->e:Landroidx/work/Data;

    move-object/from16 v22, v4

    const-string v4, "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_PACKAGE_NAME"

    invoke-virtual {v3, v4}, Landroidx/work/Data;->a(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, v7, Landroidx/work/impl/model/WorkSpec;->e:Landroidx/work/Data;

    move/from16 v23, v3

    const-string v3, "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_CLASS_NAME"

    invoke-virtual {v4, v3}, Landroidx/work/Data;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v14, :cond_1e

    if-eqz v23, :cond_1e

    if-eqz v3, :cond_1e

    iget-object v3, v7, Landroidx/work/impl/model/WorkSpec;->c:Ljava/lang/String;

    new-instance v4, Landroidx/work/Data$Builder;

    invoke-direct {v4}, Landroidx/work/Data$Builder;-><init>()V

    iget-object v14, v7, Landroidx/work/impl/model/WorkSpec;->e:Landroidx/work/Data;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v14, Landroidx/work/Data;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v14}, Landroidx/work/Data$Builder;->b(Ljava/util/HashMap;)V

    iget-object v14, v4, Landroidx/work/Data$Builder;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Landroidx/work/Data$Builder;->a()Landroidx/work/Data;

    move-result-object v28

    iget-object v2, v7, Landroidx/work/impl/model/WorkSpec;->a:Ljava/lang/String;

    iget-object v3, v7, Landroidx/work/impl/model/WorkSpec;->b:Landroidx/work/WorkInfo$State;

    iget-object v4, v7, Landroidx/work/impl/model/WorkSpec;->d:Ljava/lang/String;

    iget-object v14, v7, Landroidx/work/impl/model/WorkSpec;->f:Landroidx/work/Data;

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    iget-wide v2, v7, Landroidx/work/impl/model/WorkSpec;->g:J

    move-wide/from16 v30, v2

    iget-wide v2, v7, Landroidx/work/impl/model/WorkSpec;->h:J

    move-wide/from16 v32, v2

    iget-wide v2, v7, Landroidx/work/impl/model/WorkSpec;->i:J

    move-wide/from16 v34, v2

    iget-object v2, v7, Landroidx/work/impl/model/WorkSpec;->j:Landroidx/work/Constraints;

    iget v3, v7, Landroidx/work/impl/model/WorkSpec;->k:I

    move-object/from16 v36, v2

    iget-object v2, v7, Landroidx/work/impl/model/WorkSpec;->l:Landroidx/work/BackoffPolicy;

    move-object/from16 v38, v2

    move/from16 v37, v3

    iget-wide v2, v7, Landroidx/work/impl/model/WorkSpec;->m:J

    move-wide/from16 v39, v2

    iget-wide v2, v7, Landroidx/work/impl/model/WorkSpec;->n:J

    move-wide/from16 v41, v2

    iget-wide v2, v7, Landroidx/work/impl/model/WorkSpec;->o:J

    move-wide/from16 v43, v2

    iget-wide v2, v7, Landroidx/work/impl/model/WorkSpec;->p:J

    move-wide/from16 v45, v2

    iget-boolean v2, v7, Landroidx/work/impl/model/WorkSpec;->q:Z

    iget-object v3, v7, Landroidx/work/impl/model/WorkSpec;->r:Landroidx/work/OutOfQuotaPolicy;

    move/from16 v47, v2

    iget v2, v7, Landroidx/work/impl/model/WorkSpec;->s:I

    move/from16 v49, v2

    iget v2, v7, Landroidx/work/impl/model/WorkSpec;->t:I

    move/from16 v50, v2

    move-object/from16 v48, v3

    iget-wide v2, v7, Landroidx/work/impl/model/WorkSpec;->u:J

    move-wide/from16 v51, v2

    iget v2, v7, Landroidx/work/impl/model/WorkSpec;->v:I

    iget v3, v7, Landroidx/work/impl/model/WorkSpec;->w:I

    move/from16 v53, v2

    iget-object v2, v7, Landroidx/work/impl/model/WorkSpec;->x:Ljava/lang/String;

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpec;->y:Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v23, Landroidx/work/impl/model/WorkSpec;

    const-string v26, "androidx.work.multiprocess.RemoteListenableDelegatingWorker"

    move-object/from16 v55, v2

    move/from16 v54, v3

    move-object/from16 v27, v4

    move-object/from16 v56, v7

    move-object/from16 v29, v14

    invoke-direct/range {v23 .. v56}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V

    move-object/from16 v7, v23

    :cond_1e
    invoke-interface {v13, v7}, Landroidx/work/impl/model/WorkSpecDao;->e(Landroidx/work/impl/model/WorkSpec;)V

    if-eqz v12, :cond_1f

    array-length v2, v1

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_1f

    aget-object v4, v1, v3

    new-instance v7, Landroidx/work/impl/model/Dependency;

    invoke-virtual {v11}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v7, v13, v4}, Landroidx/work/impl/model/Dependency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->y()Landroidx/work/impl/model/DependencyDao;

    move-result-object v4

    invoke-interface {v4, v7}, Landroidx/work/impl/model/DependencyDao;->a(Landroidx/work/impl/model/Dependency;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_1f
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->E()Landroidx/work/impl/model/WorkTagDao;

    move-result-object v2

    invoke-virtual {v11}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v5, Landroidx/work/WorkRequest;->c:Ljava/util/Set;

    invoke-interface {v2, v3, v4}, Landroidx/work/impl/model/WorkTagDao;->c(Ljava/lang/String;Ljava/util/Set;)V

    if-nez v18, :cond_20

    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->B()Landroidx/work/impl/model/WorkNameDao;

    move-result-object v2

    new-instance v3, Landroidx/work/impl/model/WorkName;

    invoke-virtual {v11}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v6, v4}, Landroidx/work/impl/model/WorkName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Landroidx/work/impl/model/WorkNameDao;->a(Landroidx/work/impl/model/WorkName;)V

    :cond_20
    move/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    goto/16 :goto_f

    :cond_21
    const/4 v1, 0x1

    :goto_12
    iput-boolean v1, v0, Landroidx/work/impl/WorkContinuationImpl;->h:Z

    or-int v0, v19, v2

    return v0
.end method
