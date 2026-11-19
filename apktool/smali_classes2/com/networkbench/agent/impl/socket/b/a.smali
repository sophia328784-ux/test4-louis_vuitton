.class public Lcom/networkbench/agent/impl/socket/b/a;
.super Ljava/net/SocketImpl;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/socket/m;


# static fields
.field private static A:Z = false

.field private static D:Ljava/lang/Throwable; = null

.field private static final F:Lcom/networkbench/agent/impl/c/e;

.field private static a:Ljava/lang/reflect/Field; = null

.field private static b:Ljava/lang/reflect/Field; = null

.field private static c:Ljava/lang/reflect/Field; = null

.field private static d:Ljava/lang/reflect/Field; = null

.field private static final e:I = 0x0

.field private static final f:I = 0x1

.field private static final g:I = 0x2

.field private static final h:I = 0x3

.field private static final i:I = 0x4

.field private static final j:I = 0x5

.field private static final k:I = 0x6

.field private static final l:I = 0x7

.field private static final m:I = 0x8

.field private static final n:I = 0x9

.field private static final o:I = 0xa

.field private static final p:I = 0xb

.field private static final q:I = 0xc

.field private static final r:I = 0xd

.field private static final s:I = 0xe

.field private static final t:I = 0xf

.field private static final u:I = 0x10

.field private static final v:I = 0x11

.field private static final w:I = 0x12

.field private static final x:I = 0x13

.field private static final y:I = 0x14

.field private static z:[Ljava/lang/reflect/Method;


# instance fields
.field private B:I

.field private C:Ljava/lang/String;

.field private E:Ljava/net/SocketImpl;

.field private G:Z

.field private H:Lcom/networkbench/agent/impl/socket/j;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v1, "port"

    const-string v2, "localport"

    const-string v3, "fd"

    const-string v4, "address"

    const-string v0, "connect"

    const-class v5, Ljava/net/InetAddress;

    const-class v6, Ljava/net/SocketImpl;

    const/16 v7, 0x14

    new-array v8, v7, [Ljava/lang/reflect/Method;

    sput-object v8, Lcom/networkbench/agent/impl/socket/b/a;->z:[Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v8

    sput-object v8, Lcom/networkbench/agent/impl/socket/b/a;->F:Lcom/networkbench/agent/impl/c/e;

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v6, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    sput-object v9, Lcom/networkbench/agent/impl/socket/b/a;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v6, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    sput-object v9, Lcom/networkbench/agent/impl/socket/b/a;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v6, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    sput-object v9, Lcom/networkbench/agent/impl/socket/b/a;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v6, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    sput-object v9, Lcom/networkbench/agent/impl/socket/b/a;->d:Ljava/lang/reflect/Field;

    sget-object v10, Lcom/networkbench/agent/impl/socket/b/a;->a:Ljava/lang/reflect/Field;

    const/4 v11, 0x3

    new-array v12, v11, [Ljava/lang/reflect/AccessibleObject;

    sget-object v13, Lcom/networkbench/agent/impl/socket/b/a;->b:Ljava/lang/reflect/Field;

    aput-object v13, v12, v8

    sget-object v13, Lcom/networkbench/agent/impl/socket/b/a;->c:Ljava/lang/reflect/Field;

    const/4 v14, 0x1

    aput-object v13, v12, v14

    const/4 v13, 0x2

    aput-object v9, v12, v13

    invoke-static {v10, v12}, Lcom/networkbench/agent/impl/util/ad;->a(Ljava/lang/reflect/AccessibleObject;[Ljava/lang/reflect/AccessibleObject;)V

    sget-object v9, Lcom/networkbench/agent/impl/socket/b/a;->z:[Ljava/lang/reflect/Method;

    const-string v10, "accept"

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    aput-object v10, v9, v8

    sget-object v9, Lcom/networkbench/agent/impl/socket/b/a;->z:[Ljava/lang/reflect/Method;

    const-string v10, "available"

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    aput-object v10, v9, v14

    sget-object v9, Lcom/networkbench/agent/impl/socket/b/a;->z:[Ljava/lang/reflect/Method;

    const-string v10, "bind"

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v16, v8

    :try_start_1
    filled-new-array {v5, v15}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6, v10, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    aput-object v8, v9, v13

    sget-object v8, Lcom/networkbench/agent/impl/socket/b/a;->z:[Ljava/lang/reflect/Method;

    const-string v9, "close"

    invoke-virtual {v6, v9, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    aput-object v9, v8, v11

    sget-object v8, Lcom/networkbench/agent/impl/socket/b/a;->z:[Ljava/lang/reflect/Method;

    filled-new-array {v5, v15}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v6, v0, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v9, 0x4

    aput-object v5, v8, v9

    sget-object v5, Lcom/networkbench/agent/impl/socket/b/a;->z:[Ljava/lang/reflect/Method;

    const-class v8, Ljava/net/SocketAddress;

    filled-new-array {v8, v15}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6, v0, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const/4 v9, 0x5

    aput-object v8, v5, v9

    sget-object v5, Lcom/networkbench/agent/impl/socket/b/a;->z:[Ljava/lang/reflect/Method;

    const-class v8, Ljava/lang/String;

    filled-new-array {v8, v15}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6, v0, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v8, 0x6

    aput-object v0, v5, v8

    sget-object v0, Lcom/networkbench/agent/impl/socket/b/a;->z:[Ljava/lang/reflect/Method;

    const-string v5, "create"

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v8, 0x7

    aput-object v5, v0, v8

    sget-object v0, Lcom/networkbench/agent/impl/socket/b/a;->z:[Ljava/lang/reflect/Method;

    const-string v5, "getFileDescriptor"

    invoke-virtual {v6, v5, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/16 v8, 0x8

    aput-object v5, v0, v8

    sget-object v0, Lcom/networkbench/agent/impl/socket/b/a;->z:[Ljava/lang/reflect/Method;

    const-string v5, "getInetAddress"

    invoke-virtual {v6, v5, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/16 v8, 0x9

    aput-object v5, v0, v8

    sget-object v0, Lcom/networkbench/agent/impl/socket/b/a;->z:[Ljava/lang/reflect/Method;

    const-string v5, "getInputStream"

    invoke-virtual {v6, v5, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/16 v8, 0xa

    aput-object v5, v0, v8

    sget-object v0, Lcom/networkbench/agent/impl/socket/b/a;->z:[Ljava/lang/reflect/Method;

    const-string v5, "getLocalPort"

    invoke-virtual {v6, v5, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/16 v8, 0xb

    aput-object v5, v0, v8

    sget-object v0, Lcom/networkbench/agent/impl/socket/b/a;->z:[Ljava/lang/reflect/Method;

    const-string v5, "getOutputStream"

    invoke-virtual {v6, v5, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/16 v8, 0xc

    aput-object v5, v0, v8

    sget-object v0, Lcom/networkbench/agent/impl/socket/b/a;->z:[Ljava/lang/reflect/Method;

    const-string v5, "getPort"

    invoke-virtual {v6, v5, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/16 v8, 0xd

    aput-object v5, v0, v8

    sget-object v0, Lcom/networkbench/agent/impl/socket/b/a;->z:[Ljava/lang/reflect/Method;

    const-string v5, "listen"

    filled-new-array {v15}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/16 v8, 0xe

    aput-object v5, v0, v8

    sget-object v0, Lcom/networkbench/agent/impl/socket/b/a;->z:[Ljava/lang/reflect/Method;

    const-string v5, "sendUrgentData"

    filled-new-array {v15}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/16 v8, 0xf

    aput-object v5, v0, v8

    sget-object v0, Lcom/networkbench/agent/impl/socket/b/a;->z:[Ljava/lang/reflect/Method;

    const-string v5, "setPerformancePreferences"

    filled-new-array {v15, v15, v15}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/16 v8, 0x10

    aput-object v5, v0, v8

    sget-object v0, Lcom/networkbench/agent/impl/socket/b/a;->z:[Ljava/lang/reflect/Method;

    const-string v5, "shutdownInput"

    invoke-virtual {v6, v5, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/16 v8, 0x11

    aput-object v5, v0, v8

    sget-object v0, Lcom/networkbench/agent/impl/socket/b/a;->z:[Ljava/lang/reflect/Method;

    const-string v5, "shutdownOutput"

    invoke-virtual {v6, v5, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/16 v8, 0x12

    aput-object v5, v0, v8

    sget-object v0, Lcom/networkbench/agent/impl/socket/b/a;->z:[Ljava/lang/reflect/Method;

    const-string v5, "supportsUrgentData"

    invoke-virtual {v6, v5, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/16 v6, 0x13

    aput-object v5, v0, v6

    sget-object v0, Lcom/networkbench/agent/impl/socket/b/a;->z:[Ljava/lang/reflect/Method;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ad;->a([Ljava/lang/reflect/AccessibleObject;)V

    sput-boolean v14, Lcom/networkbench/agent/impl/socket/b/a;->A:Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    move/from16 v16, v8

    goto :goto_0

    :catch_3
    move-exception v0

    move/from16 v16, v8

    goto :goto_1

    :catch_4
    move-exception v0

    move/from16 v16, v8

    goto :goto_3

    :catch_5
    move-exception v0

    move/from16 v16, v8

    goto :goto_6

    :goto_0
    sput-boolean v16, Lcom/networkbench/agent/impl/socket/b/a;->A:Z

    invoke-static {v0}, Lcom/networkbench/agent/impl/socket/b/a;->a(Ljava/lang/Throwable;)V

    goto :goto_7

    :goto_1
    sput-boolean v16, Lcom/networkbench/agent/impl/socket/b/a;->A:Z

    sget-object v5, Lcom/networkbench/agent/impl/socket/b/a;->a:Ljava/lang/reflect/Field;

    if-nez v5, :cond_0

    move-object v1, v4

    goto :goto_2

    :cond_0
    sget-object v4, Lcom/networkbench/agent/impl/socket/b/a;->b:Ljava/lang/reflect/Field;

    if-nez v4, :cond_1

    move-object v1, v3

    goto :goto_2

    :cond_1
    sget-object v3, Lcom/networkbench/agent/impl/socket/b/a;->c:Ljava/lang/reflect/Field;

    if-nez v3, :cond_2

    move-object v1, v2

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/networkbench/agent/impl/socket/b/a;->d:Ljava/lang/reflect/Field;

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    const-string v1, "unknown"

    :goto_2
    new-instance v2, Lcom/networkbench/agent/impl/socket/a/a;

    const-string v3, "No such field: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/networkbench/agent/impl/socket/a/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/networkbench/agent/impl/socket/b/a;->a(Ljava/lang/Throwable;)V

    goto :goto_7

    :goto_3
    sput-boolean v16, Lcom/networkbench/agent/impl/socket/b/a;->A:Z

    move/from16 v8, v16

    :goto_4
    if-ge v8, v7, :cond_5

    sget-object v1, Lcom/networkbench/agent/impl/socket/b/a;->z:[Ljava/lang/reflect/Method;

    aget-object v1, v1, v8

    if-nez v1, :cond_4

    move v7, v8

    goto :goto_5

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    new-instance v1, Lcom/networkbench/agent/impl/socket/a/a;

    const-string v2, "Bad method: "

    invoke-static {v7, v2}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/networkbench/agent/impl/socket/a/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/networkbench/agent/impl/socket/b/a;->a(Ljava/lang/Throwable;)V

    goto :goto_7

    :goto_6
    sput-boolean v16, Lcom/networkbench/agent/impl/socket/b/a;->A:Z

    invoke-static {v0}, Lcom/networkbench/agent/impl/socket/b/a;->a(Ljava/lang/Throwable;)V

    :goto_7
    return-void
.end method

.method public constructor <init>(Ljava/net/SocketImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/net/SocketImpl;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/socket/b/a;->C:Ljava/lang/String;

    new-instance v0, Lcom/networkbench/agent/impl/socket/j;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/socket/j;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/socket/b/a;->H:Lcom/networkbench/agent/impl/socket/j;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/networkbench/agent/impl/socket/b/a;->E:Ljava/net/SocketImpl;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/socket/b/a;->e()V

    return-void

    :cond_0
    const-string p0, "delegate was null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private a(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/networkbench/agent/impl/socket/b/a;->d()V

    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/socket/b/a;->z:[Ljava/lang/reflect/Method;

    aget-object p1, v0, p1

    iget-object v0, p0, Lcom/networkbench/agent/impl/socket/b/a;->E:Ljava/net/SocketImpl;

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/socket/b/a;->e()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p1

    goto :goto_4

    :goto_0
    :try_start_1
    new-instance p2, Lcom/networkbench/agent/impl/socket/a/a;

    invoke-direct {p2, p1}, Lcom/networkbench/agent/impl/socket/a/a;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catchall_1
    move-exception p1

    goto :goto_5

    :goto_1
    new-instance p2, Lcom/networkbench/agent/impl/socket/a/a;

    invoke-direct {p2, p1}, Lcom/networkbench/agent/impl/socket/a/a;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_2
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_2

    instance-of p1, p2, Ljava/lang/Exception;

    if-nez p1, :cond_1

    instance-of p1, p2, Ljava/lang/Error;

    if-eqz p1, :cond_0

    check-cast p2, Ljava/lang/Error;

    throw p2

    :cond_0
    new-instance p1, Lcom/networkbench/agent/impl/socket/a/a;

    invoke-direct {p1, p2}, Lcom/networkbench/agent/impl/socket/a/a;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    check-cast p2, Ljava/lang/Exception;

    throw p2

    :cond_2
    new-instance p2, Lcom/networkbench/agent/impl/socket/a/a;

    invoke-direct {p2, p1}, Lcom/networkbench/agent/impl/socket/a/a;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_3
    new-instance p2, Lcom/networkbench/agent/impl/socket/a/a;

    invoke-direct {p2, p1}, Lcom/networkbench/agent/impl/socket/a/a;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_4
    new-instance p2, Lcom/networkbench/agent/impl/socket/a/a;

    invoke-direct {p2, p1}, Lcom/networkbench/agent/impl/socket/a/a;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_5
    invoke-direct {p0}, Lcom/networkbench/agent/impl/socket/b/a;->e()V

    throw p1
.end method

.method private static a(Ljava/lang/Throwable;)V
    .locals 0

    .line 90
    sput-object p0, Lcom/networkbench/agent/impl/socket/b/a;->D:Ljava/lang/Throwable;

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 89
    sget-boolean v0, Lcom/networkbench/agent/impl/socket/b/a;->A:Z

    return v0
.end method

.method private b(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/socket/b/a;->a(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/networkbench/agent/impl/socket/a/a;

    invoke-direct {p1, p0}, Lcom/networkbench/agent/impl/socket/a/a;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_0
    move-exception p0

    throw p0
.end method

.method public static b()Ljava/lang/Throwable;
    .locals 1

    .line 14
    sget-object v0, Lcom/networkbench/agent/impl/socket/b/a;->D:Ljava/lang/Throwable;

    return-object v0
.end method

.method private c(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/socket/b/a;->a(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/networkbench/agent/impl/socket/a/a;

    invoke-direct {p1, p0}, Lcom/networkbench/agent/impl/socket/a/a;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_0
    move-exception p0

    throw p0

    :catch_1
    move-exception p0

    throw p0
.end method

.method private d()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/socket/b/a;->a:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/networkbench/agent/impl/socket/b/a;->E:Ljava/net/SocketImpl;

    iget-object v2, p0, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/networkbench/agent/impl/socket/b/a;->b:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/networkbench/agent/impl/socket/b/a;->E:Ljava/net/SocketImpl;

    iget-object v2, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/networkbench/agent/impl/socket/b/a;->c:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/networkbench/agent/impl/socket/b/a;->E:Ljava/net/SocketImpl;

    iget v2, p0, Ljava/net/SocketImpl;->localport:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    sget-object v0, Lcom/networkbench/agent/impl/socket/b/a;->d:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/networkbench/agent/impl/socket/b/a;->E:Ljava/net/SocketImpl;

    iget p0, p0, Ljava/net/SocketImpl;->port:I

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private e()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/socket/b/a;->a:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/networkbench/agent/impl/socket/b/a;->E:Ljava/net/SocketImpl;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    iput-object v0, p0, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    sget-object v0, Lcom/networkbench/agent/impl/socket/b/a;->b:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/networkbench/agent/impl/socket/b/a;->E:Ljava/net/SocketImpl;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileDescriptor;

    iput-object v0, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v0, Lcom/networkbench/agent/impl/socket/b/a;->c:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/networkbench/agent/impl/socket/b/a;->E:Ljava/net/SocketImpl;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Ljava/net/SocketImpl;->localport:I

    sget-object v0, Lcom/networkbench/agent/impl/socket/b/a;->d:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/networkbench/agent/impl/socket/b/a;->E:Ljava/net/SocketImpl;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Ljava/net/SocketImpl;->port:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lcom/networkbench/agent/impl/socket/a/a;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/socket/a/a;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/networkbench/agent/impl/socket/a/a;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/socket/a/a;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/b/a;->H:Lcom/networkbench/agent/impl/socket/j;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/socket/j;->a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    return-void
.end method

.method public accept(Ljava/net/SocketImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/networkbench/agent/impl/socket/b/a;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/networkbench/agent/impl/socket/b/a;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lcom/networkbench/agent/impl/socket/a/a;

    const-string v0, "Received a null Integer"

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/socket/a/a;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bind(Ljava/net/InetAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lcom/networkbench/agent/impl/socket/b/a;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c()Ljava/net/SocketImpl;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/b/a;->E:Ljava/net/SocketImpl;

    return-object p0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/networkbench/agent/impl/socket/b/a;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final connect(Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "connect(String host, int port) host:"

    new-instance v1, Lcom/networkbench/agent/impl/data/l;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/data/l;-><init>()V

    :try_start_0
    sget-object v2, Lcom/networkbench/agent/impl/socket/b/a;->F:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", port:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p1}, Lcom/networkbench/agent/impl/data/l;->b(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/networkbench/agent/impl/data/l;->b(I)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x6

    invoke-direct {p0, p2, p1}, Lcom/networkbench/agent/impl/socket/b/a;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v2

    long-to-int p1, p1

    iput p1, p0, Lcom/networkbench/agent/impl/socket/b/a;->B:I

    invoke-virtual {v1, p1}, Lcom/networkbench/agent/impl/data/l;->c(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/l;->d()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/l;->d()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/v;->d(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v1}, Lcom/networkbench/agent/impl/harvest/Harvest;->addSocketDatasInfo(Lcom/networkbench/agent/impl/socket/p;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, -0x1

    :try_start_1
    invoke-virtual {v1, p1}, Lcom/networkbench/agent/impl/data/l;->a(I)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/networkbench/agent/impl/socket/p;->d(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/l;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/l;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/v;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v1}, Lcom/networkbench/agent/impl/harvest/Harvest;->addSocketDatasInfo(Lcom/networkbench/agent/impl/socket/p;)V

    :cond_1
    throw p0
.end method

.method public final connect(Ljava/net/InetAddress;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    new-instance v0, Lcom/networkbench/agent/impl/data/l;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/data/l;-><init>()V

    .line 121
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 122
    invoke-static {p1}, Lcom/networkbench/agent/impl/util/s;->a(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/networkbench/agent/impl/data/l;->a(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    invoke-static {v3}, Lcom/networkbench/agent/impl/util/s;->b(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/networkbench/agent/impl/data/l;->b(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, p2}, Lcom/networkbench/agent/impl/data/l;->b(I)V

    .line 125
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x4

    invoke-direct {p0, p2, p1}, Lcom/networkbench/agent/impl/socket/b/a;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v1

    long-to-int p1, p1

    iput p1, p0, Lcom/networkbench/agent/impl/socket/b/a;->B:I

    .line 127
    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/data/l;->c(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/l;->d()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 129
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/l;->d()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/v;->d(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 130
    invoke-static {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->addSocketDatasInfo(Lcom/networkbench/agent/impl/socket/p;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, -0x1

    .line 131
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/data/l;->a(I)V

    .line 132
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/socket/p;->d(Ljava/lang/String;)V

    .line 133
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :goto_0
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/l;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 135
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/l;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/v;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 136
    invoke-static {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->addSocketDatasInfo(Lcom/networkbench/agent/impl/socket/p;)V

    .line 137
    :cond_1
    throw p0
.end method

.method public final connect(Ljava/net/SocketAddress;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 139
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 140
    invoke-static {v0}, Lcom/networkbench/agent/impl/util/s;->a(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/s;->b(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v0

    .line 142
    iput-object v0, p0, Lcom/networkbench/agent/impl/socket/b/a;->C:Ljava/lang/String;

    goto :goto_0

    .line 143
    :cond_0
    const-string v1, ""

    move-object v0, v1

    .line 144
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 145
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x5

    invoke-direct {p0, p2, p1}, Lcom/networkbench/agent/impl/socket/b/a;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v2

    long-to-int p1, p1

    iput p1, p0, Lcom/networkbench/agent/impl/socket/b/a;->B:I

    .line 147
    iget-object p2, p0, Lcom/networkbench/agent/impl/socket/b/a;->H:Lcom/networkbench/agent/impl/socket/j;

    invoke-virtual {p2, p1}, Lcom/networkbench/agent/impl/socket/j;->a(I)V

    .line 148
    iget p1, p0, Lcom/networkbench/agent/impl/socket/b/a;->B:I

    iget p2, p0, Ljava/net/SocketImpl;->port:I

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Lcom/networkbench/agent/impl/util/v;->a(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 149
    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/b/a;->H:Lcom/networkbench/agent/impl/socket/j;

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/socket/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public create(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lcom/networkbench/agent/impl/socket/b/a;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Lcom/networkbench/agent/impl/socket/b/a;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x9

    invoke-direct {p0, v1, v0}, Lcom/networkbench/agent/impl/socket/b/a;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/InetAddress;

    return-object p0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "CustomPlainSocketImpl getInputStream time:"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/16 v3, 0xa

    invoke-direct {p0, v3, v2}, Lcom/networkbench/agent/impl/socket/b/a;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    sget-object v3, Lcom/networkbench/agent/impl/socket/b/a;->F:Lcom/networkbench/agent/impl/c/e;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    instance-of v0, v2, Lcom/networkbench/agent/impl/socket/i;

    if-eqz v0, :cond_1

    return-object v2

    :cond_1
    iget-object v0, p0, Lcom/networkbench/agent/impl/socket/b/a;->H:Lcom/networkbench/agent/impl/socket/j;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/socket/j;->a(Z)V

    new-instance v0, Lcom/networkbench/agent/impl/socket/i;

    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/b/a;->H:Lcom/networkbench/agent/impl/socket/j;

    invoke-direct {v0, p0, v2}, Lcom/networkbench/agent/impl/socket/i;-><init>(Lcom/networkbench/agent/impl/socket/j;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/networkbench/agent/impl/socket/b/a;->F:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getInputStream error:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-object v2
.end method

.method public getLocalPort()I
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Lcom/networkbench/agent/impl/socket/b/a;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/b/a;->E:Ljava/net/SocketImpl;

    invoke-interface {p0, p1}, Ljava/net/SocketOptions;->getOption(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "customplainSocketImpl getOutputStream time:"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0xc

    invoke-direct {p0, v2, v1}, Lcom/networkbench/agent/impl/socket/b/a;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/OutputStream;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    sget-object v2, Lcom/networkbench/agent/impl/socket/b/a;->F:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    instance-of v0, v1, Lcom/networkbench/agent/impl/socket/h;

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Lcom/networkbench/agent/impl/socket/h;

    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/b/a;->H:Lcom/networkbench/agent/impl/socket/j;

    invoke-direct {v0, p0, v1}, Lcom/networkbench/agent/impl/socket/h;-><init>(Lcom/networkbench/agent/impl/socket/j;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/networkbench/agent/impl/socket/b/a;->F:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getOutputStream error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-object v1
.end method

.method public getPort()I
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0xd

    invoke-direct {p0, v1, v0}, Lcom/networkbench/agent/impl/socket/b/a;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public listen(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Lcom/networkbench/agent/impl/socket/b/a;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public sendUrgentData(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0xf

    invoke-direct {p0, v0, p1}, Lcom/networkbench/agent/impl/socket/b/a;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/b/a;->E:Ljava/net/SocketImpl;

    invoke-interface {p0, p1, p2}, Ljava/net/SocketOptions;->setOption(ILjava/lang/Object;)V

    return-void
.end method

.method public setPerformancePreferences(III)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const/16 p2, 0x10

    invoke-direct {p0, p2, p1}, Lcom/networkbench/agent/impl/socket/b/a;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public shutdownInput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x11

    invoke-direct {p0, v1, v0}, Lcom/networkbench/agent/impl/socket/b/a;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public shutdownOutput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x12

    invoke-direct {p0, v1, v0}, Lcom/networkbench/agent/impl/socket/b/a;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public supportsUrgentData()Z
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x13

    invoke-direct {p0, v1, v0}, Lcom/networkbench/agent/impl/socket/b/a;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/b/a;->E:Ljava/net/SocketImpl;

    invoke-virtual {p0}, Ljava/net/SocketImpl;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
