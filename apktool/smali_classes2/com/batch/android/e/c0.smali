.class public Lcom/batch/android/e/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/e/c0$e;,
        Lcom/batch/android/e/c0$d;,
        Lcom/batch/android/e/c0$c;,
        Lcom/batch/android/e/c0$f;,
        Lcom/batch/android/e/c0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/batch/android/e/c0$e;

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Exception;

.field private d:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/batch/android/e/c0$f<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/batch/android/e/c0$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/batch/android/e/c0$e;->b:Lcom/batch/android/e/c0$e;

    iput-object v0, p0, Lcom/batch/android/e/c0;->a:Lcom/batch/android/e/c0$e;

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/batch/android/e/c0;->b:Ljava/lang/Object;

    .line 43
    iput-object v0, p0, Lcom/batch/android/e/c0;->c:Ljava/lang/Exception;

    .line 44
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/batch/android/e/c0;->d:Ljava/util/ArrayDeque;

    .line 45
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/batch/android/e/c0;->e:Ljava/util/ArrayDeque;

    return-void
.end method

.method public constructor <init>(Lcom/batch/android/e/c0$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/e/c0$c<",
            "TT;>;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lcom/batch/android/e/c0$e;->b:Lcom/batch/android/e/c0$e;

    iput-object v0, p0, Lcom/batch/android/e/c0;->a:Lcom/batch/android/e/c0$e;

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/batch/android/e/c0;->b:Ljava/lang/Object;

    .line 49
    iput-object v0, p0, Lcom/batch/android/e/c0;->c:Ljava/lang/Exception;

    .line 50
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/batch/android/e/c0;->d:Ljava/util/ArrayDeque;

    .line 51
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/batch/android/e/c0;->e:Ljava/util/ArrayDeque;

    .line 52
    :try_start_0
    invoke-interface {p1, p0}, Lcom/batch/android/e/c0$c;->a(Lcom/batch/android/e/c0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 53
    invoke-virtual {p0, p1}, Lcom/batch/android/e/c0;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Lcom/batch/android/e/c0$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/e/c0$d<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/batch/android/e/c0$e;->b:Lcom/batch/android/e/c0$e;

    iput-object v0, p0, Lcom/batch/android/e/c0;->a:Lcom/batch/android/e/c0$e;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/e/c0;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcom/batch/android/e/c0;->c:Ljava/lang/Exception;

    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/batch/android/e/c0;->d:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/batch/android/e/c0;->e:Ljava/util/ArrayDeque;

    :try_start_0
    invoke-interface {p1}, Lcom/batch/android/e/c0$d;->run()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1}, Lcom/batch/android/e/c0;->a(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/batch/android/e/c0;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public static b(Ljava/lang/Exception;)Lcom/batch/android/e/c0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lcom/batch/android/e/c0<",
            "TT;>;"
        }
    .end annotation

    .line 9
    new-instance v0, Lcom/batch/android/e/c0;

    invoke-direct {v0}, Lcom/batch/android/e/c0;-><init>()V

    .line 10
    invoke-virtual {v0, p0}, Lcom/batch/android/e/c0;->a(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Lcom/batch/android/e/c0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/batch/android/e/c0<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/batch/android/e/c0;

    invoke-direct {v0}, Lcom/batch/android/e/c0;-><init>()V

    invoke-virtual {v0, p0}, Lcom/batch/android/e/c0;->a(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/batch/android/e/c0$e;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/batch/android/e/c0;->a:Lcom/batch/android/e/c0$e;

    return-object p0
.end method

.method public declared-synchronized a(Lcom/batch/android/e/c0$b;)Lcom/batch/android/e/c0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/e/c0$b;",
            ")",
            "Lcom/batch/android/e/c0<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 49
    :try_start_0
    sget-object v0, Lcom/batch/android/e/c0$a;->a:[I

    iget-object v1, p0, Lcom/batch/android/e/c0;->a:Lcom/batch/android/e/c0$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    monitor-exit p0

    return-object p0

    .line 50
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/batch/android/e/c0;->c:Ljava/lang/Exception;

    invoke-interface {p1, v0}, Lcom/batch/android/e/c0$b;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 51
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/batch/android/e/c0;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p0

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Lcom/batch/android/e/c0$f;)Lcom/batch/android/e/c0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/e/c0$f<",
            "TT;>;)",
            "Lcom/batch/android/e/c0<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 46
    :try_start_0
    sget-object v0, Lcom/batch/android/e/c0$a;->a:[I

    iget-object v1, p0, Lcom/batch/android/e/c0;->a:Lcom/batch/android/e/c0$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    monitor-exit p0

    return-object p0

    .line 47
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/batch/android/e/c0;->b:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/batch/android/e/c0$f;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 48
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/batch/android/e/c0;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p0

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/Exception;)V
    .locals 2

    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/e/c0;->a:Lcom/batch/android/e/c0$e;

    sget-object v1, Lcom/batch/android/e/c0$e;->b:Lcom/batch/android/e/c0$e;

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 41
    :cond_0
    sget-object v0, Lcom/batch/android/e/c0$e;->d:Lcom/batch/android/e/c0$e;

    iput-object v0, p0, Lcom/batch/android/e/c0;->a:Lcom/batch/android/e/c0$e;

    .line 42
    iput-object p1, p0, Lcom/batch/android/e/c0;->c:Ljava/lang/Exception;

    .line 43
    :goto_0
    iget-object v0, p0, Lcom/batch/android/e/c0;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/batch/android/e/c0;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/c0$b;

    .line 45
    invoke-interface {v0, p1}, Lcom/batch/android/e/c0$b;->a(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/batch/android/e/c0;->a:Lcom/batch/android/e/c0$e;

    sget-object v1, Lcom/batch/android/e/c0$e;->b:Lcom/batch/android/e/c0$e;

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/batch/android/e/c0$e;->c:Lcom/batch/android/e/c0$e;

    iput-object v0, p0, Lcom/batch/android/e/c0;->a:Lcom/batch/android/e/c0$e;

    iput-object p1, p0, Lcom/batch/android/e/c0;->b:Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/batch/android/e/c0;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/batch/android/e/c0;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/c0$f;

    invoke-interface {v0, p1}, Lcom/batch/android/e/c0$f;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
