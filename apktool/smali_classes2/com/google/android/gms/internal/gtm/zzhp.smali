.class public final Lcom/google/android/gms/internal/gtm/zzhp;
.super Lcom/google/android/gms/internal/gtm/zzdk;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/gtm/zzbr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzbr;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzdk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzhp;->a:Lcom/google/android/gms/internal/gtm/zzbr;

    return-void
.end method


# virtual methods
.method public final varargs b(Lcom/google/android/gms/internal/gtm/zzbv;[Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;
    .locals 0

    array-length p1, p2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzhp;->a:Lcom/google/android/gms/internal/gtm/zzbr;

    invoke-interface {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->d0()Lcom/google/android/gms/internal/gtm/zzar;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzar;->a:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzkw;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzkk;

    move-result-object p0

    return-object p0
.end method
