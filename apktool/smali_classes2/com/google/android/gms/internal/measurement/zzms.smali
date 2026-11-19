.class final Lcom/google/android/gms/internal/measurement/zzms;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/measurement/zzacv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzmu;Lcom/google/android/gms/internal/measurement/zzacv;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzms;->b:Lcom/google/android/gms/internal/measurement/zzacv;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final read()I
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [B

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzms;->b:Lcom/google/android/gms/internal/measurement/zzacv;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzacv;->f(II[B)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    aget-byte p0, v1, v2

    return p0
.end method

.method public final read([BII)I
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzms;->b:Lcom/google/android/gms/internal/measurement/zzacv;

    invoke-virtual {p0, p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzacv;->f(II[B)I

    move-result p0

    return p0
.end method

.method public final skip(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    const p1, 0x7fffffff

    goto :goto_0

    :cond_1
    long-to-int p1, p1

    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzms;->b:Lcom/google/android/gms/internal/measurement/zzacv;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzacv;->g(I)V

    int-to-long p0, p1

    return-wide p0
.end method
