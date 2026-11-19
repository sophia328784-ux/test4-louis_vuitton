.class public final Lcom/google/android/gms/internal/gtm/zzfg;
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
    .locals 2

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move v1, p0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    array-length v1, p2

    if-ne v1, p0, :cond_1

    goto :goto_1

    :cond_1
    move p0, v0

    :goto_1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object p0, p2, v0

    instance-of p0, p0, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object p0, p2, v0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkv;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzkv;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/gtm/zzbv;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzkk;

    move-result-object p0

    instance-of p1, p0, Lcom/google/android/gms/internal/gtm/zzkt;

    const/4 p2, 0x0

    if-nez p1, :cond_4

    instance-of p1, p0, Lcom/google/android/gms/internal/gtm/zzko;

    if-eqz p1, :cond_3

    sget-object p1, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    if-eq p0, p1, :cond_3

    sget-object p1, Lcom/google/android/gms/internal/gtm/zzko;->g:Lcom/google/android/gms/internal/gtm/zzko;

    if-ne p0, p1, :cond_2

    goto :goto_2

    :cond_2
    const-string p0, "Illegal InternalType encountered in Get."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object p2

    :cond_3
    :goto_2
    return-object p0

    :cond_4
    const-string p0, "Illegal Statement type encountered in Get."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object p2
.end method
