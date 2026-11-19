.class public final Lcom/google/android/gms/internal/gtm/zzft;
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
    .locals 2

    array-length p0, p2

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, p1, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object p0, p2, v0

    instance-of p1, p0, Lcom/google/android/gms/internal/gtm/zzko;

    aget-object p2, p2, v1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    if-eq p0, p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/gtm/zzko;->g:Lcom/google/android/gms/internal/gtm/zzko;

    if-ne p0, p1, :cond_2

    :cond_1
    instance-of p1, p2, Lcom/google/android/gms/internal/gtm/zzko;

    if-eqz p1, :cond_3

    sget-object p1, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    if-eq p2, p1, :cond_3

    sget-object p1, Lcom/google/android/gms/internal/gtm/zzko;->g:Lcom/google/android/gms/internal/gtm/zzko;

    if-ne p2, p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "Illegal InternalType passed to Add."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_3
    :goto_1
    instance-of p1, p0, Lcom/google/android/gms/internal/gtm/zzks;

    if-nez p1, :cond_4

    instance-of p1, p0, Lcom/google/android/gms/internal/gtm/zzkr;

    if-nez p1, :cond_4

    instance-of p1, p0, Lcom/google/android/gms/internal/gtm/zzkn;

    if-eqz p1, :cond_5

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzdj;->d(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/gtm/zzkv;-><init>(Ljava/lang/String;)V

    move-object p0, p1

    :cond_5
    instance-of p1, p2, Lcom/google/android/gms/internal/gtm/zzks;

    if-nez p1, :cond_6

    instance-of p1, p2, Lcom/google/android/gms/internal/gtm/zzkr;

    if-nez p1, :cond_6

    instance-of p1, p2, Lcom/google/android/gms/internal/gtm/zzkn;

    if-eqz p1, :cond_7

    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzdj;->d(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzkv;-><init>(Ljava/lang/String;)V

    move-object p2, p1

    :cond_7
    instance-of p1, p0, Lcom/google/android/gms/internal/gtm/zzkv;

    if-nez p1, :cond_9

    instance-of p1, p2, Lcom/google/android/gms/internal/gtm/zzkv;

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzkm;

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/gtm/zzdj;->c(Lcom/google/android/gms/internal/gtm/zzkk;Lcom/google/android/gms/internal/gtm/zzkk;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/gtm/zzkm;-><init>(Ljava/lang/Double;)V

    return-object p1

    :cond_9
    :goto_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzdj;->d(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzdj;->d(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/gtm/zzkv;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
