.class public final Lcom/google/android/gms/internal/gtm/zzfd;
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
    .locals 3

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 p1, 0x0

    :goto_0
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_2

    aget-object v0, p2, p1

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzdj;->d(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    aget-object v1, p2, v1

    instance-of v2, v1, Lcom/google/android/gms/internal/gtm/zzko;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzko;->g:Lcom/google/android/gms/internal/gtm/zzko;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "Illegal InternalType found in CreateObject."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_1
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzks;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/gtm/zzks;-><init>(Ljava/util/Map;)V

    return-object p1
.end method
