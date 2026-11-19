.class public final Lcom/google/android/gms/internal/gtm/zzib;
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
    .locals 7

    array-length p0, p2

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-lt p0, v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object p1, p2, p1

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    if-eq p1, v2, :cond_8

    aget-object v3, p2, v0

    if-ne v3, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzdj;->d(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;

    move-result-object p1

    aget-object v3, p2, v0

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzdj;->d(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x40

    if-le p0, v1, :cond_2

    aget-object v1, p2, v1

    if-eq v1, v2, :cond_2

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzdj;->g(Lcom/google/android/gms/internal/gtm/zzkk;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v4, 0x42

    :cond_2
    const/4 v1, 0x3

    if-le p0, v1, :cond_5

    aget-object p0, p2, v1

    if-eq p0, v2, :cond_5

    instance-of p2, p0, Lcom/google/android/gms/internal/gtm/zzkm;

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzdj;->a(Lcom/google/android/gms/internal/gtm/zzkk;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-nez p0, :cond_8

    const-wide/16 v5, 0x0

    cmpg-double p0, v0, v5

    if-gez p0, :cond_4

    goto :goto_1

    :cond_4
    double-to-int v0, v0

    :cond_5
    :try_start_0
    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result p1

    if-lt p1, v0, :cond_6

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    :cond_6
    if-nez p2, :cond_7

    goto :goto_1

    :cond_7
    new-instance p0, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/gtm/zzkv;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    return-object p0

    :cond_8
    :goto_1
    return-object v2
.end method
