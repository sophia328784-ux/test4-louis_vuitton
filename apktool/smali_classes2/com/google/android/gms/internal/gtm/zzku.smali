.class final Lcom/google/android/gms/internal/gtm/zzku;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:I

.field public final synthetic c:Lcom/google/android/gms/internal/gtm/zzkv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzkv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzku;->c:Lcom/google/android/gms/internal/gtm/zzkv;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzku;->b:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzku;->b:I

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzku;->c:Lcom/google/android/gms/internal/gtm/zzkv;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzkv;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzku;->b:I

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzku;->c:Lcom/google/android/gms/internal/gtm/zzkv;

    iget-object v1, v1, Lcom/google/android/gms/internal/gtm/zzkv;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzkm;

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzku;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/gtm/zzku;->b:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzkm;-><init>(Ljava/lang/Double;)V

    return-object v0

    :cond_0
    invoke-static {}, Lb21;->x()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
