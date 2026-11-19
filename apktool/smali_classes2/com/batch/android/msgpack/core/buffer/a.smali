.class Lcom/batch/android/msgpack/core/buffer/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/msgpack/core/buffer/a$e;
    }
.end annotation


# static fields
.field static a:Ljava/lang/reflect/Method;

.field static b:Ljava/lang/reflect/Method;

.field static c:Ljava/lang/reflect/Method;

.field static d:Ljava/lang/reflect/Method;

.field static e:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field static f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static g:Lcom/batch/android/msgpack/core/buffer/a$e;

.field static h:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lcom/batch/android/msgpack/core/buffer/a;->f:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v5, 0x0

    :try_start_1
    const-class v6, Ljava/lang/Object;

    filled-new-array {v0, v1, v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    sget-object v0, Lcom/batch/android/msgpack/core/buffer/a$e;->b:Lcom/batch/android/msgpack/core/buffer/a$e;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_0
    :try_start_2
    sget-object v4, Lcom/batch/android/msgpack/core/buffer/a;->f:Ljava/lang/Class;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    sget-object v0, Lcom/batch/android/msgpack/core/buffer/a$e;->c:Lcom/batch/android/msgpack/core/buffer/a$e;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    :catch_1
    :try_start_3
    sget-object v4, Lcom/batch/android/msgpack/core/buffer/a;->f:Ljava/lang/Class;

    filled-new-array {v1, v1}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    sget-object v0, Lcom/batch/android/msgpack/core/buffer/a$e;->d:Lcom/batch/android/msgpack/core/buffer/a$e;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_0
    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    :catch_2
    :try_start_4
    const-string v4, "java.nio.MemoryBlock"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v6, "wrapFromJni"

    filled-new-array {v1, v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object v6, Lcom/batch/android/msgpack/core/buffer/a;->f:Ljava/lang/Class;

    filled-new-array {v4, v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    sget-object v1, Lcom/batch/android/msgpack/core/buffer/a$e;->e:Lcom/batch/android/msgpack/core/buffer/a$e;

    :goto_1
    sput-object v4, Lcom/batch/android/msgpack/core/buffer/a;->e:Ljava/lang/reflect/Constructor;

    sput-object v1, Lcom/batch/android/msgpack/core/buffer/a;->g:Lcom/batch/android/msgpack/core/buffer/a$e;

    sput-object v0, Lcom/batch/android/msgpack/core/buffer/a;->h:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object v0, Lcom/batch/android/msgpack/core/buffer/a;->f:Ljava/lang/Class;

    const-string v1, "address"

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/batch/android/msgpack/core/buffer/a;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget v0, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->javaVersion:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    invoke-static {v3}, Lcom/batch/android/msgpack/core/buffer/a;->e(Ljava/nio/ByteBuffer;)V

    goto :goto_2

    :cond_0
    invoke-static {v3}, Lcom/batch/android/msgpack/core/buffer/a;->f(Ljava/nio/ByteBuffer;)V

    :goto_2
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Constructor of DirectByteBuffer is not found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    move-exception v0

    invoke-static {v0}, Lx1;->m(Ljava/lang/Throwable;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    .line 154
    invoke-static {p0}, Lcom/batch/android/msgpack/core/buffer/a;->c(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/nio/ByteBuffer;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 0

    .line 148
    invoke-static {p0, p1}, Lcom/batch/android/msgpack/core/buffer/a;->b(Ljava/nio/ByteBuffer;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(JIILjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/batch/android/msgpack/core/buffer/a$d;->a:[I

    sget-object v2, Lcom/batch/android/msgpack/core/buffer/a;->g:Lcom/batch/android/msgpack/core/buffer/a$e;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 p4, 0x2

    if-eq v1, p4, :cond_2

    const/4 p4, 0x3

    if-eq v1, p4, :cond_1

    const/4 p4, 0x4

    if-ne v1, p4, :cond_0

    sget-object p4, Lcom/batch/android/msgpack/core/buffer/a;->e:Ljava/lang/reflect/Constructor;

    sget-object v1, Lcom/batch/android/msgpack/core/buffer/a;->h:Ljava/lang/reflect/Method;

    int-to-long v2, p2

    add-long/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unexpected value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object p4, Lcom/batch/android/msgpack/core/buffer/a;->e:Ljava/lang/reflect/Constructor;

    long-to-int p0, p0

    add-int/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    return-object p0

    :cond_2
    sget-object p4, Lcom/batch/android/msgpack/core/buffer/a;->e:Ljava/lang/reflect/Constructor;

    int-to-long v1, p2

    add-long/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    return-object p0

    :cond_3
    sget-object v1, Lcom/batch/android/msgpack/core/buffer/a;->e:Ljava/lang/reflect/Constructor;

    int-to-long v2, p2

    add-long/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1, p4}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :goto_0
    invoke-static {p0}, Lx1;->m(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 2

    .line 149
    :try_start_0
    sget v0, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->javaVersion:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 150
    sget-object v0, Lcom/batch/android/msgpack/core/buffer/a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 151
    sget-object v0, Lcom/batch/android/msgpack/core/buffer/a;->c:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 152
    :cond_0
    sget-object v0, Lcom/batch/android/msgpack/core/buffer/a;->d:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->unsafe:Lsun/misc/Unsafe;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 153
    invoke-static {p0}, Lx1;->m(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Ljava/lang/Object;)J
    .locals 2

    .line 30
    :try_start_0
    sget-object v0, Lcom/batch/android/msgpack/core/buffer/a;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 31
    invoke-static {p0}, Lx1;->m(Ljava/lang/Throwable;)V

    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0

    :catch_1
    move-exception p0

    .line 32
    invoke-static {p0}, Lx1;->m(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static synthetic b(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-static {p0}, Lcom/batch/android/msgpack/core/buffer/a;->d(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/nio/ByteBuffer;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "clean"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    return-object p0

    :catch_1
    move-exception p0

    return-object p0

    :catch_2
    move-exception p0

    return-object p0
.end method

.method private static c(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "cleaner"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    return-object p0

    :catch_1
    move-exception p0

    return-object p0

    :catch_2
    move-exception p0

    return-object p0
.end method

.method public static c(Ljava/lang/Object;)Z
    .locals 1

    .line 25
    sget-object v0, Lcom/batch/android/msgpack/core/buffer/a;->f:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static d(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 4

    :try_start_0
    sget-object v0, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "invokeCleaner"

    const-class v3, Ljava/nio/ByteBuffer;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    return-object p0

    :catch_1
    move-exception p0

    return-object p0

    :catch_2
    move-exception p0

    return-object p0
.end method

.method private static e(Ljava/nio/ByteBuffer;)V
    .locals 2

    new-instance v0, Lcom/batch/android/msgpack/core/buffer/a$a;

    invoke-direct {v0, p0}, Lcom/batch/android/msgpack/core/buffer/a$a;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Throwable;

    if-nez v1, :cond_1

    check-cast v0, Ljava/lang/reflect/Method;

    sput-object v0, Lcom/batch/android/msgpack/core/buffer/a;->b:Ljava/lang/reflect/Method;

    new-instance v0, Lcom/batch/android/msgpack/core/buffer/a$b;

    invoke-direct {v0, p0}, Lcom/batch/android/msgpack/core/buffer/a$b;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Throwable;

    if-nez v0, :cond_0

    check-cast p0, Ljava/lang/reflect/Method;

    sput-object p0, Lcom/batch/android/msgpack/core/buffer/a;->c:Ljava/lang/reflect/Method;

    return-void

    :cond_0
    check-cast p0, Ljava/lang/Throwable;

    invoke-static {p0}, Lx1;->m(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lx1;->m(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static f(Ljava/nio/ByteBuffer;)V
    .locals 1

    new-instance v0, Lcom/batch/android/msgpack/core/buffer/a$c;

    invoke-direct {v0, p0}, Lcom/batch/android/msgpack/core/buffer/a$c;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Throwable;

    if-nez v0, :cond_0

    check-cast p0, Ljava/lang/reflect/Method;

    sput-object p0, Lcom/batch/android/msgpack/core/buffer/a;->d:Ljava/lang/reflect/Method;

    return-void

    :cond_0
    check-cast p0, Ljava/lang/Throwable;

    invoke-static {p0}, Lx1;->m(Ljava/lang/Throwable;)V

    return-void
.end method
