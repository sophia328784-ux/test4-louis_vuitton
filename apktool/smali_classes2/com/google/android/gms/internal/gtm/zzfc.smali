.class public final Lcom/google/android/gms/internal/gtm/zzfc;
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
    .locals 4

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    aget-object v1, p2, v0

    instance-of v2, v1, Lcom/google/android/gms/internal/gtm/zzko;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzko;->g:Lcom/google/android/gms/internal/gtm/zzko;

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    move v3, p1

    :cond_1
    :goto_1
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzkr;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/gtm/zzkr;-><init>(Ljava/util/List;)V

    return-object p1
.end method
