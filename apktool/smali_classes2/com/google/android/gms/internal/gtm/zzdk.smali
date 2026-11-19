.class public abstract Lcom/google/android/gms/internal/gtm/zzdk;
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
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    array-length v2, p2

    new-array v2, v2, [Lcom/google/android/gms/internal/gtm/zzkk;

    move v3, v0

    :goto_1
    array-length v4, p2

    if-ge v3, v4, :cond_6

    aget-object v4, p2, v3

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_2

    :cond_1
    move v4, v0

    :goto_2
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object v4, p2, v3

    sget-object v5, Lcom/google/android/gms/internal/gtm/zzko;->e:Lcom/google/android/gms/internal/gtm/zzko;

    if-eq v4, v5, :cond_2

    move v4, v1

    goto :goto_3

    :cond_2
    move v4, v0

    :goto_3
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object v4, p2, v3

    sget-object v6, Lcom/google/android/gms/internal/gtm/zzko;->f:Lcom/google/android/gms/internal/gtm/zzko;

    if-eq v4, v6, :cond_3

    move v4, v1

    goto :goto_4

    :cond_3
    move v4, v0

    :goto_4
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object v4, p2, v3

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/gtm/zzkw;->c(Lcom/google/android/gms/internal/gtm/zzbv;Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;

    move-result-object v4

    aput-object v4, v2, v3

    if-eq v4, v5, :cond_4

    move v4, v1

    goto :goto_5

    :cond_4
    move v4, v0

    :goto_5
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object v4, v2, v3

    if-eq v4, v6, :cond_5

    move v4, v1

    goto :goto_6

    :cond_5
    move v4, v0

    :goto_6
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/gtm/zzdk;->b(Lcom/google/android/gms/internal/gtm/zzbv;[Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;

    move-result-object p0

    if-eqz p0, :cond_7

    move v0, v1

    :cond_7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Z)V

    return-object p0
.end method

.method public varargs abstract b(Lcom/google/android/gms/internal/gtm/zzbv;[Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;
.end method
