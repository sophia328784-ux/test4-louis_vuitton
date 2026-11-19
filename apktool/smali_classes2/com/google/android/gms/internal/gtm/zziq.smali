.class public final Lcom/google/android/gms/internal/gtm/zziq;
.super Lcom/google/android/gms/internal/gtm/zzdk;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/tagmanager/zzq;

.field public final b:Lcom/google/android/gms/internal/gtm/zzbr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tagmanager/zzq;Lcom/google/android/gms/internal/gtm/zzbr;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzdk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zziq;->a:Lcom/google/android/gms/tagmanager/zzq;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zziq;->b:Lcom/google/android/gms/internal/gtm/zzbr;

    return-void
.end method


# virtual methods
.method public final varargs b(Lcom/google/android/gms/internal/gtm/zzbv;[Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;
    .locals 9

    array-length p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    move p1, v2

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object v2, p2, v0

    instance-of v2, v2, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    if-le p1, v1, :cond_2

    aget-object p1, p2, v1

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    :goto_1
    sget-object v2, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    if-eq p1, v2, :cond_4

    instance-of v3, p1, Lcom/google/android/gms/internal/gtm/zzks;

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v0

    :cond_4
    :goto_2
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zziq;->b:Lcom/google/android/gms/internal/gtm/zzbr;

    invoke-interface {v1}, Lcom/google/android/gms/internal/gtm/zzbr;->d0()Lcom/google/android/gms/internal/gtm/zzar;

    move-result-object v1

    aget-object p2, p2, v0

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzkv;

    iget-object v5, p2, Lcom/google/android/gms/internal/gtm/zzkv;->b:Ljava/lang/String;

    if-eq p1, v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzks;

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzkk;->a:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzkw;->a(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object p1

    :goto_3
    move-object v6, p1

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    goto :goto_3

    :goto_4
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zziq;->a:Lcom/google/android/gms/tagmanager/zzq;

    iget-object v4, v1, Lcom/google/android/gms/internal/gtm/zzar;->d:Ljava/lang/String;

    iget-object p0, v1, Lcom/google/android/gms/internal/gtm/zzar;->c:Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/tagmanager/zzq;->J(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Error calling measurement proxy:"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbg;->a()V

    :goto_5
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    return-object p0
.end method
