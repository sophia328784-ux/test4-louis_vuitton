.class final Lcom/google/android/gms/internal/measurement/zzar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:I

.field public final synthetic c:Lcom/google/android/gms/internal/measurement/zzas;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzas;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzar;->c:Lcom/google/android/gms/internal/measurement/zzas;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzar;->b:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzar;->c:Lcom/google/android/gms/internal/measurement/zzas;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzas;->b:Ljava/lang/String;

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzar;->b:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzar;->c:Lcom/google/android/gms/internal/measurement/zzas;

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzas;->b:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzar;->b:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzas;

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzar;->b:I

    iget-object p0, v0, Lcom/google/android/gms/internal/measurement/zzas;->b:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    return-object v3

    :cond_0
    invoke-static {}, Lb21;->x()V

    const/4 p0, 0x0

    return-object p0
.end method
