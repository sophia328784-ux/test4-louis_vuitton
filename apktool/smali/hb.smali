.class public final synthetic Lhb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lhb;->b:I

    iput p1, p0, Lhb;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 82

    move-object/from16 v0, p0

    iget v1, v0, Lhb;->b:I

    const/4 v3, 0x1

    iget v0, v0, Lhb;->c:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    sget-object v4, Landroidx/work/impl/model/WorkSpecDao_Impl;->c:Landroidx/work/impl/model/WorkSpecDao_Impl$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND LENGTH(content_uri_triggers)=0 AND state NOT IN (2, 3, 5))"

    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteConnection;->T1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    int-to-long v4, v0

    :try_start_0
    invoke-interface {v1, v3, v4, v5}, Landroidx/sqlite/SQLiteStatement;->a(IJ)V

    const-string v0, "id"

    invoke-static {v1, v0}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    const-string v4, "state"

    invoke-static {v1, v4}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    const-string v5, "worker_class_name"

    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    const-string v6, "input_merger_class_name"

    invoke-static {v1, v6}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    const-string v7, "input"

    invoke-static {v1, v7}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    const-string v8, "output"

    invoke-static {v1, v8}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    const-string v9, "initial_delay"

    invoke-static {v1, v9}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    const-string v10, "interval_duration"

    invoke-static {v1, v10}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v10

    const-string v11, "flex_duration"

    invoke-static {v1, v11}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v11

    const-string v12, "run_attempt_count"

    invoke-static {v1, v12}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v12

    const-string v13, "backoff_policy"

    invoke-static {v1, v13}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v13

    const-string v14, "backoff_delay_duration"

    invoke-static {v1, v14}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v14

    const-string v15, "last_enqueue_time"

    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v15

    const-string v2, "minimum_retention_duration"

    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    const-string v3, "schedule_requested_at"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 p0, v3

    const-string v3, "run_in_foreground"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 p1, v3

    const-string v3, "out_of_quota_policy"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v16, v3

    const-string v3, "period_count"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "generation"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "next_schedule_time_override"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "next_schedule_time_override_generation"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "stop_reason"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "trace_tag"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "backoff_on_system_interruptions"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    const-string v3, "required_network_type"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    const-string v3, "required_network_request"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v25, v3

    const-string v3, "requires_charging"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v26, v3

    const-string v3, "requires_device_idle"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v27, v3

    const-string v3, "requires_battery_not_low"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v28, v3

    const-string v3, "requires_storage_not_low"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v29, v3

    const-string v3, "trigger_content_update_delay"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v30, v3

    const-string v3, "trigger_max_content_delay"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v31, v3

    const-string v3, "content_uri_triggers"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->c(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v32, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->Q1()Z

    move-result v33

    if-eqz v33, :cond_9

    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->m1(I)Ljava/lang/String;

    move-result-object v35

    move/from16 v33, v2

    move-object/from16 v68, v3

    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Landroidx/work/impl/model/WorkTypeConverters;->e(I)Landroidx/work/WorkInfo$State;

    move-result-object v36

    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->m1(I)Ljava/lang/String;

    move-result-object v37

    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->m1(I)Ljava/lang/String;

    move-result-object v38

    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    move-result-object v2

    sget-object v3, Landroidx/work/Data;->b:Landroidx/work/Data$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroidx/work/Data$Companion;->a([B)Landroidx/work/Data;

    move-result-object v39

    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    move-result-object v2

    invoke-static {v2}, Landroidx/work/Data$Companion;->a([B)Landroidx/work/Data;

    move-result-object v40

    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v41

    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v43

    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v45

    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v48, v2

    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Landroidx/work/impl/model/WorkTypeConverters;->b(I)Landroidx/work/BackoffPolicy;

    move-result-object v49

    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v50

    invoke-interface {v1, v15}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v52

    move/from16 v2, v33

    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v54

    move/from16 v3, p0

    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v56

    move/from16 p0, v0

    move/from16 v33, v2

    move/from16 v0, p1

    move/from16 p1, v3

    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    if-eqz v2, :cond_0

    const/16 v58, 0x1

    :goto_1
    move/from16 v2, v16

    move/from16 v16, v4

    goto :goto_2

    :cond_0
    const/16 v58, 0x0

    goto :goto_1

    :goto_2
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Landroidx/work/impl/model/WorkTypeConverters;->d(I)Landroidx/work/OutOfQuotaPolicy;

    move-result-object v59

    move/from16 v3, v17

    move/from16 v17, v5

    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v69, v3

    move/from16 v5, v18

    move/from16 v18, v2

    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v3, v19

    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v62

    move/from16 v19, v0

    move/from16 v61, v2

    move/from16 v0, v20

    move/from16 v20, v3

    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v60, v4

    move/from16 v3, v21

    move/from16 v21, v5

    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, v22

    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v22

    const/16 v34, 0x0

    if-eqz v22, :cond_1

    move-object/from16 v66, v34

    :goto_3
    move/from16 v22, v0

    move/from16 v0, v23

    goto :goto_4

    :cond_1
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->m1(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v66, v22

    goto :goto_3

    :goto_4
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_2

    move/from16 v64, v2

    move/from16 v23, v3

    move-object/from16 v2, v34

    goto :goto_5

    :cond_2
    move/from16 v64, v2

    move/from16 v23, v3

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

    move-result-object v34

    :cond_4
    move/from16 v65, v4

    move/from16 v2, v24

    move-object/from16 v67, v34

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object/from16 v30, v1

    goto/16 :goto_10

    :goto_7
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Landroidx/work/impl/model/WorkTypeConverters;->c(I)Landroidx/work/NetworkType;

    move-result-object v72

    move/from16 v3, v25

    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    move-result-object v4

    invoke-static {v4}, Landroidx/work/impl/model/WorkTypeConverters;->g([B)Landroidx/work/impl/utils/NetworkRequestCompat;

    move-result-object v71

    move/from16 v24, v2

    move/from16 v25, v3

    move/from16 v4, v26

    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    if-eqz v2, :cond_5

    const/16 v73, 0x1

    :goto_8
    move/from16 v26, v4

    move/from16 v2, v27

    goto :goto_9

    :cond_5
    const/16 v73, 0x0

    goto :goto_8

    :goto_9
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    if-eqz v3, :cond_6

    const/16 v74, 0x1

    :goto_a
    move/from16 v27, v5

    move/from16 v3, v28

    goto :goto_b

    :cond_6
    const/16 v74, 0x0

    goto :goto_a

    :goto_b
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    if-eqz v4, :cond_7

    const/16 v75, 0x1

    :goto_c
    move v5, v2

    move/from16 v28, v3

    move/from16 v4, v29

    goto :goto_d

    :cond_7
    const/16 v75, 0x0

    goto :goto_c

    :goto_d
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    if-eqz v2, :cond_8

    const/16 v76, 0x1

    :goto_e
    move/from16 v2, v30

    goto :goto_f

    :cond_8
    const/16 v76, 0x0

    goto :goto_e

    :goto_f
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v77

    move/from16 v3, v31

    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v79

    move/from16 v29, v0

    move/from16 v0, v32

    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroidx/work/impl/model/WorkTypeConverters;->a([B)Ljava/util/LinkedHashSet;

    move-result-object v81

    new-instance v47, Landroidx/work/Constraints;

    move-object/from16 v70, v47

    invoke-direct/range {v70 .. v81}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    move-object/from16 v47, v70

    new-instance v34, Landroidx/work/impl/model/WorkSpec;

    invoke-direct/range {v34 .. v67}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v32, v0

    move-object/from16 v0, v34

    move-object/from16 v30, v1

    move-object/from16 v1, v68

    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v0, v29

    move/from16 v29, v4

    move/from16 v4, v16

    move/from16 v16, v18

    move/from16 v18, v21

    move/from16 v21, v23

    move/from16 v23, v0

    move/from16 v0, p0

    move/from16 p0, p1

    move/from16 v31, v3

    move/from16 p1, v19

    move/from16 v19, v20

    move/from16 v20, v22

    move/from16 v22, v27

    move-object v3, v1

    move/from16 v27, v5

    move/from16 v5, v17

    move-object/from16 v1, v30

    move/from16 v17, v69

    move/from16 v30, v2

    move/from16 v2, v33

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    goto :goto_10

    :cond_9
    move-object/from16 v30, v1

    move-object v1, v3

    invoke-interface/range {v30 .. v30}, Ljava/lang/AutoCloseable;->close()V

    return-object v1

    :goto_10
    invoke-interface/range {v30 .. v30}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/compose/ui/semantics/CollectionItemInfo;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v0, v4, v3, v4}, Landroidx/compose/ui/semantics/CollectionItemInfo;-><init>(IIII)V

    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->g(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionItemInfo;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    move v4, v3

    const/4 v3, 0x0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/compose/ui/semantics/CollectionItemInfo;

    invoke-direct {v2, v0, v4, v3, v4}, Landroidx/compose/ui/semantics/CollectionItemInfo;-><init>(IIII)V

    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->g(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionItemInfo;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    move v4, v3

    const/4 v3, 0x0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/compose/ui/semantics/CollectionItemInfo;

    invoke-direct {v2, v0, v4, v3, v4}, Landroidx/compose/ui/semantics/CollectionItemInfo;-><init>(IIII)V

    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->g(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionItemInfo;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_3
    move v4, v3

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/compose/ui/semantics/CollectionInfo;

    invoke-direct {v2, v4, v0}, Landroidx/compose/ui/semantics/CollectionInfo;-><init>(II)V

    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->f(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionInfo;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_4
    move v4, v3

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/compose/ui/semantics/CollectionInfo;

    invoke-direct {v2, v0, v4}, Landroidx/compose/ui/semantics/CollectionInfo;-><init>(II)V

    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->f(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionInfo;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_5
    move v4, v3

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/compose/ui/semantics/CollectionItemInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v4, v3, v4}, Landroidx/compose/ui/semantics/CollectionItemInfo;-><init>(IIII)V

    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->g(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionItemInfo;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_6
    move-object/from16 v1, p1

    check-cast v1, Lcom/airbnb/lottie/value/LottieFrameInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v1

    :pswitch_7
    move-object/from16 v1, p1

    check-cast v1, Lcom/airbnb/lottie/value/LottieFrameInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v1

    :pswitch_8
    move-object/from16 v1, p1

    check-cast v1, Lcom/airbnb/lottie/value/LottieFrameInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v1

    :pswitch_9
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;

    sget-object v2, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResultKt;->a:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    invoke-interface {v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;->getIndex()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_a
    move-object/from16 v1, p1

    check-cast v1, Lcom/airbnb/lottie/value/LottieFrameInfo;

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/atoms/LVRadioButtonKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v1

    :pswitch_b
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_b

    if-ne v1, v0, :cond_a

    goto :goto_11

    :cond_a
    const/16 v2, 0x12c

    goto :goto_12

    :cond_b
    :goto_11
    const/16 v2, 0x1f4

    :goto_12
    if-nez v1, :cond_c

    sget-object v0, Landroidx/compose/animation/core/EasingKt;->c:Landroidx/compose/animation/core/CubicBezierEasing;

    goto :goto_13

    :cond_c
    if-ne v1, v0, :cond_d

    sget-object v0, Landroidx/compose/animation/core/EasingKt;->b:Landroidx/compose/animation/core/CubicBezierEasing;

    goto :goto_13

    :cond_d
    sget-object v0, Landroidx/compose/animation/core/EasingKt;->d:Lov;

    :goto_13
    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v0

    return-object v0

    :pswitch_c
    const/4 v3, 0x0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/compose/ui/semantics/CollectionItemInfo;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v0, v4}, Landroidx/compose/ui/semantics/CollectionItemInfo;-><init>(IIII)V

    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->g(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionItemInfo;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_d
    move-object/from16 v1, p1

    check-cast v1, Lcom/airbnb/lottie/value/LottieFrameInfo;

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/atoms/LVCheckboxKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v1

    :pswitch_e
    move-object/from16 v1, p1

    check-cast v1, Lcom/airbnb/lottie/value/LottieFrameInfo;

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/atoms/LVCheckboxKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v1

    :pswitch_f
    move-object/from16 v1, p1

    check-cast v1, Lcom/airbnb/lottie/value/LottieFrameInfo;

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/atoms/LVCheckboxKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v1

    :pswitch_10
    move-object/from16 v1, p1

    check-cast v1, Lcom/airbnb/lottie/value/LottieFrameInfo;

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v1

    :pswitch_11
    move-object/from16 v1, p1

    check-cast v1, Lcoil3/request/ImageRequest;

    sget-object v2, Lcoil3/request/ImageRequests_androidKt;->a:Lcoil3/Extras$Key;

    iget-object v1, v1, Lcoil3/request/ImageRequest;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcoil3/Image_androidKt;->b(Landroid/graphics/drawable/Drawable;)Lcoil3/Image;

    move-result-object v0

    return-object v0

    :pswitch_12
    move-object/from16 v1, p1

    check-cast v1, Lcoil3/request/ImageRequest;

    sget-object v2, Lcoil3/request/ImageRequests_androidKt;->a:Lcoil3/Extras$Key;

    iget-object v1, v1, Lcoil3/request/ImageRequest;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcoil3/Image_androidKt;->b(Landroid/graphics/drawable/Drawable;)Lcoil3/Image;

    move-result-object v0

    return-object v0

    :pswitch_13
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    sget v1, Landroidx/compose/material3/DatePickerKt;->a:F

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_14
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentTransitionScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x1

    invoke-static {v1, v0, v4}, Lcom/vuitton/android/presentation/compose/animation/ExitTransitionKt;->b(Landroidx/compose/animation/AnimatedContentTransitionScope;II)Landroidx/compose/animation/ExitTransition;

    move-result-object v0

    return-object v0

    :pswitch_15
    move v4, v3

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentTransitionScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0, v4}, Lcom/vuitton/android/presentation/compose/animation/EnterTransitionKt;->b(Landroidx/compose/animation/AnimatedContentTransitionScope;II)Landroidx/compose/animation/EnterTransition;

    move-result-object v0

    return-object v0

    :pswitch_16
    move v4, v3

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentTransitionScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0, v4}, Lcom/vuitton/android/presentation/compose/animation/ExitTransitionKt;->a(Landroidx/compose/animation/AnimatedContentTransitionScope;II)Landroidx/compose/animation/ExitTransition;

    move-result-object v0

    return-object v0

    :pswitch_17
    move v4, v3

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentTransitionScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0, v4}, Lcom/vuitton/android/presentation/compose/animation/EnterTransitionKt;->a(Landroidx/compose/animation/AnimatedContentTransitionScope;II)Landroidx/compose/animation/EnterTransition;

    move-result-object v0

    return-object v0

    :pswitch_18
    move v4, v3

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    sget v2, Lcom/vuitton/android/presentation/screen/booking/confirmation/components/BookingConfirmationScreenKt;->a:F

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/compose/ui/semantics/CollectionItemInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v4, v3, v4}, Landroidx/compose/ui/semantics/CollectionItemInfo;-><init>(IIII)V

    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->g(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionItemInfo;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_19
    move v4, v3

    const/4 v3, 0x0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/compose/ui/semantics/CollectionItemInfo;

    invoke-direct {v2, v0, v4, v3, v4}, Landroidx/compose/ui/semantics/CollectionItemInfo;-><init>(IIII)V

    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->g(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionItemInfo;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
