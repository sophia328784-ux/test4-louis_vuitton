.class public final Lcom/google/android/gms/internal/gtm/zzff;
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
    .locals 3

    array-length p0, p2

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, v0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object p0, p2, v2

    instance-of p0, p0, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object p0, p2, v2

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkv;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzkv;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/gtm/zzbv;->e(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object v0, p2, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    const/4 v1, 0x2

    aget-object p2, p2, v1

    instance-of v1, p2, Lcom/google/android/gms/internal/gtm/zzkr;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzkr;

    iget-object p2, p2, Lcom/google/android/gms/internal/gtm/zzkr;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzkk;->e()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzkk;

    invoke-virtual {p1, v1, p0}, Lcom/google/android/gms/internal/gtm/zzbv;->d(Lcom/google/android/gms/internal/gtm/zzkk;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/gtm/zzkw;->e(Lcom/google/android/gms/internal/gtm/zzbv;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/gtm/zzko;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzko;->e:Lcom/google/android/gms/internal/gtm/zzko;

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v2, v1, Lcom/google/android/gms/internal/gtm/zzko;->c:Z

    if-eqz v2, :cond_1

    return-object v1

    :cond_3
    :goto_1
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    return-object p0
.end method
