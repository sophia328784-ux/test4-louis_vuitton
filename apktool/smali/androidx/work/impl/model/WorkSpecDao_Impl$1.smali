.class public final Landroidx/work/impl/model/WorkSpecDao_Impl$1;
.super Landroidx/room/EntityInsertAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/model/WorkSpecDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertAdapter<",
        "Landroidx/work/impl/model/WorkSpec;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "androidx/work/impl/model/WorkSpecDao_Impl$1",
        "Landroidx/room/EntityInsertAdapter;",
        "Landroidx/work/impl/model/WorkSpec;",
        "work-runtime_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public final a(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 9

    check-cast p2, Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->A(ILjava/lang/String;)V

    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->b:Landroidx/work/WorkInfo$State;

    invoke-static {p0}, Landroidx/work/impl/model/WorkTypeConverters;->f(Landroidx/work/WorkInfo$State;)I

    move-result p0

    int-to-long v1, p0

    const/4 p0, 0x2

    invoke-interface {p1, p0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->a(IJ)V

    iget-object v1, p2, Landroidx/work/impl/model/WorkSpec;->c:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/SQLiteStatement;->A(ILjava/lang/String;)V

    iget-object v1, p2, Landroidx/work/impl/model/WorkSpec;->d:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-interface {p1, v3, v1}, Landroidx/sqlite/SQLiteStatement;->A(ILjava/lang/String;)V

    sget-object v1, Landroidx/work/Data;->b:Landroidx/work/Data$Companion;

    iget-object v4, p2, Landroidx/work/impl/model/WorkSpec;->e:Landroidx/work/Data;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Landroidx/work/Data$Companion;->c(Landroidx/work/Data;)[B

    move-result-object v1

    const/4 v4, 0x5

    invoke-interface {p1, v4, v1}, Landroidx/sqlite/SQLiteStatement;->b(I[B)V

    iget-object v1, p2, Landroidx/work/impl/model/WorkSpec;->f:Landroidx/work/Data;

    invoke-static {v1}, Landroidx/work/Data$Companion;->c(Landroidx/work/Data;)[B

    move-result-object v1

    const/4 v5, 0x6

    invoke-interface {p1, v5, v1}, Landroidx/sqlite/SQLiteStatement;->b(I[B)V

    const/4 v1, 0x7

    iget-wide v5, p2, Landroidx/work/impl/model/WorkSpec;->g:J

    invoke-interface {p1, v1, v5, v6}, Landroidx/sqlite/SQLiteStatement;->a(IJ)V

    const/16 v1, 0x8

    iget-wide v5, p2, Landroidx/work/impl/model/WorkSpec;->h:J

    invoke-interface {p1, v1, v5, v6}, Landroidx/sqlite/SQLiteStatement;->a(IJ)V

    const/16 v1, 0x9

    iget-wide v5, p2, Landroidx/work/impl/model/WorkSpec;->i:J

    invoke-interface {p1, v1, v5, v6}, Landroidx/sqlite/SQLiteStatement;->a(IJ)V

    iget v1, p2, Landroidx/work/impl/model/WorkSpec;->k:I

    int-to-long v5, v1

    const/16 v1, 0xa

    invoke-interface {p1, v1, v5, v6}, Landroidx/sqlite/SQLiteStatement;->a(IJ)V

    iget-object v1, p2, Landroidx/work/impl/model/WorkSpec;->l:Landroidx/work/BackoffPolicy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/work/impl/model/WorkTypeConverters$WhenMappings;->b:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v5, v1

    const/4 v5, 0x0

    if-eq v1, v0, :cond_1

    if-ne v1, p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    move v1, v5

    :goto_0
    const/16 v6, 0xb

    int-to-long v7, v1

    invoke-interface {p1, v6, v7, v8}, Landroidx/sqlite/SQLiteStatement;->a(IJ)V

    const/16 v1, 0xc

    iget-wide v6, p2, Landroidx/work/impl/model/WorkSpec;->m:J

    invoke-interface {p1, v1, v6, v7}, Landroidx/sqlite/SQLiteStatement;->a(IJ)V

    const/16 v1, 0xd

    iget-wide v6, p2, Landroidx/work/impl/model/WorkSpec;->n:J

    invoke-interface {p1, v1, v6, v7}, Landroidx/sqlite/SQLiteStatement;->a(IJ)V

    const/16 v1, 0xe

    iget-wide v6, p2, Landroidx/work/impl/model/WorkSpec;->o:J

    invoke-interface {p1, v1, v6, v7}, Landroidx/sqlite/SQLiteStatement;->a(IJ)V

    const/16 v1, 0xf

    iget-wide v6, p2, Landroidx/work/impl/model/WorkSpec;->p:J

    invoke-interface {p1, v1, v6, v7}, Landroidx/sqlite/SQLiteStatement;->a(IJ)V

    iget-boolean v1, p2, Landroidx/work/impl/model/WorkSpec;->q:Z

    const/16 v6, 0x10

    int-to-long v7, v1

    invoke-interface {p1, v6, v7, v8}, Landroidx/sqlite/SQLiteStatement;->a(IJ)V

    iget-object v1, p2, Landroidx/work/impl/model/WorkSpec;->r:Landroidx/work/OutOfQuotaPolicy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/work/impl/model/WorkTypeConverters$WhenMappings;->d:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v6, v1

    if-eq v1, v0, :cond_3

    if-ne v1, p0, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_3
    move v1, v5

    :goto_1
    const/16 v6, 0x11

    int-to-long v7, v1

    invoke-interface {p1, v6, v7, v8}, Landroidx/sqlite/SQLiteStatement;->a(IJ)V

    iget v1, p2, Landroidx/work/impl/model/WorkSpec;->s:I

    int-to-long v6, v1

    const/16 v1, 0x12

    invoke-interface {p1, v1, v6, v7}, Landroidx/sqlite/SQLiteStatement;->a(IJ)V

    iget v1, p2, Landroidx/work/impl/model/WorkSpec;->t:I

    int-to-long v6, v1

    const/16 v1, 0x13

    invoke-interface {p1, v1, v6, v7}, Landroidx/sqlite/SQLiteStatement;->a(IJ)V

    const/16 v1, 0x14

    iget-wide v6, p2, Landroidx/work/impl/model/WorkSpec;->u:J

    invoke-interface {p1, v1, v6, v7}, Landroidx/sqlite/SQLiteStatement;->a(IJ)V

    iget v1, p2, Landroidx/work/impl/model/WorkSpec;->v:I

    int-to-long v6, v1

    const/16 v1, 0x15

    invoke-interface {p1, v1, v6, v7}, Landroidx/sqlite/SQLiteStatement;->a(IJ)V

    iget v1, p2, Landroidx/work/impl/model/WorkSpec;->w:I

    int-to-long v6, v1

    const/16 v1, 0x16

    invoke-interface {p1, v1, v6, v7}, Landroidx/sqlite/SQLiteStatement;->a(IJ)V

    iget-object v1, p2, Landroidx/work/impl/model/WorkSpec;->x:Ljava/lang/String;

    const/16 v6, 0x17

    if-nez v1, :cond_4

    invoke-interface {p1, v6}, Landroidx/sqlite/SQLiteStatement;->l(I)V

    goto :goto_2

    :cond_4
    invoke-interface {p1, v6, v1}, Landroidx/sqlite/SQLiteStatement;->A(ILjava/lang/String;)V

    :goto_2
    iget-object v1, p2, Landroidx/work/impl/model/WorkSpec;->y:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    const/16 v6, 0x18

    if-nez v1, :cond_6

    invoke-interface {p1, v6}, Landroidx/sqlite/SQLiteStatement;->l(I)V

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v7, v1

    invoke-interface {p1, v6, v7, v8}, Landroidx/sqlite/SQLiteStatement;->a(IJ)V

    :goto_4
    iget-object p2, p2, Landroidx/work/impl/model/WorkSpec;->j:Landroidx/work/Constraints;

    iget-object v1, p2, Landroidx/work/Constraints;->a:Landroidx/work/NetworkType;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/work/impl/model/WorkTypeConverters$WhenMappings;->c:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/16 v7, 0x1e

    if-eq v6, v0, :cond_b

    if-eq v6, p0, :cond_c

    if-eq v6, v2, :cond_a

    if-eq v6, v3, :cond_9

    if-eq v6, v4, :cond_8

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v7, :cond_7

    sget-object p0, Landroidx/work/NetworkType;->TEMPORARILY_UNMETERED:Landroidx/work/NetworkType;

    if-ne v1, p0, :cond_7

    move v0, v4

    goto :goto_5

    :cond_7
    const-string p0, "Could not convert "

    const-string p1, " to int"

    invoke-static {p0, v1, p1}, Llc0;->n(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_8
    move v0, v3

    goto :goto_5

    :cond_9
    move v0, v2

    goto :goto_5

    :cond_a
    move v0, p0

    goto :goto_5

    :cond_b
    move v0, v5

    :cond_c
    :goto_5
    const/16 p0, 0x19

    int-to-long v0, v0

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->a(IJ)V

    iget-object p0, p2, Landroidx/work/Constraints;->b:Landroidx/work/impl/utils/NetworkRequestCompat;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/work/impl/utils/NetworkRequestCompat;->a:Ljava/lang/Object;

    check-cast p0, Landroid/net/NetworkRequest;

    if-nez p0, :cond_d

    new-array p0, v5, [B

    goto :goto_8

    :cond_d
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    invoke-static {p0}, Landroidx/work/impl/utils/NetworkRequestCompatKt;->b(Landroid/net/NetworkRequest;)[I

    move-result-object v2

    invoke-static {p0}, Landroidx/work/impl/utils/NetworkRequestCompatKt;->a(Landroid/net/NetworkRequest;)[I

    move-result-object p0

    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    array-length v3, v2

    move v4, v5

    :goto_6
    if-ge v4, v3, :cond_e

    aget v6, v2, v4

    invoke-virtual {v1, v6}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :catchall_0
    move-exception p0

    goto/16 :goto_d

    :cond_e
    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    array-length v2, p0

    move v3, v5

    :goto_7
    if-ge v3, v2, :cond_f

    aget v4, p0, v3

    invoke-virtual {v1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_f
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_8
    const/16 v0, 0x1a

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->b(I[B)V

    iget-boolean p0, p2, Landroidx/work/Constraints;->c:Z

    const/16 v0, 0x1b

    int-to-long v1, p0

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->a(IJ)V

    iget-boolean p0, p2, Landroidx/work/Constraints;->d:Z

    const/16 v0, 0x1c

    int-to-long v1, p0

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->a(IJ)V

    iget-boolean p0, p2, Landroidx/work/Constraints;->e:Z

    const/16 v0, 0x1d

    int-to-long v1, p0

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->a(IJ)V

    iget-boolean p0, p2, Landroidx/work/Constraints;->f:Z

    int-to-long v0, p0

    invoke-interface {p1, v7, v0, v1}, Landroidx/sqlite/SQLiteStatement;->a(IJ)V

    const/16 p0, 0x1f

    iget-wide v0, p2, Landroidx/work/Constraints;->g:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->a(IJ)V

    const/16 p0, 0x20

    iget-wide v0, p2, Landroidx/work/Constraints;->h:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->a(IJ)V

    iget-object p0, p2, Landroidx/work/Constraints;->i:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_10

    new-array p0, v5, [B

    goto :goto_a

    :cond_10
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_3
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/Constraints$ContentUriTrigger;

    iget-object v2, v1, Landroidx/work/Constraints$ContentUriTrigger;->a:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-boolean v1, v1, Landroidx/work/Constraints$ContentUriTrigger;->b:Z

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception p0

    goto :goto_b

    :cond_11
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_a
    const/16 p2, 0x21

    invoke-interface {p1, p2, p0}, Landroidx/sqlite/SQLiteStatement;->b(I[B)V

    return-void

    :catchall_2
    move-exception p0

    goto :goto_c

    :goto_b
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p1

    :try_start_7
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_c
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    invoke-static {p2, p0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :catchall_5
    move-exception p0

    goto :goto_e

    :goto_d
    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :catchall_6
    move-exception p1

    :try_start_a
    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :goto_e
    :try_start_b
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catchall_7
    move-exception p1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`next_schedule_time_override`,`next_schedule_time_override_generation`,`stop_reason`,`trace_tag`,`backoff_on_system_interruptions`,`required_network_type`,`required_network_request`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object p0
.end method
