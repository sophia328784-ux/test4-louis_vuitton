.class public final Lcom/google/android/gms/internal/gtm/zzha;
.super Lcom/google/android/gms/internal/gtm/zzdk;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/gtm/zzbr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzbr;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzdk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzha;->a:Lcom/google/android/gms/internal/gtm/zzbr;

    return-void
.end method


# virtual methods
.method public final varargs b(Lcom/google/android/gms/internal/gtm/zzbv;[Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;
    .locals 4

    array-length p1, p2

    const-string v0, ""

    if-eqz p1, :cond_7

    const/4 v1, 0x0

    aget-object v2, p2, v1

    sget-object v3, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzha;->a:Lcom/google/android/gms/internal/gtm/zzbr;

    invoke-interface {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->d0()Lcom/google/android/gms/internal/gtm/zzar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzar;->c()Ljava/util/Map;

    move-result-object p0

    const-string v2, "_ldl"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    new-instance p0, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzkv;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzkw;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzkk;

    move-result-object p0

    instance-of v2, p0, Lcom/google/android/gms/internal/gtm/zzkv;

    if-nez v2, :cond_2

    new-instance p0, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzkv;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_2
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkv;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzkv;->b:Ljava/lang/String;

    const-string v2, "conv"

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/gtm/zzbf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aget-object v1, p2, v1

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzdj;->d(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance p0, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzkv;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le p1, v2, :cond_5

    aget-object p1, p2, v2

    if-ne p1, v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzdj;->d(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    :goto_0
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/gtm/zzbf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/gtm/zzkv;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_6
    new-instance p0, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzkv;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_7
    :goto_1
    new-instance p0, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzkv;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
