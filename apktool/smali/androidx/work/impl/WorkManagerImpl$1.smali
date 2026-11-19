.class Landroidx/work/impl/WorkManagerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/arch/core/util/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/arch/core/util/Function<",
        "Ljava/util/List<",
        "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
        ">;",
        "Landroidx/work/WorkInfo;",
        ">;"
    }
.end annotation


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 38

    move-object/from16 v0, p1

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    iget-object v3, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->q:Ljava/util/List;

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/work/Data;

    :goto_0
    move-object v9, v3

    goto :goto_1

    :cond_0
    sget-object v3, Landroidx/work/Data;->c:Landroidx/work/Data;

    goto :goto_0

    :goto_1
    new-instance v4, Landroidx/work/WorkInfo;

    iget-object v3, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->b:Landroidx/work/WorkInfo$State;

    new-instance v7, Ljava/util/HashSet;

    iget-object v3, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->p:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v7, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v8, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->c:Landroidx/work/Data;

    iget v10, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->h:I

    iget v11, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->m:I

    iget-object v12, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->g:Landroidx/work/Constraints;

    iget-wide v13, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->d:J

    const/16 p0, 0x0

    iget-wide v1, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->e:J

    const-wide/16 v15, 0x0

    cmp-long v3, v1, v15

    if-eqz v3, :cond_1

    new-instance v3, Landroidx/work/WorkInfo$PeriodicityInfo;

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    iget-wide v4, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->f:J

    invoke-direct {v3, v1, v2, v4, v5}, Landroidx/work/WorkInfo$PeriodicityInfo;-><init>(JJ)V

    move-object v1, v3

    goto :goto_2

    :cond_1
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v1, p0

    :goto_2
    iget-object v2, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->b:Landroidx/work/WorkInfo$State;

    sget-object v3, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    if-ne v2, v3, :cond_4

    sget-object v4, Landroidx/work/impl/model/WorkSpec;->z:Landroidx/work/impl/model/WorkSpec$Companion;

    if-ne v2, v3, :cond_2

    iget v2, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->h:I

    if-lez v2, :cond_2

    const/16 v19, 0x1

    goto :goto_3

    :cond_2
    const/16 v19, 0x0

    :goto_3
    iget v2, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->h:I

    iget-object v3, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->i:Landroidx/work/BackoffPolicy;

    move-object/from16 v36, v6

    iget-wide v5, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->j:J

    move-object/from16 v37, v1

    move/from16 v20, v2

    iget-wide v1, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->k:J

    move-wide/from16 v21, v15

    iget v15, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->l:I

    move-wide/from16 v24, v1

    iget-wide v1, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->e:J

    cmp-long v16, v1, v21

    if-eqz v16, :cond_3

    const/16 v27, 0x1

    :goto_4
    move-wide/from16 v32, v1

    goto :goto_5

    :cond_3
    const/16 v27, 0x0

    goto :goto_4

    :goto_5
    iget-wide v1, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->d:J

    move-wide/from16 v28, v1

    iget-wide v1, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->f:J

    move-wide/from16 v30, v1

    iget-wide v1, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->n:J

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v34, v1

    move-object/from16 v21, v3

    move-wide/from16 v22, v5

    move/from16 v26, v15

    invoke-static/range {v19 .. v35}, Landroidx/work/impl/model/WorkSpec$Companion;->a(ZILandroidx/work/BackoffPolicy;JJIZJJJJ)J

    move-result-wide v1

    goto :goto_6

    :cond_4
    move-object/from16 v37, v1

    move-object/from16 v36, v6

    const-wide v1, 0x7fffffffffffffffL

    :goto_6
    iget v0, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->o:I

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v36

    move-object/from16 v15, v37

    move/from16 v18, v0

    move-wide/from16 v16, v1

    invoke-direct/range {v4 .. v18}, Landroidx/work/WorkInfo;-><init>(Ljava/util/UUID;Landroidx/work/WorkInfo$State;Ljava/util/Set;Landroidx/work/Data;Landroidx/work/Data;IILandroidx/work/Constraints;JLandroidx/work/WorkInfo$PeriodicityInfo;JI)V

    move-object/from16 v17, v4

    return-object v17

    :cond_5
    const/16 p0, 0x0

    return-object p0
.end method
