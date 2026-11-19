.class public final Lcom/google/android/gms/internal/gtm/zzhs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzdi;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzhs;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final varargs a(Lcom/google/android/gms/internal/gtm/zzbv;[Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    array-length v1, p2

    const/4 v2, 0x0

    if-lez v1, :cond_1

    aget-object p2, p2, v0

    sget-object v1, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    if-eq p2, v1, :cond_1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/gtm/zzkw;->c(Lcom/google/android/gms/internal/gtm/zzbv;Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzdj;->d(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzhs;->a:Landroid/content/Context;

    sget-object p1, Lcom/google/android/gms/internal/gtm/zzbf;->a:Ljava/lang/String;

    if-nez p1, :cond_4

    const-class p1, Lcom/google/android/gms/internal/gtm/zzbf;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/google/android/gms/internal/gtm/zzbf;->a:Ljava/lang/String;

    if-nez p2, :cond_3

    const-string p2, "gtm_install_referrer"

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string p2, "referrer"

    const-string v0, ""

    invoke-interface {p0, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/gtm/zzbf;->a:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    const-string p0, ""

    sput-object p0, Lcom/google/android/gms/internal/gtm/zzbf;->a:Ljava/lang/String;

    :cond_3
    :goto_1
    monitor-exit p1

    goto :goto_3

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_3
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbf;->a:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/gtm/zzbf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/gtm/zzkv;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_5
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    return-object p0
.end method
