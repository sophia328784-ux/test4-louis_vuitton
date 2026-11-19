.class public final Lcom/google/android/gms/internal/gtm/zzia;
.super Lcom/google/android/gms/internal/gtm/zzdk;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/gtm/zzkm;

.field public static final b:Lcom/google/android/gms/internal/gtm/zzkm;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzkm;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzkm;-><init>(Ljava/lang/Double;)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzia;->a:Lcom/google/android/gms/internal/gtm/zzkm;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzkm;

    const-wide v1, 0x41dfffffffc00000L    # 2.147483647E9

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzkm;-><init>(Ljava/lang/Double;)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzia;->b:Lcom/google/android/gms/internal/gtm/zzkm;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzdk;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs b(Lcom/google/android/gms/internal/gtm/zzbv;[Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;
    .locals 6

    array-length p0, p2

    if-lez p0, :cond_0

    const/4 p1, 0x0

    aget-object p1, p2, p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzia;->a:Lcom/google/android/gms/internal/gtm/zzkm;

    :goto_0
    const/4 v0, 0x1

    if-le p0, v0, :cond_1

    aget-object p0, p2, v0

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzia;->b:Lcom/google/android/gms/internal/gtm/zzkm;

    :goto_1
    instance-of p2, p1, Lcom/google/android/gms/internal/gtm/zzkm;

    const-wide/16 v0, 0x0

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzkm;

    iget-object p2, p2, Lcom/google/android/gms/internal/gtm/zzkm;->b:Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result p2

    if-nez p2, :cond_2

    instance-of p2, p0, Lcom/google/android/gms/internal/gtm/zzkm;

    if-eqz p2, :cond_2

    move-object p2, p0

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzkm;

    iget-object p2, p2, Lcom/google/android/gms/internal/gtm/zzkm;->b:Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/gtm/zzdj;->f(Lcom/google/android/gms/internal/gtm/zzkk;Lcom/google/android/gms/internal/gtm/zzkk;)Z

    move-result p2

    if-eqz p2, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzkm;

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzkm;->b:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkm;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzkm;->b:Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/gtm/zzkm;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    sub-double/2addr v2, v0

    mul-double/2addr v2, p1

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzkm;-><init>(Ljava/lang/Double;)V

    return-object p0
.end method
