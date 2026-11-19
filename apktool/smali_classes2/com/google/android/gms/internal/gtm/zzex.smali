.class public final Lcom/google/android/gms/internal/gtm/zzex;
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
    .locals 4

    array-length p0, p2

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object p0, p2, v2

    instance-of p0, p0, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    const/4 p0, 0x2

    aget-object v0, p2, p0

    instance-of v0, v0, Lcom/google/android/gms/internal/gtm/zzkr;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object v0, p2, v1

    aget-object v2, p2, v2

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzkv;

    iget-object v2, v2, Lcom/google/android/gms/internal/gtm/zzkv;->b:Ljava/lang/String;

    aget-object p0, p2, p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkr;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzkr;->b:Ljava/util/ArrayList;

    iget-object p2, v0, Lcom/google/android/gms/internal/gtm/zzkk;->a:Ljava/util/Map;

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/gtm/zzkk;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzkk;

    move-result-object p2

    instance-of v0, p2, Lcom/google/android/gms/internal/gtm/zzkn;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzkn;

    iget-object p2, p2, Lcom/google/android/gms/internal/gtm/zzkn;->b:Lcom/google/android/gms/internal/gtm/zzdi;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/gtm/zzkk;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/android/gms/internal/gtm/zzkk;

    invoke-interface {p2, p1, p0}, Lcom/google/android/gms/internal/gtm/zzdi;->a(Lcom/google/android/gms/internal/gtm/zzbv;[Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Apply TypeError: "

    const-string p1, " is not a function"

    invoke-static {p0, v2, p1}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/gtm/zzkk;->g(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/gtm/zzkk;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzdi;

    move-result-object p2

    invoke-virtual {p0, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/gtm/zzkk;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/android/gms/internal/gtm/zzkk;

    invoke-interface {p2, p1, p0}, Lcom/google/android/gms/internal/gtm/zzdi;->a(Lcom/google/android/gms/internal/gtm/zzbv;[Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "Apply TypeError: object has no "

    const-string p1, " property"

    invoke-static {p0, v2, p1}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v3
.end method
