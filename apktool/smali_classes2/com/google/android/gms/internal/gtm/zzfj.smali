.class public final Lcom/google/android/gms/internal/gtm/zzfj;
.super Lcom/google/android/gms/internal/gtm/zzdk;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/gtm/zzfj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzfj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzfj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzfj;->a:Lcom/google/android/gms/internal/gtm/zzfj;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzdk;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs b(Lcom/google/android/gms/internal/gtm/zzbv;[Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;
    .locals 6

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

    aget-object p1, p2, v1

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzkw;->f(Lcom/google/android/gms/internal/gtm/zzkk;)Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzkw;->f(Lcom/google/android/gms/internal/gtm/zzkk;)Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzdj;->d(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;

    move-result-object p2

    instance-of v2, p0, Lcom/google/android/gms/internal/gtm/zzkr;

    const-string v3, "length"

    if-eqz v2, :cond_2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p0, Lcom/google/android/gms/internal/gtm/zzkl;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzkl;-><init>(Ljava/lang/Boolean;)V

    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzdj;->b(Lcom/google/android/gms/internal/gtm/zzkk;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    cmpl-double p1, v2, v4

    if-nez p1, :cond_5

    double-to-int p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-ltz p1, :cond_5

    move-object v2, p0

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzkr;

    iget-object v2, v2, Lcom/google/android/gms/internal/gtm/zzkr;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_5

    new-instance p0, Lcom/google/android/gms/internal/gtm/zzkl;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzkl;-><init>(Ljava/lang/Boolean;)V

    return-object p0

    :cond_2
    instance-of v2, p0, Lcom/google/android/gms/internal/gtm/zzkv;

    if-eqz v2, :cond_5

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p0, Lcom/google/android/gms/internal/gtm/zzkl;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzkl;-><init>(Ljava/lang/Boolean;)V

    return-object p0

    :cond_3
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzdj;->b(Lcom/google/android/gms/internal/gtm/zzkk;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    cmpl-double p1, v0, v2

    if-nez p1, :cond_4

    double-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    if-ltz p1, :cond_4

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkv;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzkv;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ge p1, p0, :cond_4

    new-instance p0, Lcom/google/android/gms/internal/gtm/zzkl;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzkl;-><init>(Ljava/lang/Boolean;)V

    return-object p0

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/gtm/zzkl;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzkl;-><init>(Ljava/lang/Boolean;)V

    return-object p0

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzkl;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzkk;->a:Ljava/util/Map;

    if-eqz p0, :cond_6

    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    move v0, v1

    :cond_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/gtm/zzkl;-><init>(Ljava/lang/Boolean;)V

    return-object p1
.end method
