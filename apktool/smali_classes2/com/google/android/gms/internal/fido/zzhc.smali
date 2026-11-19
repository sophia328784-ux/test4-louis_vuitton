.class public abstract Lcom/google/android/gms/internal/fido/zzhc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lcom/google/android/gms/internal/fido/zzhc;->a:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    new-instance v1, Lcom/google/android/gms/internal/fido/zzgz;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    :try_start_0
    iget v2, v1, Lcom/google/android/gms/internal/fido/zzgz;->a:I

    if-lez v2, :cond_0

    iput v2, v1, Lcom/google/android/gms/internal/fido/zzgz;->a:I

    return-void

    :cond_0
    iput v0, v1, Lcom/google/android/gms/internal/fido/zzgz;->a:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/fido/zzhd; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Llc0;->u(Ljava/lang/Throwable;)V

    return-void
.end method
