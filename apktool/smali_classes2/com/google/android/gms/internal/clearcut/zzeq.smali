.class final Lcom/google/android/gms/internal/clearcut/zzeq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:I

.field public c:Z

.field public d:Ljava/util/Iterator;

.field public final synthetic e:Lcom/google/android/gms/internal/clearcut/zzei;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/clearcut/zzei;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzeq;->e:Lcom/google/android/gms/internal/clearcut/zzei;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/zzeq;->b:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzeq;->d:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzeq;->e:Lcom/google/android/gms/internal/clearcut/zzei;

    iget-object v0, v0, Lcom/google/android/gms/internal/clearcut/zzei;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzeq;->d:Ljava/util/Iterator;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzeq;->d:Ljava/util/Iterator;

    return-object p0
.end method

.method public final hasNext()Z
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzeq;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzeq;->e:Lcom/google/android/gms/internal/clearcut/zzei;

    iget-object v3, v2, Lcom/google/android/gms/internal/clearcut/zzei;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    iget-object v0, v2, Lcom/google/android/gms/internal/clearcut/zzei;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/zzeq;->a()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/zzeq;->c:Z

    iget v1, p0, Lcom/google/android/gms/internal/clearcut/zzeq;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/clearcut/zzeq;->b:I

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzeq;->e:Lcom/google/android/gms/internal/clearcut/zzei;

    iget-object v2, v0, Lcom/google/android/gms/internal/clearcut/zzei;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/clearcut/zzei;->c:Ljava/util/List;

    iget p0, p0, Lcom/google/android/gms/internal/clearcut/zzeq;->b:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Ljava/util/Map$Entry;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/zzeq;->a()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method

.method public final remove()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/zzeq;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/zzeq;->c:Z

    sget v0, Lcom/google/android/gms/internal/clearcut/zzei;->h:I

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzeq;->e:Lcom/google/android/gms/internal/clearcut/zzei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzei;->g()V

    iget v1, p0, Lcom/google/android/gms/internal/clearcut/zzeq;->b:I

    iget-object v2, v0, Lcom/google/android/gms/internal/clearcut/zzei;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/clearcut/zzeq;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/clearcut/zzeq;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/clearcut/zzei;->e(I)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/zzeq;->a()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_1
    const-string p0, "remove() was called before next()"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method
