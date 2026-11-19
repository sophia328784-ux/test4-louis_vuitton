.class public abstract Lcom/google/android/gms/internal/measurement/zzaed;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzaed;->a:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzact;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/measurement/zzacs;-><init>([B)V

    :try_start_0
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzacs;->a(I)I
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzaeh; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Llc0;->u(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(II[BI)I
    .locals 2

    move v0, p1

    :goto_0
    add-int v1, p1, p3

    if-ge v0, v1, :cond_0

    mul-int/lit8 p0, p0, 0x1f

    aget-byte v1, p2, v0

    add-int/2addr p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method
