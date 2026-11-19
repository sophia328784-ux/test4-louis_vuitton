.class public final Lcom/google/android/gms/internal/gtm/zzfa;
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
    .locals 2

    array-length p0, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object p0, p2, v0

    instance-of p0, p0, Lcom/google/android/gms/internal/gtm/zzkr;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object p0, p2, v0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkr;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzkr;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzkk;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/gtm/zzkw;->c(Lcom/google/android/gms/internal/gtm/zzbv;Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;

    move-result-object p2

    instance-of v0, p2, Lcom/google/android/gms/internal/gtm/zzko;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzko;->e:Lcom/google/android/gms/internal/gtm/zzko;

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzko;->f:Lcom/google/android/gms/internal/gtm/zzko;

    if-eq p2, v0, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzko;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/gtm/zzko;->c:Z

    if-eqz v0, :cond_1

    :cond_2
    return-object p2

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    return-object p0
.end method
