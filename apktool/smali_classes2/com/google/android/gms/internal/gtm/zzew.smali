.class public final Lcom/google/android/gms/internal/gtm/zzew;
.super Lcom/google/android/gms/internal/gtm/zzdk;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzdk;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs b(Lcom/google/android/gms/internal/gtm/zzbv;[Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;
    .locals 1

    array-length p0, p2

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object p0, p2, p1

    instance-of p0, p0, Lcom/google/android/gms/internal/gtm/zzkt;

    xor-int/2addr p0, v0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object p0, p2, p1

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzkw;->f(Lcom/google/android/gms/internal/gtm/zzkk;)Z

    move-result p0

    xor-int/2addr p0, v0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object p0, p2, p1

    sget-object p1, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    if-ne p0, p1, :cond_1

    const-string p0, "undefined"

    goto :goto_1

    :cond_1
    instance-of p1, p0, Lcom/google/android/gms/internal/gtm/zzkl;

    if-eqz p1, :cond_2

    const-string p0, "boolean"

    goto :goto_1

    :cond_2
    instance-of p1, p0, Lcom/google/android/gms/internal/gtm/zzkm;

    if-eqz p1, :cond_3

    const-string p0, "number"

    goto :goto_1

    :cond_3
    instance-of p1, p0, Lcom/google/android/gms/internal/gtm/zzkv;

    if-eqz p1, :cond_4

    const-string p0, "string"

    goto :goto_1

    :cond_4
    instance-of p0, p0, Lcom/google/android/gms/internal/gtm/zzkn;

    if-eqz p0, :cond_5

    const-string p0, "function"

    goto :goto_1

    :cond_5
    const-string p0, "object"

    :goto_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/gtm/zzkv;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
