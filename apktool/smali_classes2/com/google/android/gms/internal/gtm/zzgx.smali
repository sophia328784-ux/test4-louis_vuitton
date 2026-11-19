.class public final Lcom/google/android/gms/internal/gtm/zzgx;
.super Lcom/google/android/gms/internal/gtm/zzdk;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/gtm/zzbr;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/gtm/zzbr;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzdk;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzgx;->a:Lcom/google/android/gms/internal/gtm/zzbr;

    return-void
.end method


# virtual methods
.method public final varargs b(Lcom/google/android/gms/internal/gtm/zzbv;[Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;
    .locals 0

    array-length p1, p2

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzgx;->a:Lcom/google/android/gms/internal/gtm/zzbr;

    invoke-interface {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->d0()Lcom/google/android/gms/internal/gtm/zzar;

    move-result-object p0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/gtm/zzar;->f:Z

    sget-object p0, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    return-object p0
.end method
