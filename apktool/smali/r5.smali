.class public final synthetic Lr5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(JI)V
    .locals 0

    iput p3, p0, Lr5;->b:I

    iput-wide p1, p0, Lr5;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 85

    move-object/from16 v0, p0

    iget v1, v0, Lr5;->b:I

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    iget-wide v6, v0, Lr5;->c:J

    const-wide v8, 0xffffffffL

    const/16 v10, 0x20

    packed-switch v1, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    sget-object v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->c:Landroidx/work/impl/model/WorkSpecDao_Impl$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC"

    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->T1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {v1, v0, v6, v7}, Landroidx/sqlite/SQLiteStatement;->a(IJ)V

    const-string v4, "id"

    invoke-static {v1, v4}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    const-string v5, "state"

    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    const-string v6, "worker_class_name"

    invoke-static {v1, v6}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    const-string v7, "input_merger_class_name"

    invoke-static {v1, v7}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    const-string v8, "input"

    invoke-static {v1, v8}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    const-string v9, "output"

    invoke-static {v1, v9}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    const-string v10, "initial_delay"

    invoke-static {v1, v10}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v10

    const-string v11, "interval_duration"

    invoke-static {v1, v11}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v11

    const-string v12, "flex_duration"

    invoke-static {v1, v12}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v12

    const-string v13, "run_attempt_count"

    invoke-static {v1, v13}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v13

    const-string v14, "backoff_policy"

    invoke-static {v1, v14}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v14

    const-string v15, "backoff_delay_duration"

    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v15

    const-string v0, "last_enqueue_time"

    invoke-static {v1, v0}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    const-string v2, "minimum_retention_duration"

    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    const-string v3, "schedule_requested_at"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 p1, v3

    const-string v3, "run_in_foreground"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "out_of_quota_policy"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "period_count"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "generation"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "next_schedule_time_override"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "next_schedule_time_override_generation"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    const-string v3, "stop_reason"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    const-string v3, "trace_tag"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v25, v3

    const-string v3, "backoff_on_system_interruptions"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v26, v3

    const-string v3, "required_network_type"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v27, v3

    const-string v3, "required_network_request"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v28, v3

    const-string v3, "requires_charging"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v29, v3

    const-string v3, "requires_device_idle"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v30, v3

    const-string v3, "requires_battery_not_low"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v31, v3

    const-string v3, "requires_storage_not_low"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v32, v3

    const-string v3, "trigger_content_update_delay"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v33, v3

    const-string v3, "trigger_max_content_delay"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v34, v3

    const-string v3, "content_uri_triggers"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v35, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->Q1()Z

    move-result v36

    if-eqz v36, :cond_9

    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->m1(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v71, v3

    move/from16 v36, v4

    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Landroidx/work/impl/model/WorkTypeConverters;->e(I)Landroidx/work/WorkInfo$State;

    move-result-object v39

    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->m1(I)Ljava/lang/String;

    move-result-object v40

    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->m1(I)Ljava/lang/String;

    move-result-object v41

    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    move-result-object v3

    sget-object v4, Landroidx/work/Data;->b:Landroidx/work/Data$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Landroidx/work/Data$Companion;->a([B)Landroidx/work/Data;

    move-result-object v42

    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Landroidx/work/Data$Companion;->a([B)Landroidx/work/Data;

    move-result-object v43

    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v44

    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v46

    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v48

    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move/from16 v51, v3

    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Landroidx/work/impl/model/WorkTypeConverters;->b(I)Landroidx/work/BackoffPolicy;

    move-result-object v52

    invoke-interface {v1, v15}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v53

    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v55

    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v57

    move/from16 v3, p1

    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v59

    move/from16 p1, v2

    move/from16 v4, v18

    move/from16 v18, v3

    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    if-eqz v2, :cond_0

    const/16 v61, 0x1

    :goto_1
    move/from16 v2, v19

    move/from16 v19, v4

    goto :goto_2

    :cond_0
    const/16 v61, 0x0

    goto :goto_1

    :goto_2
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Landroidx/work/impl/model/WorkTypeConverters;->d(I)Landroidx/work/OutOfQuotaPolicy;

    move-result-object v62

    move/from16 v3, v20

    move/from16 v20, v5

    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v72, v3

    move/from16 v5, v21

    move/from16 v21, v2

    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v3, v22

    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v65

    move/from16 v22, v0

    move/from16 v64, v2

    move/from16 v0, v23

    move/from16 v23, v3

    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v63, v4

    move/from16 v3, v24

    move/from16 v24, v5

    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, v25

    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_1

    const/16 v69, 0x0

    :goto_3
    move/from16 v25, v0

    move/from16 v0, v26

    goto :goto_4

    :cond_1
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->m1(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v69, v25

    goto :goto_3

    :goto_4
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_2

    move/from16 v67, v2

    move/from16 v26, v3

    const/4 v2, 0x0

    goto :goto_5

    :cond_2
    move/from16 v67, v2

    move/from16 v26, v3

    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_5
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_6

    :cond_3
    const/4 v2, 0x0

    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v70, v2

    :goto_7
    move/from16 v68, v4

    move/from16 v2, v27

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object/from16 v33, v1

    goto/16 :goto_11

    :cond_4
    const/16 v70, 0x0

    goto :goto_7

    :goto_8
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Landroidx/work/impl/model/WorkTypeConverters;->c(I)Landroidx/work/NetworkType;

    move-result-object v75

    move/from16 v3, v28

    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    move-result-object v4

    invoke-static {v4}, Landroidx/work/impl/model/WorkTypeConverters;->g([B)Landroidx/work/impl/utils/NetworkRequestCompat;

    move-result-object v74

    move/from16 v27, v2

    move/from16 v28, v3

    move/from16 v4, v29

    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    if-eqz v2, :cond_5

    const/16 v76, 0x1

    :goto_9
    move/from16 v29, v4

    move/from16 v2, v30

    goto :goto_a

    :cond_5
    const/16 v76, 0x0

    goto :goto_9

    :goto_a
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    if-eqz v3, :cond_6

    const/16 v77, 0x1

    :goto_b
    move/from16 v30, v5

    move/from16 v3, v31

    goto :goto_c

    :cond_6
    const/16 v77, 0x0

    goto :goto_b

    :goto_c
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    if-eqz v4, :cond_7

    const/16 v78, 0x1

    :goto_d
    move v5, v2

    move/from16 v31, v3

    move/from16 v4, v32

    goto :goto_e

    :cond_7
    const/16 v78, 0x0

    goto :goto_d

    :goto_e
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    if-eqz v2, :cond_8

    const/16 v79, 0x1

    :goto_f
    move/from16 v2, v33

    goto :goto_10

    :cond_8
    const/16 v79, 0x0

    goto :goto_f

    :goto_10
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v80

    move/from16 v3, v34

    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v82

    move/from16 v32, v0

    move/from16 v0, v35

    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    move-result-object v33

    invoke-static/range {v33 .. v33}, Landroidx/work/impl/model/WorkTypeConverters;->a([B)Ljava/util/LinkedHashSet;

    move-result-object v84

    new-instance v50, Landroidx/work/Constraints;

    move-object/from16 v73, v50

    invoke-direct/range {v73 .. v84}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    move-object/from16 v50, v73

    new-instance v37, Landroidx/work/impl/model/WorkSpec;

    invoke-direct/range {v37 .. v70}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v35, v0

    move-object/from16 v0, v37

    move-object/from16 v33, v1

    move-object/from16 v1, v71

    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v34, v3

    move/from16 v0, v22

    move/from16 v22, v23

    move/from16 v23, v25

    move/from16 v25, v30

    move-object v3, v1

    move/from16 v30, v5

    move/from16 v5, v20

    move-object/from16 v1, v33

    move/from16 v20, v72

    move/from16 v33, v2

    move/from16 v2, p1

    move/from16 p1, v18

    move/from16 v18, v19

    move/from16 v19, v21

    move/from16 v21, v24

    move/from16 v24, v26

    move/from16 v26, v32

    move/from16 v32, v4

    move/from16 v4, v36

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    goto :goto_11

    :cond_9
    move-object/from16 v33, v1

    move-object v1, v3

    invoke-interface/range {v33 .. v33}, Ljava/lang/AutoCloseable;->close()V

    return-object v1

    :goto_11
    invoke-interface/range {v33 .. v33}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    sget v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/VtoCameraButtonKt;->a:F

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v2

    shr-long/2addr v2, v10

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v3

    and-long/2addr v3, v8

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    div-float/2addr v2, v5

    div-float/2addr v3, v5

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v6, v4

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v11, v4

    shl-long/2addr v6, v10

    and-long/2addr v11, v8

    or-long v15, v6, v11

    sget-object v4, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Size;->c(J)F

    move-result v4

    div-float/2addr v4, v5

    sget v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/VtoCameraButtonKt;->b:F

    invoke-static {v6}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->b(F)F

    move-result v7

    div-float/2addr v7, v5

    sub-float v14, v4, v7

    new-instance v17, Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-static {v6}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->b(F)F

    move-result v18

    const/16 v23, 0x1e

    const/16 v24, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v17 .. v24}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v18, 0x68

    iget-wide v12, v0, Lr5;->c:J

    move-object v11, v1

    invoke-static/range {v11 .. v18}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->r0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v6, v0

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v2, v0

    shl-long/2addr v6, v10

    and-long/2addr v2, v8

    or-long/2addr v2, v6

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Size;->c(J)F

    move-result v0

    div-float/2addr v0, v5

    sget v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/VtoCameraButtonKt;->a:F

    invoke-static {v4}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->b(F)F

    move-result v4

    sub-float v4, v0, v4

    const/4 v7, 0x0

    const/16 v8, 0x78

    move-wide v5, v2

    move-wide v2, v12

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->r0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    sget v0, Lcom/vuitton/android/presentation/screen/storemode/components/StoreModeHomeSlideshowKt;->a:F

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->R1()V

    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    const/4 v0, 0x0

    invoke-direct {v2, v6, v7, v0}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    :pswitch_2
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v2

    and-long/2addr v2, v8

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v5, v3

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v11, v3

    shl-long/2addr v5, v10

    and-long/2addr v11, v8

    or-long/2addr v5, v11

    sget-object v3, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v11, v3

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    shl-long v10, v11, v10

    and-long/2addr v2, v8

    or-long/2addr v2, v10

    new-instance v10, Landroidx/compose/ui/graphics/AndroidPathEffect;

    new-instance v7, Landroid/graphics/DashPathEffect;

    sget-object v8, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailFollowUpKt;->a:[F

    invoke-direct {v7, v8, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-direct {v10, v7}, Landroidx/compose/ui/graphics/AndroidPathEffect;-><init>(Landroid/graphics/PathEffect;)V

    const/4 v9, 0x0

    const/16 v11, 0x1d8

    move-wide v4, v5

    move-wide v6, v2

    iget-wide v2, v0, Lr5;->c:J

    const/4 v8, 0x0

    invoke-static/range {v1 .. v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->x0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFILandroidx/compose/ui/graphics/AndroidPathEffect;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_3
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    const/16 v8, 0x7e

    iget-wide v2, v0, Lr5;->c:J

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->r0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_4
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    const/16 v8, 0x7e

    iget-wide v2, v0, Lr5;->c:J

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->r0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_5
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v8, 0x6e

    move-object v7, v2

    iget-wide v2, v0, Lr5;->c:J

    const-wide/16 v5, 0x0

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->r0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_6
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    const/16 v8, 0x7e

    iget-wide v2, v0, Lr5;->c:J

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->r0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_7
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    const/16 v8, 0x7e

    iget-wide v2, v0, Lr5;->c:J

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->r0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_8
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v8, 0x6e

    move-object v7, v2

    iget-wide v2, v0, Lr5;->c:J

    const-wide/16 v5, 0x0

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->r0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_9
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v2

    and-long/2addr v2, v8

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v5, v3

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v11, v3

    shl-long/2addr v5, v10

    and-long/2addr v11, v8

    or-long/2addr v5, v11

    sget-object v3, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v11, v3

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    shl-long v10, v11, v10

    and-long/2addr v2, v8

    or-long/2addr v2, v10

    new-instance v10, Landroidx/compose/ui/graphics/AndroidPathEffect;

    new-instance v7, Landroid/graphics/DashPathEffect;

    sget-object v8, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailFollowUpBffKt;->a:[F

    invoke-direct {v7, v8, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-direct {v10, v7}, Landroidx/compose/ui/graphics/AndroidPathEffect;-><init>(Landroid/graphics/PathEffect;)V

    const/4 v9, 0x0

    const/16 v11, 0x1d8

    move-wide v4, v5

    move-wide v6, v2

    iget-wide v2, v0, Lr5;->c:J

    const/4 v8, 0x0

    invoke-static/range {v1 .. v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->x0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFILandroidx/compose/ui/graphics/AndroidPathEffect;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_a
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    const/16 v8, 0x7e

    iget-wide v2, v0, Lr5;->c:J

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->r0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_b
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    const/16 v8, 0x7e

    iget-wide v2, v0, Lr5;->c:J

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->r0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_c
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    const/16 v8, 0x7e

    iget-wide v2, v0, Lr5;->c:J

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->r0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_d
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    sget v2, Lcom/vuitton/android/designkit/ui/theme/atoms/LVDragHandleKt;->a:F

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Lcom/vuitton/android/designkit/ui/theme/atoms/LVDragHandleKt;->a:F

    move-wide v6, v8

    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v8

    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v3

    div-float/2addr v3, v5

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v11, v4

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v3, v3

    shl-long/2addr v11, v10

    and-long/2addr v3, v6

    or-long/2addr v3, v11

    sget-object v9, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v11

    shr-long/2addr v11, v10

    long-to-int v9, v11

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v2

    div-float/2addr v2, v5

    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v11, v5

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v13, v2

    shl-long v9, v11, v10

    and-long v5, v13, v6

    or-long v6, v9, v5

    const/4 v10, 0x0

    const/16 v11, 0x1f0

    move-wide v4, v3

    iget-wide v2, v0, Lr5;->c:J

    const/4 v9, 0x0

    invoke-static/range {v1 .. v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->x0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFILandroidx/compose/ui/graphics/AndroidPathEffect;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_e
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    const/16 v8, 0x7e

    iget-wide v2, v0, Lr5;->c:J

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->r0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_f
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_10
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    sget-object v2, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->c:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    new-instance v3, Landroidx/compose/foundation/text/selection/SelectionHandleInfo;

    sget-object v4, Landroidx/compose/foundation/text/Handle;->Cursor:Landroidx/compose/foundation/text/Handle;

    sget-object v7, Landroidx/compose/foundation/text/selection/SelectionHandleAnchor;->Middle:Landroidx/compose/foundation/text/selection/SelectionHandleAnchor;

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-wide v5, v0, Lr5;->c:J

    invoke-direct/range {v3 .. v9}, Landroidx/compose/foundation/text/selection/SelectionHandleInfo;-><init>(Landroidx/compose/foundation/text/Handle;JLandroidx/compose/foundation/text/selection/SelectionHandleAnchor;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->a(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_11
    move-wide v6, v8

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->a()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroidx/compose/ui/graphics/AndroidPath;->a(FF)V

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v8

    shr-long/2addr v8, v10

    long-to-int v3, v8

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/AndroidPath;->c(FF)V

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v3

    shr-long/2addr v3, v10

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    div-float/2addr v3, v5

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/AndroidPath;->c(FF)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/AndroidPath;->close()V

    const/4 v5, 0x0

    const/16 v6, 0x3c

    iget-wide v3, v0, Lr5;->c:J

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->U(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;JLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_12
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/ui/draw/CacheDrawScope;

    sget v1, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->a:F

    iget-object v1, v0, Landroidx/compose/ui/draw/CacheDrawScope;->b:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v1}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->b()J

    move-result-wide v1

    shr-long/2addr v1, v10

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    div-float/2addr v1, v5

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->d(Landroidx/compose/ui/draw/CacheDrawScope;F)Landroidx/compose/ui/graphics/ImageBitmap;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/graphics/ColorFilter;->b:Landroidx/compose/ui/graphics/ColorFilter$Companion;

    invoke-static {v3, v6, v7}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->a(Landroidx/compose/ui/graphics/ColorFilter$Companion;J)Landroidx/compose/ui/graphics/BlendModeColorFilter;

    move-result-object v3

    new-instance v4, Ls5;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v2, v3, v5}, Ls5;-><init>(FLjava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v4}, Landroidx/compose/ui/draw/CacheDrawScope;->e(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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
