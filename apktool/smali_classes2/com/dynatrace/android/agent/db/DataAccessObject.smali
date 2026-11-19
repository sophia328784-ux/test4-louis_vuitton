.class public Lcom/dynatrace/android/agent/db/DataAccessObject;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/dynatrace/android/agent/db/EventsDbHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/dynatrace/android/agent/db/EventsDbHelper;

    invoke-direct {v0, p1}, Lcom/dynatrace/android/agent/db/EventsDbHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/dynatrace/android/agent/db/DataAccessObject;-><init>(Lcom/dynatrace/android/agent/db/EventsDbHelper;)V

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/android/agent/db/EventsDbHelper;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/dynatrace/android/agent/db/DataAccessObject;->a:Lcom/dynatrace/android/agent/db/EventsDbHelper;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(JZ)V
    .locals 2

    monitor-enter p0

    const-wide/32 v0, 0x83d60

    sub-long/2addr p1, v0

    :try_start_0
    iget-object v0, p0, Lcom/dynatrace/android/agent/db/DataAccessObject;->a:Lcom/dynatrace/android/agent/db/EventsDbHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dynatrace/android/agent/db/EventsDbHelper;->c(JZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_1
    sget-boolean p1, Lcom/dynatrace/android/agent/Global;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final b(JLcom/dynatrace/android/agent/BasicSegment$UpdatableDataGenerator;)Lcom/dynatrace/android/agent/db/MonitoringDataEntity;
    .locals 53

    const-string v11, "app_id"

    const-string v12, "sr_param"

    const-string v0, "id"

    const-string v1, "visitor_id"

    const-string v2, "session_id"

    const-string v3, "sequence_nr"

    const-string v4, "basic_segment"

    const-string v5, "event_segment"

    const-string v6, "event_id"

    const-string v7, "session_start"

    const-string v8, "event_start"

    const-string v9, "multiplicity"

    const-string v10, "server_id"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dynatrace/android/agent/db/DataAccessObject;->a:Lcom/dynatrace/android/agent/db/EventsDbHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    const-string v21, "visitor_id ASC, session_id ASC, sequence_nr ASC, server_id ASC, id ASC"

    const/16 v22, 0x0

    const/4 v14, 0x1

    const-string v15, "Events"

    const-string v17, "id >= 0"

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v13 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "null cursor for fetchEvents"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_0
    return-object v1

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_2
    const-string v2, "id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "visitor_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "session_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "sequence_nr"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "basic_segment"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "event_segment"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "event_id"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    const-string v8, "session_start"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "event_start"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    const-string v9, "multiplicity"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "server_id"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "sr_param"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v13, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, -0x1

    move-object/from16 v26, v1

    move-wide/from16 v24, v13

    move/from16 v15, v16

    move/from16 v22, v15

    move/from16 v27, v22

    move-wide/from16 v19, v17

    const/16 v21, 0x1

    const/16 v23, 0x1

    move-object/from16 v14, v26

    move-wide/from16 v17, v24

    move/from16 v1, v27

    move v13, v1

    :goto_0
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    move/from16 v30, v3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move/from16 v31, v4

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move/from16 v32, v5

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v33, v7

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    move/from16 v35, v6

    move/from16 v36, v7

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move/from16 v37, v8

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-interface {v0, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v38

    if-eqz v38, :cond_3

    move/from16 v39, v9

    const/4 v9, 0x0

    goto :goto_1

    :cond_3
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    move/from16 v39, v9

    move-object/from16 v9, v38

    :goto_1
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v38

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v9, v6, v7}, Lcom/dynatrace/android/agent/BasicSegment$UpdatableDataGenerator;->a(ILjava/lang/String;J)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v40

    add-int v40, v40, v38

    if-eqz v21, :cond_4

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    move/from16 v22, v1

    move v1, v3

    move v15, v4

    move-wide/from16 v41, v6

    move-wide/from16 v19, v13

    move/from16 v21, v16

    move-wide/from16 v24, v28

    move/from16 v13, v36

    goto :goto_2

    :cond_4
    add-int/lit8 v40, v40, 0x1

    add-int v40, v40, v22

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v38

    add-int v38, v38, v40

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v40

    move-wide/from16 v41, v6

    add-int v6, v40, v38

    cmp-long v7, v24, v28

    if-nez v7, :cond_6

    if-ne v1, v3, :cond_6

    if-ne v15, v4, :cond_6

    move/from16 v3, v36

    if-ne v13, v3, :cond_6

    int-to-long v3, v6

    cmp-long v3, v3, p1

    if-gtz v3, :cond_6

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    add-int v3, v3, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move/from16 v22, v3

    move-wide/from16 v19, v4

    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_5

    move/from16 v46, v1

    move-object v14, v9

    move/from16 v52, v23

    move-object/from16 v3, v34

    move-wide/from16 v1, v41

    :goto_3
    move/from16 v48, v13

    move/from16 v47, v15

    move-wide/from16 v49, v19

    move-wide/from16 v44, v24

    goto :goto_4

    :cond_5
    move/from16 v27, v8

    move-object v14, v9

    move/from16 v3, v30

    move/from16 v4, v31

    move/from16 v5, v32

    move/from16 v7, v33

    move-object/from16 v26, v34

    move/from16 v6, v35

    move/from16 v8, v37

    move/from16 v9, v39

    move-wide/from16 v17, v41

    goto/16 :goto_0

    :cond_6
    move/from16 v46, v1

    move/from16 v52, v16

    move-wide/from16 v1, v17

    move-object/from16 v3, v26

    move/from16 v8, v27

    goto :goto_3

    :goto_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v14, v1, v2}, Lcom/dynatrace/android/agent/BasicSegment$UpdatableDataGenerator;->a(ILjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v43, Lcom/dynatrace/android/agent/db/MonitoringDataEntity;

    new-instance v1, Lcom/dynatrace/android/agent/comm/MonitoringDataPacket;

    invoke-direct {v1, v0, v12}, Lcom/dynatrace/android/agent/comm/MonitoringDataPacket;-><init>(Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 v51, v1

    invoke-direct/range {v43 .. v52}, Lcom/dynatrace/android/agent/db/MonitoringDataEntity;-><init>(JIIIJLcom/dynatrace/android/agent/comm/MonitoringDataPacket;Z)V

    return-object v43
.end method

.method public final declared-synchronized c(Ljava/util/LinkedList;Lcom/dynatrace/android/agent/conf/ServerConfiguration;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dynatrace/android/agent/db/DataAccessObject;->a:Lcom/dynatrace/android/agent/db/EventsDbHelper;

    invoke-virtual {v0, p1}, Lcom/dynatrace/android/agent/db/EventsDbHelper;->g(Ljava/util/LinkedList;)V

    iget v0, p2, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->e:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue$DatabaseRecord;

    iget v0, v0, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue$DatabaseRecord;->d:I

    sget v2, Lcom/dynatrace/android/agent/db/EventsDbHelper;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_1

    :try_start_1
    iget-object p1, p0, Lcom/dynatrace/android/agent/db/DataAccessObject;->a:Lcom/dynatrace/android/agent/db/EventsDbHelper;

    iget p2, p2, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->e:I

    invoke-virtual {p1, v2, p2}, Lcom/dynatrace/android/agent/db/EventsDbHelper;->d(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    :try_start_2
    sget-boolean p1, Lcom/dynatrace/android/agent/Global;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
