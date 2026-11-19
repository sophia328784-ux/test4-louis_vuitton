.class final Lcom/google/android/gms/internal/measurement/zzadb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzago;


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/zzada;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzada;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzadb;->a:Lcom/google/android/gms/internal/measurement/zzada;

    iput-object p0, p1, Lcom/google/android/gms/internal/measurement/zzada;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(ILjava/util/List;)V
    .locals 4

    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/zzaen;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzadb;->a:Lcom/google/android/gms/internal/measurement/zzada;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzaen;

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzaen;->f0()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzada;->m(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzada;->n(ILcom/google/android/gms/internal/measurement/zzacr;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzada;->m(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final b(ILjava/util/List;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzacr;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzadb;->a:Lcom/google/android/gms/internal/measurement/zzada;

    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/internal/measurement/zzada;->n(ILcom/google/android/gms/internal/measurement/zzacr;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(II)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzadb;->a:Lcom/google/android/gms/internal/measurement/zzada;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzada;->i(II)V

    return-void
.end method

.method public final d(IJ)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzadb;->a:Lcom/google/android/gms/internal/measurement/zzada;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzada;->j(IJ)V

    return-void
.end method

.method public final e(IJ)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzadb;->a:Lcom/google/android/gms/internal/measurement/zzada;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzada;->k(IJ)V

    return-void
.end method

.method public final f(FI)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzadb;->a:Lcom/google/android/gms/internal/measurement/zzada;

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/measurement/zzada;->i(II)V

    return-void
.end method

.method public final g(DI)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzadb;->a:Lcom/google/android/gms/internal/measurement/zzada;

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/gms/internal/measurement/zzada;->k(IJ)V

    return-void
.end method

.method public final h(II)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzadb;->a:Lcom/google/android/gms/internal/measurement/zzada;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzada;->g(II)V

    return-void
.end method

.method public final i(IJ)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzadb;->a:Lcom/google/android/gms/internal/measurement/zzada;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzada;->j(IJ)V

    return-void
.end method

.method public final j(II)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzadb;->a:Lcom/google/android/gms/internal/measurement/zzada;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzada;->g(II)V

    return-void
.end method

.method public final k(IJ)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzadb;->a:Lcom/google/android/gms/internal/measurement/zzada;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzada;->k(IJ)V

    return-void
.end method

.method public final l(II)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzadb;->a:Lcom/google/android/gms/internal/measurement/zzada;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzada;->i(II)V

    return-void
.end method

.method public final m(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzadb;->a:Lcom/google/android/gms/internal/measurement/zzada;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzada;->l(IZ)V

    return-void
.end method

.method public final n(ILcom/google/android/gms/internal/measurement/zzacr;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzadb;->a:Lcom/google/android/gms/internal/measurement/zzada;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzada;->n(ILcom/google/android/gms/internal/measurement/zzacr;)V

    return-void
.end method

.method public final o(II)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzadb;->a:Lcom/google/android/gms/internal/measurement/zzada;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzada;->h(II)V

    return-void
.end method

.method public final p(II)V
    .locals 1

    add-int v0, p2, p2

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p2, v0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzadb;->a:Lcom/google/android/gms/internal/measurement/zzada;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzada;->h(II)V

    return-void
.end method

.method public final q(IJ)V
    .locals 3

    add-long v0, p2, p2

    const/16 v2, 0x3f

    shr-long/2addr p2, v2

    xor-long/2addr p2, v0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzadb;->a:Lcom/google/android/gms/internal/measurement/zzada;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzada;->j(IJ)V

    return-void
.end method

.method public final r(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafp;)V
    .locals 2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzacb;

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzadb;->a:Lcom/google/android/gms/internal/measurement/zzada;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/measurement/zzada;->f(II)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/zzacb;->j(Lcom/google/android/gms/internal/measurement/zzafp;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/zzada;->v(I)V

    invoke-interface {p3, p2, p0}, Lcom/google/android/gms/internal/measurement/zzafp;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzadb;)V

    return-void
.end method

.method public final s(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafp;)V
    .locals 2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzacb;

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzadb;->a:Lcom/google/android/gms/internal/measurement/zzada;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/measurement/zzada;->f(II)V

    invoke-interface {p3, p2, p0}, Lcom/google/android/gms/internal/measurement/zzafp;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzadb;)V

    const/4 p0, 0x4

    invoke-virtual {v1, p1, p0}, Lcom/google/android/gms/internal/measurement/zzada;->f(II)V

    return-void
.end method

.method public final t(ILjava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/zzacr;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzadb;->a:Lcom/google/android/gms/internal/measurement/zzada;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzada;->r(ILcom/google/android/gms/internal/measurement/zzacr;)V

    return-void

    :cond_0
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzafc;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzada;->q(ILcom/google/android/gms/internal/measurement/zzafc;)V

    return-void
.end method
