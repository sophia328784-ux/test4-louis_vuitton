.class public Lcom/batch/android/b1/e;
.super Lcom/batch/android/b1/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/batch/android/b1/d<",
        "Ljava/util/Collection<",
        "Lcom/batch/android/u0/b<",
        "*>;>;>;"
    }
.end annotation


# instance fields
.field private final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/batch/android/u0/b<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/batch/android/u0/b<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/batch/android/b1/d;-><init>()V

    iput-object p1, p0, Lcom/batch/android/b1/e;->b:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/batch/android/x0/h;->a()Lcom/batch/android/x0/b;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/b1/e;->b:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/batch/android/x0/j;->d(I)Lcom/batch/android/x0/j;

    :try_start_0
    iget-object p0, p0, Lcom/batch/android/b1/e;->b:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/batch/android/u0/b;

    invoke-virtual {v1, v0}, Lcom/batch/android/u0/b;->a(Lcom/batch/android/x0/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/batch/android/x0/j;->close()V

    invoke-virtual {v0}, Lcom/batch/android/x0/b;->i()[B

    move-result-object p0

    return-object p0

    :goto_1
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {v0}, Lcom/batch/android/x0/j;->close()V

    throw p0
.end method

.method public b()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/batch/android/u0/b<",
            "*>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/batch/android/b1/e;->b:Ljava/util/Collection;

    return-object p0
.end method

.method public bridge synthetic h()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/b1/e;->b()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/batch/android/b1/e;->b:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    return p0
.end method
