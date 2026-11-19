.class public abstract Landroidx/work/impl/WorkManagerImplExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u00a0\u0002\u0010\u0011\"\u008c\u0001\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u0002\u0012\u0008\u0008\u0003\u0012\u0004\u0008\u0008(\u0004\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0002\u0012\u0008\u0008\u0003\u0012\u0004\u0008\u0008(\u0006\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\u0002\u0012\u0008\u0008\u0003\u0012\u0004\u0008\u0008(\u0008\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u0002\u0012\u0008\u0008\u0003\u0012\u0004\u0008\u0008(\n\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u0008\u0002\u0012\u0008\u0008\u0003\u0012\u0004\u0008\u0008(\u000c\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u0002\u0012\u0008\u0008\u0003\u0012\u0004\u0008\u0008(\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f0\u00002\u008c\u0001\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u0002\u0012\u0008\u0008\u0003\u0012\u0004\u0008\u0008(\u0004\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0002\u0012\u0008\u0008\u0003\u0012\u0004\u0008\u0008(\u0006\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\u0002\u0012\u0008\u0008\u0003\u0012\u0004\u0008\u0008(\u0008\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u0002\u0012\u0008\u0008\u0003\u0012\u0004\u0008\u0008(\n\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u0008\u0002\u0012\u0008\u0008\u0003\u0012\u0004\u0008\u0008(\u000c\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u0002\u0012\u0008\u0008\u0003\u0012\u0004\u0008\u0008(\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f0\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lkotlin/Function6;",
        "Landroid/content/Context;",
        "Lkotlin/ParameterName;",
        "name",
        "context",
        "Landroidx/work/Configuration;",
        "configuration",
        "Landroidx/work/impl/utils/taskexecutor/TaskExecutor;",
        "workTaskExecutor",
        "Landroidx/work/impl/WorkDatabase;",
        "workDatabase",
        "Landroidx/work/impl/constraints/trackers/Trackers;",
        "trackers",
        "Landroidx/work/impl/Processor;",
        "processor",
        "",
        "Landroidx/work/impl/Scheduler;",
        "SchedulersCreator",
        "work-runtime_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroid/content/Context;Landroidx/work/Configuration;)Landroidx/work/impl/WorkManagerImpl;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    iget-object v0, p1, Landroidx/work/Configuration;->c:Ljava/util/concurrent/Executor;

    invoke-direct {v3, v0}, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    sget-object v0, Landroidx/work/impl/WorkDatabase;->n:Landroidx/work/impl/WorkDatabase$Companion;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v3, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->a:Landroidx/work/impl/utils/SerialExecutorImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p1, Landroidx/work/Configuration;->d:Landroidx/work/Clock;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f05001b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v6, Landroidx/work/impl/WorkDatabase;

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    new-instance v5, Landroidx/room/RoomDatabase$Builder;

    const/4 v8, 0x0

    invoke-direct {v5, v1, v6, v8}, Landroidx/room/RoomDatabase$Builder;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    iput-boolean v7, v5, Landroidx/room/RoomDatabase$Builder;->j:Z

    goto :goto_0

    :cond_0
    const-string v5, "androidx.work.workdb"

    invoke-static {v1, v6, v5}, Landroidx/room/Room;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v5

    new-instance v6, Ll71;

    invoke-direct {v6, v1, v0}, Ll71;-><init>(Landroid/content/Context;I)V

    iput-object v6, v5, Landroidx/room/RoomDatabase$Builder;->i:Ll71;

    :goto_0
    iput-object v2, v5, Landroidx/room/RoomDatabase$Builder;->g:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/work/impl/CleanupCallback;

    invoke-direct {v2, v4}, Landroidx/work/impl/CleanupCallback;-><init>(Landroidx/work/Clock;)V

    iget-object v4, v5, Landroidx/room/RoomDatabase$Builder;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v2, v7, [Landroidx/room/migration/Migration;

    sget-object v4, Landroidx/work/impl/Migration_1_2;->c:Landroidx/work/impl/Migration_1_2;

    aput-object v4, v2, v0

    invoke-virtual {v5, v2}, Landroidx/room/RoomDatabase$Builder;->a([Landroidx/room/migration/Migration;)V

    new-instance v2, Landroidx/work/impl/RescheduleMigration;

    const/4 v4, 0x2

    const/4 v6, 0x3

    invoke-direct {v2, v1, v4, v6}, Landroidx/work/impl/RescheduleMigration;-><init>(Landroid/content/Context;II)V

    new-array v4, v7, [Landroidx/room/migration/Migration;

    aput-object v2, v4, v0

    invoke-virtual {v5, v4}, Landroidx/room/RoomDatabase$Builder;->a([Landroidx/room/migration/Migration;)V

    new-array v2, v7, [Landroidx/room/migration/Migration;

    sget-object v4, Landroidx/work/impl/Migration_3_4;->c:Landroidx/work/impl/Migration_3_4;

    aput-object v4, v2, v0

    invoke-virtual {v5, v2}, Landroidx/room/RoomDatabase$Builder;->a([Landroidx/room/migration/Migration;)V

    new-array v2, v7, [Landroidx/room/migration/Migration;

    sget-object v4, Landroidx/work/impl/Migration_4_5;->c:Landroidx/work/impl/Migration_4_5;

    aput-object v4, v2, v0

    invoke-virtual {v5, v2}, Landroidx/room/RoomDatabase$Builder;->a([Landroidx/room/migration/Migration;)V

    new-instance v2, Landroidx/work/impl/RescheduleMigration;

    const/4 v4, 0x5

    const/4 v6, 0x6

    invoke-direct {v2, v1, v4, v6}, Landroidx/work/impl/RescheduleMigration;-><init>(Landroid/content/Context;II)V

    new-array v4, v7, [Landroidx/room/migration/Migration;

    aput-object v2, v4, v0

    invoke-virtual {v5, v4}, Landroidx/room/RoomDatabase$Builder;->a([Landroidx/room/migration/Migration;)V

    new-array v2, v7, [Landroidx/room/migration/Migration;

    sget-object v4, Landroidx/work/impl/Migration_6_7;->c:Landroidx/work/impl/Migration_6_7;

    aput-object v4, v2, v0

    invoke-virtual {v5, v2}, Landroidx/room/RoomDatabase$Builder;->a([Landroidx/room/migration/Migration;)V

    new-array v2, v7, [Landroidx/room/migration/Migration;

    sget-object v4, Landroidx/work/impl/Migration_7_8;->c:Landroidx/work/impl/Migration_7_8;

    aput-object v4, v2, v0

    invoke-virtual {v5, v2}, Landroidx/room/RoomDatabase$Builder;->a([Landroidx/room/migration/Migration;)V

    new-array v2, v7, [Landroidx/room/migration/Migration;

    sget-object v4, Landroidx/work/impl/Migration_8_9;->c:Landroidx/work/impl/Migration_8_9;

    aput-object v4, v2, v0

    invoke-virtual {v5, v2}, Landroidx/room/RoomDatabase$Builder;->a([Landroidx/room/migration/Migration;)V

    new-instance v2, Landroidx/work/impl/WorkMigration9To10;

    invoke-direct {v2, v1}, Landroidx/work/impl/WorkMigration9To10;-><init>(Landroid/content/Context;)V

    new-array v4, v7, [Landroidx/room/migration/Migration;

    aput-object v2, v4, v0

    invoke-virtual {v5, v4}, Landroidx/room/RoomDatabase$Builder;->a([Landroidx/room/migration/Migration;)V

    new-instance v2, Landroidx/work/impl/RescheduleMigration;

    const/16 v4, 0xa

    const/16 v6, 0xb

    invoke-direct {v2, v1, v4, v6}, Landroidx/work/impl/RescheduleMigration;-><init>(Landroid/content/Context;II)V

    new-array v4, v7, [Landroidx/room/migration/Migration;

    aput-object v2, v4, v0

    invoke-virtual {v5, v4}, Landroidx/room/RoomDatabase$Builder;->a([Landroidx/room/migration/Migration;)V

    new-array v2, v7, [Landroidx/room/migration/Migration;

    sget-object v4, Landroidx/work/impl/Migration_11_12;->c:Landroidx/work/impl/Migration_11_12;

    aput-object v4, v2, v0

    invoke-virtual {v5, v2}, Landroidx/room/RoomDatabase$Builder;->a([Landroidx/room/migration/Migration;)V

    new-array v2, v7, [Landroidx/room/migration/Migration;

    sget-object v4, Landroidx/work/impl/Migration_12_13;->c:Landroidx/work/impl/Migration_12_13;

    aput-object v4, v2, v0

    invoke-virtual {v5, v2}, Landroidx/room/RoomDatabase$Builder;->a([Landroidx/room/migration/Migration;)V

    new-array v2, v7, [Landroidx/room/migration/Migration;

    sget-object v4, Landroidx/work/impl/Migration_15_16;->c:Landroidx/work/impl/Migration_15_16;

    aput-object v4, v2, v0

    invoke-virtual {v5, v2}, Landroidx/room/RoomDatabase$Builder;->a([Landroidx/room/migration/Migration;)V

    new-array v2, v7, [Landroidx/room/migration/Migration;

    sget-object v4, Landroidx/work/impl/Migration_16_17;->c:Landroidx/work/impl/Migration_16_17;

    aput-object v4, v2, v0

    invoke-virtual {v5, v2}, Landroidx/room/RoomDatabase$Builder;->a([Landroidx/room/migration/Migration;)V

    new-instance v2, Landroidx/work/impl/RescheduleMigration;

    const/16 v4, 0x15

    const/16 v6, 0x16

    invoke-direct {v2, v1, v4, v6}, Landroidx/work/impl/RescheduleMigration;-><init>(Landroid/content/Context;II)V

    new-array v1, v7, [Landroidx/room/migration/Migration;

    aput-object v2, v1, v0

    invoke-virtual {v5, v1}, Landroidx/room/RoomDatabase$Builder;->a([Landroidx/room/migration/Migration;)V

    iput-boolean v0, v5, Landroidx/room/RoomDatabase$Builder;->q:Z

    iput-boolean v7, v5, Landroidx/room/RoomDatabase$Builder;->r:Z

    iput-boolean v7, v5, Landroidx/room/RoomDatabase$Builder;->s:Z

    invoke-virtual {v5}, Landroidx/room/RoomDatabase$Builder;->b()Landroidx/room/RoomDatabase;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroidx/work/impl/WorkDatabase;

    new-instance v0, Landroidx/work/impl/constraints/trackers/Trackers;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v7, 0x3c

    const/4 v8, 0x0

    move-object v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Landroidx/work/impl/constraints/trackers/Trackers;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/constraints/trackers/ConstraintTracker;Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;Landroidx/work/impl/constraints/trackers/ConstraintTracker;Landroidx/work/impl/constraints/trackers/ConstraintTracker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v6, Landroidx/work/impl/Processor;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v6, v1, p1, v2, v9}, Landroidx/work/impl/Processor;-><init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/WorkDatabase;)V

    move-object v5, v0

    sget-object v0, Landroidx/work/impl/WorkManagerImplExtKt$WorkManagerImpl$1;->b:Landroidx/work/impl/WorkManagerImplExtKt$WorkManagerImpl$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p0

    move-object v3, v2

    move-object v4, v9

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Landroidx/work/impl/WorkManagerImplExtKt$WorkManagerImpl$1;->l(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, v5

    move-object v5, p0

    check-cast v5, Ljava/util/List;

    move-object v7, v0

    new-instance v0, Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct/range {v0 .. v7}, Landroidx/work/impl/WorkManagerImpl;-><init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Landroidx/work/impl/Processor;Landroidx/work/impl/constraints/trackers/Trackers;)V

    return-object v0
.end method
