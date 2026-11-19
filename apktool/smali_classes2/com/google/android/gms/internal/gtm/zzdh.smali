.class public final Lcom/google/android/gms/internal/gtm/zzdh;
.super Lcom/google/android/gms/internal/gtm/zzdk;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/internal/gtm/zzbv;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzbv;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzdk;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzdh;->a:Lcom/google/android/gms/internal/gtm/zzbv;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzdh;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzdh;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/gtm/zzdh;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final varargs b(Lcom/google/android/gms/internal/gtm/zzbv;[Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;
    .locals 3

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzdh;->a:Lcom/google/android/gms/internal/gtm/zzbv;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbv;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/gtm/zzbv;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;)V

    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzdh;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    array-length v2, p2

    if-le v2, p1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aget-object v2, p2, p1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/gtm/zzbv;->b(Lcom/google/android/gms/internal/gtm/zzkk;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/gtm/zzbv;->b(Lcom/google/android/gms/internal/gtm/zzkk;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "arguments"

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzkr;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/gtm/zzkr;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/gtm/zzbv;->b(Lcom/google/android/gms/internal/gtm/zzkk;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzdh;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzkt;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/gtm/zzkw;->d(Lcom/google/android/gms/internal/gtm/zzbv;Lcom/google/android/gms/internal/gtm/zzkt;)Lcom/google/android/gms/internal/gtm/zzkk;

    move-result-object p1

    instance-of p2, p1, Lcom/google/android/gms/internal/gtm/zzko;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzko;

    iget-boolean p2, p1, Lcom/google/android/gms/internal/gtm/zzko;->c:Z

    if-eqz p2, :cond_2

    iget-object p0, p1, Lcom/google/android/gms/internal/gtm/zzko;->d:Lcom/google/android/gms/internal/gtm/zzkk;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbg;->a()V

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzdh;->c:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzdh;->d:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\tparams: "

    const-string v4, "\n\t: statements: "

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzdh;->b:Ljava/lang/String;

    invoke-static {v2, p0, v3, v0, v4}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
