.class final Lcom/google/android/gms/internal/measurement/zzaft;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:I

.field public c:Z

.field public d:Ljava/util/Iterator;

.field public final synthetic e:Lcom/google/android/gms/internal/measurement/zzafv;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzafv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzaft;->e:Lcom/google/android/gms/internal/measurement/zzafv;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzaft;->b:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaft;->d:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaft;->e:Lcom/google/android/gms/internal/measurement/zzafv;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzafv;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaft;->d:Ljava/util/Iterator;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzaft;->d:Ljava/util/Iterator;

    return-object p0
.end method

.method public final hasNext()Z
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzaft;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzaft;->e:Lcom/google/android/gms/internal/measurement/zzafv;

    iget v3, v2, Lcom/google/android/gms/internal/measurement/zzafv;->c:I

    if-lt v0, v3, :cond_1

    iget-object v0, v2, Lcom/google/android/gms/internal/measurement/zzafv;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzaft;->a()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    return v1
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzaft;->c:Z

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzaft;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzaft;->b:I

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaft;->e:Lcom/google/android/gms/internal/measurement/zzafv;

    iget v2, v0, Lcom/google/android/gms/internal/measurement/zzafv;->c:I

    if-ge v1, v2, :cond_0

    iget-object p0, v0, Lcom/google/android/gms/internal/measurement/zzafv;->b:[Ljava/lang/Object;

    aget-object p0, p0, v1

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzafs;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzaft;->a()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    return-object p0
.end method

.method public final remove()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzaft;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzaft;->c:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaft;->e:Lcom/google/android/gms/internal/measurement/zzafv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzafv;->g()V

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzaft;->b:I

    iget v2, v0, Lcom/google/android/gms/internal/measurement/zzafv;->c:I

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzaft;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzafv;->e(I)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzaft;->a()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_1
    const-string p0, "remove() was called before next()"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method
