.class public final Lcom/google/android/gms/internal/gtm/zzfs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzdi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs a(Lcom/google/android/gms/internal/gtm/zzbv;[Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;
    .locals 4

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    array-length v1, p2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, p0

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    const/4 v1, 0x3

    aget-object v1, p2, v1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/gtm/zzkw;->c(Lcom/google/android/gms/internal/gtm/zzbv;Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/gtm/zzkr;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzkr;

    iget-object v1, v1, Lcom/google/android/gms/internal/gtm/zzkr;->b:Ljava/util/ArrayList;

    const/4 v2, 0x2

    aget-object v2, p2, v2

    instance-of v3, v2, Lcom/google/android/gms/internal/gtm/zzkl;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzkl;

    iget-object v2, v2, Lcom/google/android/gms/internal/gtm/zzkl;->b:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/gtm/zzkw;->e(Lcom/google/android/gms/internal/gtm/zzbv;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/gtm/zzko;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/gtm/zzko;->e:Lcom/google/android/gms/internal/gtm/zzko;

    if-eq v2, v3, :cond_6

    iget-boolean v3, v2, Lcom/google/android/gms/internal/gtm/zzko;->c:Z

    if-eqz v3, :cond_3

    return-object v2

    :cond_3
    :goto_2
    aget-object v2, p2, p0

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/gtm/zzkw;->c(Lcom/google/android/gms/internal/gtm/zzbv;Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzdj;->g(Lcom/google/android/gms/internal/gtm/zzkk;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/gtm/zzkw;->e(Lcom/google/android/gms/internal/gtm/zzbv;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/gtm/zzko;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/gtm/zzko;->e:Lcom/google/android/gms/internal/gtm/zzko;

    if-ne v2, v3, :cond_4

    goto :goto_3

    :cond_4
    iget-boolean v3, v2, Lcom/google/android/gms/internal/gtm/zzko;->c:Z

    if-eqz v3, :cond_5

    return-object v2

    :cond_5
    aget-object v2, p2, v0

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/gtm/zzkw;->c(Lcom/google/android/gms/internal/gtm/zzbv;Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;

    goto :goto_2

    :cond_6
    :goto_3
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    return-object p0
.end method
