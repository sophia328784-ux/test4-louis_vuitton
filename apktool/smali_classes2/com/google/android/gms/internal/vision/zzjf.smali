.class public abstract Lcom/google/android/gms/internal/vision/zzjf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/vision/zzjf;->a:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lcom/google/android/gms/internal/vision/zzjf;->b:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    new-instance v1, Lcom/google/android/gms/internal/vision/zzih;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const v2, 0x7fffffff

    iput v2, v1, Lcom/google/android/gms/internal/vision/zzih;->c:I

    iput v0, v1, Lcom/google/android/gms/internal/vision/zzih;->a:I

    :try_start_0
    iput v0, v1, Lcom/google/android/gms/internal/vision/zzih;->c:I

    iget v0, v1, Lcom/google/android/gms/internal/vision/zzih;->a:I

    iget v2, v1, Lcom/google/android/gms/internal/vision/zzih;->b:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/google/android/gms/internal/vision/zzih;->a:I

    iget v2, v1, Lcom/google/android/gms/internal/vision/zzih;->c:I

    if-le v0, v2, :cond_0

    sub-int v2, v0, v2

    iput v2, v1, Lcom/google/android/gms/internal/vision/zzih;->b:I

    sub-int/2addr v0, v2

    iput v0, v1, Lcom/google/android/gms/internal/vision/zzih;->a:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, v1, Lcom/google/android/gms/internal/vision/zzih;->b:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/vision/zzjk; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Llc0;->u(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzkk;
    .locals 1

    check-cast p0, Lcom/google/android/gms/internal/vision/zzkk;

    invoke-interface {p0}, Lcom/google/android/gms/internal/vision/zzkk;->d()Lcom/google/android/gms/internal/vision/zzjb$zzb;

    move-result-object p0

    check-cast p1, Lcom/google/android/gms/internal/vision/zzkk;

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzjb$zzb;->b:Lcom/google/android/gms/internal/vision/zzjb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/vision/zzhf;

    check-cast p1, Lcom/google/android/gms/internal/vision/zzjb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzjb$zzb;->g(Lcom/google/android/gms/internal/vision/zzjb;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzjb$zzb;->j()Lcom/google/android/gms/internal/vision/zzjb;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
