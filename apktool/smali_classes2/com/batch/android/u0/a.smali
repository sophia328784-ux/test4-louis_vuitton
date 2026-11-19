.class public Lcom/batch/android/u0/a;
.super Lcom/batch/android/u0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/batch/android/u0/b<",
        "Lcom/batch/android/u0/a;",
        ">;"
    }
.end annotation


# instance fields
.field private g:F


# direct methods
.method public constructor <init>(Lcom/batch/android/u0/a;)V
    .locals 2

    iget-object v0, p1, Lcom/batch/android/u0/b;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/batch/android/u0/b;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/batch/android/u0/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/batch/android/u0/b;->b:Ljava/lang/String;

    iget v0, p1, Lcom/batch/android/u0/a;->g:F

    iput v0, p0, Lcom/batch/android/u0/a;->g:F

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

    iget-object p1, p1, Lcom/batch/android/u0/b;->e:Ljava/util/List;

    iput-object p1, p0, Lcom/batch/android/u0/b;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/batch/android/u0/b;-><init>(Ljava/lang/String;)V

    .line 41
    const-string p1, "counter"

    iput-object p1, p0, Lcom/batch/android/u0/b;->b:Ljava/lang/String;

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/batch/android/u0/b;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/batch/android/u0/a;->b(Ljava/util/List;)Lcom/batch/android/u0/a;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/util/List;)Lcom/batch/android/u0/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/batch/android/u0/a;"
        }
    .end annotation

    new-instance v0, Lcom/batch/android/u0/a;

    iget-object v1, p0, Lcom/batch/android/u0/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/batch/android/u0/a;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/batch/android/u0/b;->d:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/batch/android/u0/b;->a([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/batch/android/u0/a;

    iput-object p1, p0, Lcom/batch/android/u0/b;->e:Ljava/util/List;

    return-object p0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/batch/android/u0/a;->g:F

    iget-object v0, p0, Lcom/batch/android/u0/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/batch/android/u0/b;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public l()V
    .locals 2

    iget v0, p0, Lcom/batch/android/u0/a;->g:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/batch/android/u0/a;->g:F

    iget-object v0, p0, Lcom/batch/android/u0/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/batch/android/u0/b;->c:Ljava/util/List;

    iget v1, p0, Lcom/batch/android/u0/a;->g:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/batch/android/u0/b;->k()V

    return-void
.end method
