.class public Lcom/batch/android/u0/c;
.super Lcom/batch/android/u0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/batch/android/u0/b<",
        "Lcom/batch/android/u0/c;",
        ">;"
    }
.end annotation


# instance fields
.field private g:J

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/batch/android/u0/c;)V
    .locals 2

    iget-object v0, p1, Lcom/batch/android/u0/b;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/batch/android/u0/b;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/batch/android/u0/c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p1, Lcom/batch/android/u0/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/batch/android/u0/b;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/batch/android/u0/b;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/batch/android/u0/b;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/batch/android/u0/b;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/batch/android/u0/b;->c:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/batch/android/u0/b;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/batch/android/u0/b;->f:Ljava/util/concurrent/ConcurrentMap;

    iget-object v0, p1, Lcom/batch/android/u0/b;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/batch/android/u0/b;->d:Ljava/util/List;

    iget-object v0, p1, Lcom/batch/android/u0/b;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/batch/android/u0/b;->e:Ljava/util/List;

    iget-object v0, p1, Lcom/batch/android/u0/c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v0, p0, Lcom/batch/android/u0/c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-wide v0, p1, Lcom/batch/android/u0/c;->g:J

    iput-wide v0, p0, Lcom/batch/android/u0/c;->g:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/batch/android/u0/b;-><init>(Ljava/lang/String;)V

    .line 56
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/batch/android/u0/c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    const-string p1, "observation"

    iput-object p1, p0, Lcom/batch/android/u0/b;->b:Ljava/lang/String;

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/batch/android/u0/b;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/batch/android/u0/c;->b(Ljava/util/List;)Lcom/batch/android/u0/c;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/util/List;)Lcom/batch/android/u0/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/batch/android/u0/c;"
        }
    .end annotation

    new-instance v0, Lcom/batch/android/u0/c;

    iget-object v1, p0, Lcom/batch/android/u0/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/batch/android/u0/c;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/batch/android/u0/b;->d:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/batch/android/u0/b;->a([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/batch/android/u0/c;

    iput-object p1, p0, Lcom/batch/android/u0/b;->e:Ljava/util/List;

    return-object p0
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/batch/android/u0/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/batch/android/u0/b;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public l()Z
    .locals 0

    iget-object p0, p0, Lcom/batch/android/u0/c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public m()V
    .locals 4

    iget-object v0, p0, Lcom/batch/android/u0/c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/batch/android/u0/c;->g:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/batch/android/u0/b;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/batch/android/u0/b;->k()V

    return-void
.end method

.method public n()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/batch/android/u0/c;->g:J

    iget-object p0, p0, Lcom/batch/android/u0/c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
