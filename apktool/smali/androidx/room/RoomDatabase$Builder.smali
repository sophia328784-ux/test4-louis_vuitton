.class public Landroidx/room/RoomDatabase$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/RoomDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/room/RoomDatabase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u00020\u0003B9\u0008\u0011\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rB)\u0008\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000e\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u000c\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/room/RoomDatabase$Builder;",
        "Landroidx/room/RoomDatabase;",
        "T",
        "",
        "Lkotlin/reflect/KClass;",
        "klass",
        "",
        "name",
        "Lkotlin/Function0;",
        "factory",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Lkotlin/reflect/KClass;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroid/content/Context;)V",
        "Ljava/lang/Class;",
        "(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V",
        "room-runtime_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lkotlin/reflect/KClass;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/String;

.field public final d:Lkotlin/jvm/functions/Function0;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field public g:Ljava/util/concurrent/Executor;

.field public h:Ljava/util/concurrent/Executor;

.field public i:Ll71;

.field public j:Z

.field public final k:Landroidx/room/RoomDatabase$JournalMode;

.field public final l:J

.field public final m:Landroidx/room/RoomDatabase$MigrationContainer;

.field public final n:Ljava/util/LinkedHashSet;

.field public final o:Ljava/util/LinkedHashSet;

.field public final p:Ljava/util/ArrayList;

.field public q:Z

.field public r:Z

.field public s:Z

.field public final t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->f:Ljava/util/ArrayList;

    sget-object v0, Landroidx/room/RoomDatabase$JournalMode;->AUTOMATIC:Landroidx/room/RoomDatabase$JournalMode;

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->k:Landroidx/room/RoomDatabase$JournalMode;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/room/RoomDatabase$Builder;->l:J

    new-instance v0, Landroidx/room/RoomDatabase$MigrationContainer;

    invoke-direct {v0}, Landroidx/room/RoomDatabase$MigrationContainer;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->m:Landroidx/room/RoomDatabase$MigrationContainer;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->n:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->o:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->p:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/room/RoomDatabase$Builder;->q:Z

    iput-boolean v0, p0, Landroidx/room/RoomDatabase$Builder;->t:Z

    sget-object v0, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    iput-object p2, p0, Landroidx/room/RoomDatabase$Builder;->a:Lkotlin/reflect/KClass;

    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->b:Landroid/content/Context;

    iput-object p3, p0, Landroidx/room/RoomDatabase$Builder;->c:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->d:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/KClass;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->e:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->f:Ljava/util/ArrayList;

    .line 83
    sget-object v0, Landroidx/room/RoomDatabase$JournalMode;->AUTOMATIC:Landroidx/room/RoomDatabase$JournalMode;

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->k:Landroidx/room/RoomDatabase$JournalMode;

    const-wide/16 v0, -0x1

    .line 84
    iput-wide v0, p0, Landroidx/room/RoomDatabase$Builder;->l:J

    .line 85
    new-instance v0, Landroidx/room/RoomDatabase$MigrationContainer;

    invoke-direct {v0}, Landroidx/room/RoomDatabase$MigrationContainer;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->m:Landroidx/room/RoomDatabase$MigrationContainer;

    .line 86
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->n:Ljava/util/LinkedHashSet;

    .line 87
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->o:Ljava/util/LinkedHashSet;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->p:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Landroidx/room/RoomDatabase$Builder;->q:Z

    .line 90
    iput-boolean v0, p0, Landroidx/room/RoomDatabase$Builder;->t:Z

    .line 91
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->a:Lkotlin/reflect/KClass;

    .line 92
    iput-object p4, p0, Landroidx/room/RoomDatabase$Builder;->b:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Landroidx/room/RoomDatabase$Builder;->c:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Landroidx/room/RoomDatabase$Builder;->d:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final varargs a([Landroidx/room/migration/Migration;)V
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    iget v4, v3, Landroidx/room/migration/Migration;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroidx/room/RoomDatabase$Builder;->o:Ljava/util/LinkedHashSet;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget v3, v3, Landroidx/room/migration/Migration;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/room/migration/Migration;

    iget-object p0, p0, Landroidx/room/RoomDatabase$Builder;->m:Landroidx/room/RoomDatabase$MigrationContainer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroidx/room/RoomDatabase$MigrationContainer;->a(Landroidx/room/migration/Migration;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final b()Landroidx/room/RoomDatabase;
    .locals 28

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->g:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->h:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_0

    sget-object v1, Landroidx/arch/core/executor/ArchTaskExecutor;->c:Ll8;

    iput-object v1, v0, Landroidx/room/RoomDatabase$Builder;->h:Ljava/util/concurrent/Executor;

    iput-object v1, v0, Landroidx/room/RoomDatabase$Builder;->g:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->h:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_1

    iput-object v1, v0, Landroidx/room/RoomDatabase$Builder;->h:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->h:Ljava/util/concurrent/Executor;

    iput-object v1, v0, Landroidx/room/RoomDatabase$Builder;->g:Ljava/util/concurrent/Executor;

    :cond_2
    :goto_0
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->o:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v0, Landroidx/room/RoomDatabase$Builder;->n:Ljava/util/LinkedHashSet;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "Inconsistency detected. A Migration was supplied to addMigration() that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(). Start version is: "

    invoke-static {v2, v0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb21;->n(Ljava/lang/Object;)V

    return-object v3

    :cond_4
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->i:Ll71;

    if-nez v1, :cond_5

    new-instance v1, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;

    invoke-direct {v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;-><init>()V

    :cond_5
    move-object v5, v1

    iget-wide v1, v0, Landroidx/room/RoomDatabase$Builder;->l:J

    const-wide/16 v6, 0x0

    cmp-long v1, v1, v6

    const/16 v25, 0x0

    const/4 v2, 0x1

    if-lez v1, :cond_6

    move v1, v2

    goto :goto_2

    :cond_6
    move/from16 v1, v25

    :goto_2
    const-string v26, "Required value was null."

    if-eqz v1, :cond_8

    iget-object v0, v0, Landroidx/room/RoomDatabase$Builder;->c:Ljava/lang/String;

    if-eqz v0, :cond_7

    new-instance v0, Landroidx/room/support/AutoCloser;

    invoke-static/range {v26 .. v26}, Lmd;->n(Ljava/lang/String;)V

    return-object v3

    :cond_7
    const-string v0, "Cannot create auto-closing database for an in-memory database."

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v3

    :cond_8
    move v1, v2

    new-instance v2, Landroidx/room/DatabaseConfiguration;

    iget-boolean v8, v0, Landroidx/room/RoomDatabase$Builder;->j:Z

    iget-object v4, v0, Landroidx/room/RoomDatabase$Builder;->k:Landroidx/room/RoomDatabase$JournalMode;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v6, v3

    iget-object v3, v0, Landroidx/room/RoomDatabase$Builder;->b:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/room/RoomDatabase$JournalMode;->AUTOMATIC:Landroidx/room/RoomDatabase$JournalMode;

    if-eq v4, v7, :cond_9

    :goto_3
    move-object v9, v4

    goto :goto_5

    :cond_9
    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v7, v4, Landroid/app/ActivityManager;

    if-eqz v7, :cond_a

    check-cast v4, Landroid/app/ActivityManager;

    goto :goto_4

    :cond_a
    move-object v4, v6

    :goto_4
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v4

    if-nez v4, :cond_b

    sget-object v4, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    goto :goto_3

    :cond_b
    sget-object v4, Landroidx/room/RoomDatabase$JournalMode;->TRUNCATE:Landroidx/room/RoomDatabase$JournalMode;

    goto :goto_3

    :goto_5
    iget-object v10, v0, Landroidx/room/RoomDatabase$Builder;->g:Ljava/util/concurrent/Executor;

    if-eqz v10, :cond_3c

    iget-object v11, v0, Landroidx/room/RoomDatabase$Builder;->h:Ljava/util/concurrent/Executor;

    if-eqz v11, :cond_3b

    iget-boolean v13, v0, Landroidx/room/RoomDatabase$Builder;->q:Z

    iget-boolean v14, v0, Landroidx/room/RoomDatabase$Builder;->r:Z

    iget-boolean v4, v0, Landroidx/room/RoomDatabase$Builder;->s:Z

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v22, v4

    iget-object v4, v0, Landroidx/room/RoomDatabase$Builder;->c:Ljava/lang/String;

    move-object v7, v6

    iget-object v6, v0, Landroidx/room/RoomDatabase$Builder;->m:Landroidx/room/RoomDatabase$MigrationContainer;

    move-object v12, v7

    iget-object v7, v0, Landroidx/room/RoomDatabase$Builder;->e:Ljava/util/ArrayList;

    move-object/from16 v16, v12

    move-object/from16 v17, v16

    const/16 v16, 0x0

    move-object/from16 v18, v17

    const/16 v17, 0x0

    move-object/from16 v19, v18

    const/16 v18, 0x0

    move-object/from16 v20, v19

    const/16 v19, 0x0

    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->f:Ljava/util/ArrayList;

    iget-object v12, v0, Landroidx/room/RoomDatabase$Builder;->p:Ljava/util/ArrayList;

    move-object/from16 v20, v1

    move-object/from16 v21, v12

    const/4 v1, 0x1

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v24}, Landroidx/room/DatabaseConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/content/Intent;ZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;Ljava/util/List;Ljava/util/List;ZLandroidx/sqlite/SQLiteDriver;Lkotlin/coroutines/CoroutineContext;)V

    iget-boolean v3, v0, Landroidx/room/RoomDatabase$Builder;->t:Z

    iput-boolean v3, v2, Landroidx/room/DatabaseConfiguration;->x:Z

    iget-object v3, v0, Landroidx/room/RoomDatabase$Builder;->d:Lkotlin/jvm/functions/Function0;

    if-eqz v3, :cond_c

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/room/RoomDatabase;

    if-nez v3, :cond_11

    :cond_c
    iget-object v0, v0, Landroidx/room/RoomDatabase$Builder;->a:Lkotlin/reflect/KClass;

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->b(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    :cond_d
    const-string v0, ""

    :cond_e
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_f

    goto :goto_6

    :cond_f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :goto_6
    const/16 v5, 0x5f

    const/16 v6, 0x2e

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "_Impl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_10

    move-object v0, v4

    goto :goto_7

    :cond_10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v0, v1, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v0

    check-cast v3, Landroidx/room/RoomDatabase;

    :cond_11
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, v2, Landroidx/room/DatabaseConfiguration;->x:Z

    iput-boolean v0, v3, Landroidx/room/RoomDatabase;->l:Z

    :try_start_1
    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->f()Landroidx/room/RoomOpenDelegateMarker;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroidx/room/RoomOpenDelegate;
    :try_end_1
    .catch Lkotlin/NotImplementedError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    const/4 v0, 0x0

    :goto_8
    if-nez v0, :cond_12

    new-instance v0, Landroidx/room/RoomConnectionManager;

    new-instance v4, Lmt0;

    invoke-direct {v4, v3, v1}, Lmt0;-><init>(Landroidx/room/RoomDatabase;I)V

    invoke-direct {v0, v2, v4}, Landroidx/room/RoomConnectionManager;-><init>(Landroidx/room/DatabaseConfiguration;Lkotlin/jvm/functions/Function1;)V

    goto :goto_9

    :cond_12
    new-instance v4, Landroidx/room/RoomConnectionManager;

    invoke-direct {v4, v2, v0}, Landroidx/room/RoomConnectionManager;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenDelegate;)V

    move-object v0, v4

    :goto_9
    iput-object v0, v3, Landroidx/room/RoomDatabase;->e:Landroidx/room/RoomConnectionManager;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->e()Landroidx/room/InvalidationTracker;

    move-result-object v0

    iput-object v0, v3, Landroidx/room/RoomDatabase;->f:Landroidx/room/InvalidationTracker;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->m()Ljava/util/Set;

    move-result-object v4

    iget-object v5, v2, Landroidx/room/DatabaseConfiguration;->s:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v7, v6, [Z

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, -0x1

    if-eqz v8, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/KClass;

    move-object v10, v5

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v10

    add-int/2addr v10, v9

    if-ltz v10, :cond_15

    :goto_b
    add-int/lit8 v11, v10, -0x1

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v8, v12}, Lkotlin/reflect/KClass;->t(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    aput-boolean v1, v7, v10

    move v9, v10

    goto :goto_c

    :cond_13
    if-gez v11, :cond_14

    goto :goto_c

    :cond_14
    move v10, v11

    goto :goto_b

    :cond_15
    :goto_c
    if-ltz v9, :cond_16

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_16
    invoke-interface {v8}, Lkotlin/reflect/KClass;->w()Ljava/lang/String;

    move-result-object v0

    const-string v1, ") is missing in the database configuration."

    const-string v2, "A required auto migration spec ("

    invoke-static {v2, v0, v1}, Llc0;->v(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v27, 0x0

    return-object v27

    :cond_17
    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/2addr v4, v9

    if-ltz v4, :cond_1a

    :goto_d
    add-int/lit8 v5, v4, -0x1

    if-ge v4, v6, :cond_19

    aget-boolean v4, v7, v4

    if-eqz v4, :cond_19

    if-gez v5, :cond_18

    goto :goto_e

    :cond_18
    move v4, v5

    goto :goto_d

    :cond_19
    const-string v0, "Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder."

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    const/16 v27, 0x0

    return-object v27

    :cond_1a
    :goto_e
    invoke-virtual {v3, v0}, Landroidx/room/RoomDatabase;->d(Ljava/util/LinkedHashMap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/room/migration/Migration;

    iget v5, v4, Landroidx/room/migration/Migration;->a:I

    iget v6, v4, Landroidx/room/migration/Migration;->b:I

    iget-object v7, v2, Landroidx/room/DatabaseConfiguration;->d:Landroidx/room/RoomDatabase$MigrationContainer;

    iget-object v8, v7, Landroidx/room/RoomDatabase$MigrationContainer;->a:Ljava/util/LinkedHashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-nez v5, :cond_1c

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v5

    :cond_1c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_10

    :cond_1d
    move/from16 v5, v25

    :goto_10
    if-nez v5, :cond_1b

    invoke-virtual {v7, v4}, Landroidx/room/RoomDatabase$MigrationContainer;->a(Landroidx/room/migration/Migration;)V

    goto :goto_f

    :cond_1e
    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->o()Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v4, v2, Landroidx/room/DatabaseConfiguration;->r:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Z

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/KClass;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/KClass;

    move-object v10, v4

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v10

    add-int/2addr v10, v9

    if-ltz v10, :cond_22

    :goto_12
    add-int/lit8 v11, v10, -0x1

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v8, v12}, Lkotlin/reflect/KClass;->t(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_20

    aput-boolean v1, v5, v10

    goto :goto_14

    :cond_20
    if-gez v11, :cond_21

    goto :goto_13

    :cond_21
    move v10, v11

    goto :goto_12

    :cond_22
    :goto_13
    move v10, v9

    :goto_14
    if-ltz v10, :cond_23

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v3, Landroidx/room/RoomDatabase;->k:Ljava/util/LinkedHashMap;

    invoke-interface {v11, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_23
    invoke-interface {v8}, Lkotlin/reflect/KClass;->w()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7}, Lkotlin/reflect/KClass;->w()Ljava/lang/String;

    move-result-object v1

    const-string v2, " is missing in the database configuration."

    const-string v3, ") for "

    const-string v4, "A required type converter ("

    invoke-static {v0, v3, v1, v2, v4}, Lct0;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v27, 0x0

    return-object v27

    :cond_24
    move-object v0, v4

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v0, v9

    if-ltz v0, :cond_27

    :goto_15
    add-int/lit8 v6, v0, -0x1

    aget-boolean v7, v5, v0

    if-eqz v7, :cond_26

    if-gez v6, :cond_25

    goto :goto_16

    :cond_25
    move v0, v6

    goto :goto_15

    :cond_26
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Unexpected type converter "

    const-string v2, ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder."

    invoke-static {v1, v0, v2}, Lo60;->n(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    const/16 v27, 0x0

    return-object v27

    :cond_27
    :goto_16
    const-string v0, "coroutineScope"

    iget-object v4, v2, Landroidx/room/DatabaseConfiguration;->v:Lkotlin/coroutines/CoroutineContext;

    if-eqz v4, :cond_2b

    sget-object v5, Lkotlin/coroutines/ContinuationInterceptor;->y0:Lkotlin/coroutines/ContinuationInterceptor$Key;

    invoke-interface {v4, v5}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v5}, Lkotlinx/coroutines/ExecutorsKt;->a(Lkotlinx/coroutines/CoroutineDispatcher;)Ljava/util/concurrent/Executor;

    move-result-object v6

    iput-object v6, v3, Landroidx/room/RoomDatabase;->c:Ljava/util/concurrent/Executor;

    new-instance v7, Landroidx/room/TransactionExecutor;

    invoke-direct {v7, v6}, Landroidx/room/TransactionExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v7, v3, Landroidx/room/RoomDatabase;->d:Landroidx/room/TransactionExecutor;

    sget-object v6, Lkotlinx/coroutines/Job$Key;->b:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v4, v6}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v6

    check-cast v6, Lkotlinx/coroutines/Job;

    invoke-static {v6}, Lkotlinx/coroutines/SupervisorKt;->a(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v6

    invoke-interface {v4, v6}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-static {v4}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v4

    iput-object v4, v3, Landroidx/room/RoomDatabase;->a:Lkotlinx/coroutines/internal/ContextScope;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->q()Z

    move-result v4

    iget-object v6, v3, Landroidx/room/RoomDatabase;->a:Lkotlinx/coroutines/internal/ContextScope;

    if-eqz v4, :cond_29

    if-eqz v6, :cond_28

    iget-object v4, v6, Lkotlinx/coroutines/internal/ContextScope;->b:Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v5, v1}, Lkotlinx/coroutines/CoroutineDispatcher;->limitedParallelism(I)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    invoke-interface {v4, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    const/16 v27, 0x0

    goto :goto_17

    :cond_28
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/16 v27, 0x0

    throw v27

    :cond_29
    const/16 v27, 0x0

    if-eqz v6, :cond_2a

    iget-object v1, v6, Lkotlinx/coroutines/internal/ContextScope;->b:Lkotlin/coroutines/CoroutineContext;

    :goto_17
    iput-object v1, v3, Landroidx/room/RoomDatabase;->b:Lkotlin/coroutines/CoroutineContext;

    goto :goto_18

    :cond_2a
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v27

    :cond_2b
    iget-object v1, v2, Landroidx/room/DatabaseConfiguration;->h:Ljava/util/concurrent/Executor;

    iput-object v1, v3, Landroidx/room/RoomDatabase;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/TransactionExecutor;

    iget-object v4, v2, Landroidx/room/DatabaseConfiguration;->i:Ljava/util/concurrent/Executor;

    invoke-direct {v1, v4}, Landroidx/room/TransactionExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v1, v3, Landroidx/room/RoomDatabase;->d:Landroidx/room/TransactionExecutor;

    iget-object v1, v3, Landroidx/room/RoomDatabase;->c:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_3a

    invoke-static {v1}, Lkotlinx/coroutines/ExecutorsKt;->b(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/SupervisorKt;->b()Lkotlinx/coroutines/CompletableJob;

    move-result-object v4

    invoke-virtual {v1, v4}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v1

    iput-object v1, v3, Landroidx/room/RoomDatabase;->a:Lkotlinx/coroutines/internal/ContextScope;

    iget-object v1, v1, Lkotlinx/coroutines/internal/ContextScope;->b:Lkotlin/coroutines/CoroutineContext;

    iget-object v4, v3, Landroidx/room/RoomDatabase;->d:Landroidx/room/TransactionExecutor;

    if-eqz v4, :cond_39

    invoke-static {v4}, Lkotlinx/coroutines/ExecutorsKt;->b(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    invoke-interface {v1, v4}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    iput-object v1, v3, Landroidx/room/RoomDatabase;->b:Lkotlin/coroutines/CoroutineContext;

    :goto_18
    iget-boolean v1, v2, Landroidx/room/DatabaseConfiguration;->f:Z

    iput-boolean v1, v3, Landroidx/room/RoomDatabase;->h:Z

    iget-object v1, v3, Landroidx/room/RoomDatabase;->e:Landroidx/room/RoomConnectionManager;

    const-string v4, "connectionManager"

    if-eqz v1, :cond_38

    invoke-virtual {v1}, Landroidx/room/RoomConnectionManager;->k()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v1

    if-nez v1, :cond_2d

    :cond_2c
    const/4 v1, 0x0

    goto :goto_1a

    :cond_2d
    :goto_19
    instance-of v5, v1, Landroidx/room/support/PrePackagedCopyOpenHelper;

    if-eqz v5, :cond_2e

    goto :goto_1a

    :cond_2e
    instance-of v5, v1, Landroidx/room/DelegatingOpenHelper;

    if-eqz v5, :cond_2c

    check-cast v1, Landroidx/room/DelegatingOpenHelper;

    invoke-interface {v1}, Landroidx/room/DelegatingOpenHelper;->getDelegate()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v1

    goto :goto_19

    :goto_1a
    check-cast v1, Landroidx/room/support/PrePackagedCopyOpenHelper;

    if-eqz v1, :cond_2f

    iput-object v2, v1, Landroidx/room/support/PrePackagedCopyOpenHelper;->h:Landroidx/room/DatabaseConfiguration;

    :cond_2f
    iget-object v1, v3, Landroidx/room/RoomDatabase;->e:Landroidx/room/RoomConnectionManager;

    if-eqz v1, :cond_37

    invoke-virtual {v1}, Landroidx/room/RoomConnectionManager;->k()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v1

    if-nez v1, :cond_31

    :cond_30
    const/4 v1, 0x0

    goto :goto_1c

    :cond_31
    :goto_1b
    instance-of v4, v1, Landroidx/room/support/AutoClosingRoomOpenHelper;

    if-eqz v4, :cond_32

    goto :goto_1c

    :cond_32
    instance-of v4, v1, Landroidx/room/DelegatingOpenHelper;

    if-eqz v4, :cond_30

    check-cast v1, Landroidx/room/DelegatingOpenHelper;

    invoke-interface {v1}, Landroidx/room/DelegatingOpenHelper;->getDelegate()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v1

    goto :goto_1b

    :goto_1c
    check-cast v1, Landroidx/room/support/AutoClosingRoomOpenHelper;

    if-eqz v1, :cond_34

    iget-object v1, v1, Landroidx/room/support/AutoClosingRoomOpenHelper;->c:Landroidx/room/support/AutoCloser;

    iput-object v1, v3, Landroidx/room/RoomDatabase;->i:Landroidx/room/support/AutoCloser;

    iget-object v4, v3, Landroidx/room/RoomDatabase;->a:Lkotlinx/coroutines/internal/ContextScope;

    if-eqz v4, :cond_33

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v1, Landroidx/room/support/AutoCloser;->c:Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->k()Landroidx/room/InvalidationTracker;

    move-result-object v7

    iput-object v1, v7, Landroidx/room/InvalidationTracker;->h:Landroidx/room/support/AutoCloser;

    new-instance v5, Landroidx/room/InvalidationTracker$setAutoCloser$1;

    const-string v10, "onAutoCloseCallback()V"

    const/4 v11, 0x0

    const/4 v6, 0x0

    const-class v8, Landroidx/room/InvalidationTracker;

    const-string v9, "onAutoCloseCallback"

    invoke-direct/range {v5 .. v11}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v5, v1, Landroidx/room/support/AutoCloser;->d:Lkotlin/jvm/functions/Function0;

    goto :goto_1d

    :cond_33
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/16 v27, 0x0

    throw v27

    :cond_34
    :goto_1d
    iget-object v0, v2, Landroidx/room/DatabaseConfiguration;->j:Landroid/content/Intent;

    if-eqz v0, :cond_36

    iget-object v1, v2, Landroidx/room/DatabaseConfiguration;->b:Ljava/lang/String;

    if-eqz v1, :cond_35

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->k()Landroidx/room/InvalidationTracker;

    move-result-object v4

    iget-object v2, v2, Landroidx/room/DatabaseConfiguration;->a:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v4, Landroidx/room/InvalidationTracker;->l:Landroid/content/Intent;

    new-instance v0, Landroidx/room/MultiInstanceInvalidationClient;

    invoke-direct {v0, v2, v1, v4}, Landroidx/room/MultiInstanceInvalidationClient;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/room/InvalidationTracker;)V

    iput-object v0, v4, Landroidx/room/InvalidationTracker;->m:Landroidx/room/MultiInstanceInvalidationClient;

    goto :goto_1e

    :cond_35
    invoke-static/range {v26 .. v26}, Lmd;->n(Ljava/lang/String;)V

    const/16 v27, 0x0

    return-object v27

    :cond_36
    :goto_1e
    return-object v3

    :cond_37
    const/16 v27, 0x0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v27

    :cond_38
    const/16 v27, 0x0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v27

    :cond_39
    const/16 v27, 0x0

    const-string v0, "internalTransactionExecutor"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v27

    :cond_3a
    const/16 v27, 0x0

    const-string v0, "internalQueryExecutor"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v27

    :catch_1
    move-exception v0

    goto :goto_1f

    :catch_2
    move-exception v0

    goto :goto_20

    :catch_3
    move-exception v0

    goto :goto_21

    :goto_1f
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to create an instance of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_20
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot access the constructor "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_21
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Cannot find implementation for "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not exist. Is Room annotation processor correctly configured?"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3b
    invoke-static/range {v26 .. v26}, Lmd;->n(Ljava/lang/String;)V

    const/16 v27, 0x0

    return-object v27

    :cond_3c
    move-object/from16 v27, v6

    invoke-static/range {v26 .. v26}, Lmd;->n(Ljava/lang/String;)V

    return-object v27
.end method
