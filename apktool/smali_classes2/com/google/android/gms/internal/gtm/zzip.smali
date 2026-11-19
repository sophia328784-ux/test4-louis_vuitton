.class public final Lcom/google/android/gms/internal/gtm/zzip;
.super Lcom/google/android/gms/internal/gtm/zzdk;
.source "SourceFile"


# static fields
.field public static final b:Lcom/google/android/gms/internal/gtm/zzlh;


# instance fields
.field public final a:Lcom/google/android/gms/internal/gtm/zzau;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "POST"

    const-string v1, "PUT"

    const-string v2, "GET"

    const-string v3, "HEAD"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzlh;->l(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzlh;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzip;->b:Lcom/google/android/gms/internal/gtm/zzlh;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzau;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzdk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzip;->a:Lcom/google/android/gms/internal/gtm/zzau;

    return-void
.end method


# virtual methods
.method public final varargs b(Lcom/google/android/gms/internal/gtm/zzbv;[Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;
    .locals 13

    array-length p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object p1, p2, v0

    instance-of p1, p1, Lcom/google/android/gms/internal/gtm/zzks;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object p1, p2, v0

    const-string v2, "url"

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/gtm/zzkk;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzkk;

    move-result-object p1

    instance-of v2, p1, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzkv;

    iget-object v3, p1, Lcom/google/android/gms/internal/gtm/zzkv;->b:Ljava/lang/String;

    aget-object p1, p2, v0

    const-string v2, "method"

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/gtm/zzkk;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzkk;

    move-result-object p1

    sget-object v8, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    const-string v2, "GET"

    if-ne p1, v8, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/gtm/zzkv;-><init>(Ljava/lang/String;)V

    :cond_1
    instance-of v4, p1, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzkv;

    iget-object v4, p1, Lcom/google/android/gms/internal/gtm/zzkv;->b:Ljava/lang/String;

    sget-object p1, Lcom/google/android/gms/internal/gtm/zzip;->b:Lcom/google/android/gms/internal/gtm/zzlh;

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/gtm/zzld;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object p1, p2, v0

    const-string v5, "uniqueId"

    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/gtm/zzkk;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzkk;

    move-result-object p1

    if-eq p1, v8, :cond_2

    sget-object v5, Lcom/google/android/gms/internal/gtm/zzko;->g:Lcom/google/android/gms/internal/gtm/zzko;

    if-eq p1, v5, :cond_2

    instance-of v5, p1, Lcom/google/android/gms/internal/gtm/zzkv;

    if-eqz v5, :cond_3

    :cond_2
    move v5, v1

    goto :goto_1

    :cond_3
    move v5, v0

    :goto_1
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    const/4 v5, 0x0

    if-eq p1, v8, :cond_4

    sget-object v6, Lcom/google/android/gms/internal/gtm/zzko;->g:Lcom/google/android/gms/internal/gtm/zzko;

    if-ne p1, v6, :cond_5

    :cond_4
    move-object p1, v5

    goto :goto_2

    :cond_5
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzkv;

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzkv;->b:Ljava/lang/String;

    :goto_2
    aget-object v6, p2, v0

    const-string v7, "headers"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/gtm/zzkk;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzkk;

    move-result-object v6

    if-eq v6, v8, :cond_6

    instance-of v7, v6, Lcom/google/android/gms/internal/gtm/zzks;

    if-eqz v7, :cond_7

    :cond_6
    move v7, v1

    goto :goto_3

    :cond_7
    move v7, v0

    :goto_3
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/4 v9, 0x5

    if-ne v6, v8, :cond_8

    move-object v6, v5

    goto :goto_5

    :cond_8
    check-cast v6, Lcom/google/android/gms/internal/gtm/zzks;

    iget-object v6, v6, Lcom/google/android/gms/internal/gtm/zzkk;->a:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/gtm/zzkk;

    instance-of v12, v10, Lcom/google/android/gms/internal/gtm/zzkv;

    if-nez v12, :cond_9

    invoke-static {v9}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    goto :goto_4

    :cond_9
    check-cast v10, Lcom/google/android/gms/internal/gtm/zzkv;

    iget-object v10, v10, Lcom/google/android/gms/internal/gtm/zzkv;->b:Ljava/lang/String;

    invoke-virtual {v7, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_a
    move-object v6, v7

    :goto_5
    aget-object p2, p2, v0

    const-string v7, "body"

    invoke-virtual {p2, v7}, Lcom/google/android/gms/internal/gtm/zzkk;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzkk;

    move-result-object p2

    if-eq p2, v8, :cond_b

    instance-of v7, p2, Lcom/google/android/gms/internal/gtm/zzkv;

    if-eqz v7, :cond_c

    :cond_b
    move v0, v1

    :cond_c
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    if-ne p2, v8, :cond_d

    :goto_6
    move-object v7, v5

    goto :goto_7

    :cond_d
    check-cast p2, Lcom/google/android/gms/internal/gtm/zzkv;

    iget-object v5, p2, Lcom/google/android/gms/internal/gtm/zzkv;->b:Ljava/lang/String;

    goto :goto_6

    :goto_7
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    const-string p2, "HEAD"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    :cond_e
    if-eqz v7, :cond_f

    invoke-static {v9}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    :cond_f
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzip;->a:Lcom/google/android/gms/internal/gtm/zzau;

    move-object v5, p1

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/gtm/zzau;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Z

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "QueueRequest:\n  url = %s,\n  method = %s,\n  uniqueId = %s,\n  headers = %s,\n  body = %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/4 p0, 0x2

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    return-object v8
.end method
