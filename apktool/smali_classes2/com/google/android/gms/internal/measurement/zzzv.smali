.class final Lcom/google/android/gms/internal/measurement/zzzv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:I

.field public final synthetic c:Lcom/google/android/gms/internal/measurement/zzzw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzzw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzv;->c:Lcom/google/android/gms/internal/measurement/zzzw;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzzv;->b:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzv;->c:Lcom/google/android/gms/internal/measurement/zzzw;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzzw;->b:Lcom/google/android/gms/internal/measurement/zzzy;

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzzv;->b:I

    iget v0, v0, Lcom/google/android/gms/internal/measurement/zzzy;->e:I

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzv;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzzv;->b:I

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzzv;->c:Lcom/google/android/gms/internal/measurement/zzzw;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzzw;->b:Lcom/google/android/gms/internal/measurement/zzzy;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzy;->d:[I

    aget v0, v1, v0

    and-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzzy;->d(I)Lcom/google/android/gms/internal/measurement/zzyl;

    move-result-object p0

    return-object p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
