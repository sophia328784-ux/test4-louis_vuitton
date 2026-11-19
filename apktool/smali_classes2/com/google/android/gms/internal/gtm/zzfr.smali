.class public final Lcom/google/android/gms/internal/gtm/zzfr;
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
    .locals 3

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

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, p0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    :goto_2
    if-ge p0, v1, :cond_2

    aget-object v0, p2, p0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    instance-of v2, v0, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzkv;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzkv;->b:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/gtm/zzbv;->b(Lcom/google/android/gms/internal/gtm/zzkk;Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    return-object p0
.end method
