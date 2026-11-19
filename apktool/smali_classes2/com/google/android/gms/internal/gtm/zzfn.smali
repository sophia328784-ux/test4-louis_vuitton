.class public final Lcom/google/android/gms/internal/gtm/zzfn;
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

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    if-gtz p0, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    goto :goto_1

    :cond_1
    aget-object p0, p2, p1

    :goto_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzko;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/gtm/zzko;-><init>(Lcom/google/android/gms/internal/gtm/zzkk;)V

    return-object p1
.end method
