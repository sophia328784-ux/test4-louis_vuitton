.class final Lcom/google/android/gms/internal/gtm/zzeb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/gtm/zzkn;

.field public final synthetic c:Lcom/google/android/gms/internal/gtm/zzbv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzkn;Lcom/google/android/gms/internal/gtm/zzbv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzeb;->b:Lcom/google/android/gms/internal/gtm/zzkn;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzeb;->c:Lcom/google/android/gms/internal/gtm/zzbv;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzkk;

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzkk;

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    if-nez p2, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzeb;->b:Lcom/google/android/gms/internal/gtm/zzkn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzkn;->b:Lcom/google/android/gms/internal/gtm/zzdi;

    filled-new-array {p1, p2}, [Lcom/google/android/gms/internal/gtm/zzkk;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzeb;->c:Lcom/google/android/gms/internal/gtm/zzbv;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/gtm/zzdi;->a(Lcom/google/android/gms/internal/gtm/zzbv;[Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;

    move-result-object p0

    instance-of p1, p0, Lcom/google/android/gms/internal/gtm/zzkm;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Z)V

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkm;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzkm;->b:Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method
