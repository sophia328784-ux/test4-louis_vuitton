.class abstract Lcom/google/android/gms/measurement/internal/zzos;
.super Lcom/google/android/gms/measurement/internal/zzol;
.source "SourceFile"


# instance fields
.field public c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzpg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzol;-><init>(Lcom/google/android/gms/measurement/internal/zzpg;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzol;->b:Lcom/google/android/gms/measurement/internal/zzpg;

    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->r:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->r:I

    return-void
.end method


# virtual methods
.method public final h()V
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/measurement/internal/zzos;->c:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Not initialized"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public final i()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzos;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzol;->b:Lcom/google/android/gms/measurement/internal/zzpg;

    iget v1, v0, Lcom/google/android/gms/measurement/internal/zzpg;->s:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/measurement/internal/zzpg;->s:I

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzos;->c:Z

    return-void

    :cond_0
    const-string p0, "Can\'t initialize twice"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public abstract j()V
.end method
