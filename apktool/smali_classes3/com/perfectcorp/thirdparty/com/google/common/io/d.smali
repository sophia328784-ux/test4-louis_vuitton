.class public final Lcom/perfectcorp/thirdparty/com/google/common/io/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/common/io/d$b;,
        Lcom/perfectcorp/thirdparty/com/google/common/io/d$a;,
        Lcom/perfectcorp/thirdparty/com/google/common/io/d$c;
    }
.end annotation


# static fields
.field public static final e:Lcom/perfectcorp/thirdparty/com/google/common/io/d$c;


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/com/google/common/io/d$c;

.field public final c:Ljava/util/ArrayDeque;

.field public d:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/io/d$b;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/io/d$b;->a:Lcom/perfectcorp/thirdparty/com/google/common/io/d$b;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/io/d$a;->a:Lcom/perfectcorp/thirdparty/com/google/common/io/d$a;

    :goto_0
    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/common/io/d;->e:Lcom/perfectcorp/thirdparty/com/google/common/io/d$c;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/io/d$c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/io/d;->c:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/io/d;->b:Lcom/perfectcorp/thirdparty/com/google/common/io/d$c;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/io/d;->d:Ljava/lang/Throwable;

    :goto_0
    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/io/d;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/perfectcorp/thirdparty/com/google/common/io/d;->b:Lcom/perfectcorp/thirdparty/com/google/common/io/d$c;

    invoke-interface {v3, v1, v0, v2}, Lcom/perfectcorp/thirdparty/com/google/common/io/d$c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/io/d;->d:Ljava/lang/Throwable;

    if-nez p0, :cond_6

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const-class p0, Ljava/io/IOException;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    instance-of p0, v0, Ljava/lang/RuntimeException;

    if-nez p0, :cond_4

    instance-of p0, v0, Ljava/lang/Error;

    if-nez p0, :cond_3

    invoke-static {v0}, Lmd;->h(Ljava/lang/Object;)V

    return-void

    :cond_3
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_4
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_5
    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_6
    :goto_1
    return-void
.end method
