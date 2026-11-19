.class public final Lcom/google/android/gms/internal/gtm/zzgv;
.super Lcom/google/android/gms/internal/gtm/zzdk;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/gms/internal/gtm/zzbv;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/gtm/zzbv;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzdk;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzgv;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzgv;->b:Lcom/google/android/gms/internal/gtm/zzbv;

    return-void
.end method


# virtual methods
.method public final varargs b(Lcom/google/android/gms/internal/gtm/zzbv;[Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;
    .locals 3

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object v0, p2, v1

    instance-of v0, v0, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    aget-object p2, p2, v1

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzkv;

    iget-object p2, p2, Lcom/google/android/gms/internal/gtm/zzkv;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zziv;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzdh;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgv;->b:Lcom/google/android/gms/internal/gtm/zzbv;

    iput-object v0, p2, Lcom/google/android/gms/internal/gtm/zzdh;->a:Lcom/google/android/gms/internal/gtm/zzbv;

    new-array v0, v1, [Lcom/google/android/gms/internal/gtm/zzkk;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/gtm/zzdk;->a(Lcom/google/android/gms/internal/gtm/zzbv;[Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;

    move-result-object p1

    iget p0, p0, Lcom/google/android/gms/internal/gtm/zzgv;->a:I

    if-nez p0, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    return-object p1

    :catch_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbg;->b()V

    sget-object p0, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    return-object p0
.end method
