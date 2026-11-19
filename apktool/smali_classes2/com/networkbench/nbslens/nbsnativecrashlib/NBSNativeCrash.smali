.class public final Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;
    }
.end annotation


# static fields
.field private static appId:Ljava/lang/String; = null

.field private static appVersion:Ljava/lang/String; = null

.field private static initialized:Z = false

.field private static logDir:Ljava/lang/String;

.field private static logger:Lcom/networkbench/nbslens/nbsnativecrashlib/i;

.field public static nativeLibDir:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/nbslens/nbsnativecrashlib/d;

    invoke-direct {v0}, Lcom/networkbench/nbslens/nbsnativecrashlib/d;-><init>()V

    sput-object v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->logger:Lcom/networkbench/nbslens/nbsnativecrashlib/i;

    const/4 v0, 0x0

    sput-object v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->nativeLibDir:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Lcom/networkbench/nbslens/nbsnativecrashlib/i;
    .locals 1

    sget-object v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->logger:Lcom/networkbench/nbslens/nbsnativecrashlib/i;

    return-object v0
.end method

.method public static getLogDir()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->logDir:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x0

    .line 292
    invoke-static {p0, v0}, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->init(Landroid/content/Context;Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;)I

    move-result p0

    return p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;)I
    .locals 32

    const-class v1, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    monitor-exit v1

    return v2

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->initialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_1

    monitor-exit v1

    const/4 v0, -0x1

    return v0

    :cond_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v4, v0

    goto :goto_0

    :cond_2
    move-object/from16 v4, p0

    :goto_0
    if-nez p1, :cond_3

    new-instance v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;

    invoke-direct {v0}, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;-><init>()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_3
    move-object/from16 v0, p1

    :goto_1
    iget-object v3, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->d:Lcom/networkbench/nbslens/nbsnativecrashlib/i;

    if-eqz v3, :cond_4

    sput-object v3, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->logger:Lcom/networkbench/nbslens/nbsnativecrashlib/i;

    :cond_4
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->appId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "unknown"

    sput-object v5, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->appId:Ljava/lang/String;

    :cond_5
    iget-object v5, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->a:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v4}, Lcom/networkbench/nbslens/nbsnativecrashlib/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->a:Ljava/lang/String;

    :cond_6
    iget-object v5, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->a:Ljava/lang/String;

    sput-object v5, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->appVersion:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    sput-object v5, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->nativeLibDir:Ljava/lang/String;

    iget-object v5, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "/tombstones"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->b:Ljava/lang/String;

    :cond_7
    iget-object v5, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->b:Ljava/lang/String;

    sput-object v5, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->logDir:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    iget-boolean v6, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->h:Z

    if-nez v6, :cond_8

    iget-boolean v6, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->H:Z

    if-eqz v6, :cond_a

    :cond_8
    invoke-static {v4, v5}, Lcom/networkbench/nbslens/nbsnativecrashlib/n;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->H:Z

    if-eqz v6, :cond_a

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    iput-boolean v2, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->H:Z

    :cond_a
    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/f;->b()Lcom/networkbench/nbslens/nbsnativecrashlib/f;

    move-result-object v5

    iget-object v6, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->b:Ljava/lang/String;

    iget v7, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->j:I

    iget v8, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->v:I

    iget v9, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->K:I

    iget v10, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->f:I

    iget v11, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->g:I

    iget v12, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->c:I

    invoke-virtual/range {v5 .. v12}, Lcom/networkbench/nbslens/nbsnativecrashlib/f;->a(Ljava/lang/String;IIIIII)V

    iget-boolean v3, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->t:Z

    if-nez v3, :cond_b

    iget-boolean v3, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->H:Z

    if-eqz v3, :cond_c

    :cond_b
    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->b()Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;

    move-result-object v3

    iget-object v5, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->e:Lcom/networkbench/nbslens/nbsnativecrashlib/h;

    sget-object v6, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->appId:Ljava/lang/String;

    iget-object v7, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->a:Ljava/lang/String;

    iget-object v8, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->b:Ljava/lang/String;

    iget-boolean v9, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->t:Z

    iget-boolean v10, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->u:Z

    iget v11, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->w:I

    iget v12, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->x:I

    iget v13, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->y:I

    iget-boolean v14, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->z:Z

    iget-boolean v15, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->A:Z

    iget-boolean v2, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->B:Z

    move/from16 v16, v2

    iget-boolean v2, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->C:Z

    move/from16 v17, v2

    iget-boolean v2, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->D:Z

    move/from16 v18, v2

    iget v2, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->E:I

    move/from16 v19, v2

    iget-object v2, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->F:[Ljava/lang/String;

    move-object/from16 v20, v2

    iget-object v2, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->G:Lcom/networkbench/nbslens/nbsnativecrashlib/g;

    move-object/from16 v21, v2

    iget-boolean v2, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->H:Z

    move/from16 v22, v2

    iget-boolean v2, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->I:Z

    move/from16 v23, v2

    iget-boolean v2, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->J:Z

    move/from16 v24, v2

    iget v2, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->L:I

    move/from16 v25, v2

    iget v2, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->M:I

    move/from16 v26, v2

    iget v2, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->N:I

    move/from16 v27, v2

    iget-boolean v2, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->O:Z

    move/from16 v28, v2

    iget-boolean v2, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->P:Z

    move/from16 v29, v2

    iget-object v2, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->Q:Lcom/networkbench/nbslens/nbsnativecrashlib/g;

    iget-object v0, v0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$b;->R:Lcom/networkbench/nbslens/nbsnativecrashlib/g;

    move-object/from16 v31, v0

    move-object/from16 v30, v2

    invoke-virtual/range {v3 .. v31}, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->a(Landroid/content/Context;Lcom/networkbench/nbslens/nbsnativecrashlib/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIZZZZZI[Ljava/lang/String;Lcom/networkbench/nbslens/nbsnativecrashlib/g;ZZZIIIZZLcom/networkbench/nbslens/nbsnativecrashlib/g;Lcom/networkbench/nbslens/nbsnativecrashlib/g;)I

    move-result v2

    :cond_c
    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/f;->b()Lcom/networkbench/nbslens/nbsnativecrashlib/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/nbslens/nbsnativecrashlib/f;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return v2

    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public static testJavaCrash(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance p0, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$a;

    invoke-direct {p0}, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash$a;-><init>()V

    const-string v0, "xcrash_test_java_thread"

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    const-string p0, "test java exception"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    return-void
.end method

.method public static testNativeCrash(Z)V
    .locals 1

    invoke-static {}, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->b()Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/nbslens/nbsnativecrashlib/NativeHandler;->a(Z)V

    return-void
.end method
