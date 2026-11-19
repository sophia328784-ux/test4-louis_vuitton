.class final Lcom/google/android/gms/internal/measurement/zzad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:I

.field public final synthetic c:Lcom/google/android/gms/internal/measurement/zzae;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzae;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzad;->c:Lcom/google/android/gms/internal/measurement/zzae;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzad;->b:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzad;->b:I

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzad;->c:Lcom/google/android/gms/internal/measurement/zzae;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzae;->o()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzad;->b:I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzad;->c:Lcom/google/android/gms/internal/measurement/zzae;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzae;->o()I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzad;->b:I

    if-ge v0, v2, :cond_0

    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzad;->b:I

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/zzae;->p(I)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x15

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Out of bounds index: "

    invoke-static {v3, p0, v0}, Ld21;->f(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lzy0;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
