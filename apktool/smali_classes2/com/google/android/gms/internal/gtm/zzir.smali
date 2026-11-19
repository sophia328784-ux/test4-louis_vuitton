.class public final Lcom/google/android/gms/internal/gtm/zzir;
.super Lcom/google/android/gms/internal/gtm/zzdk;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/gtm/zzau;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzau;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzdk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzir;->a:Lcom/google/android/gms/internal/gtm/zzau;

    return-void
.end method


# virtual methods
.method public final varargs b(Lcom/google/android/gms/internal/gtm/zzbv;[Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;
    .locals 13

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object v3, p2, v1

    instance-of v4, v3, Lcom/google/android/gms/internal/gtm/zzko;

    xor-int/2addr v4, v2

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    if-le v0, v2, :cond_1

    aget-object v4, p2, v2

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    :goto_1
    sget-object v5, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    if-eq v4, v5, :cond_2

    instance-of v6, v4, Lcom/google/android/gms/internal/gtm/zzkr;

    if-eqz v6, :cond_3

    :cond_2
    move v6, v2

    goto :goto_2

    :cond_3
    move v6, v1

    :goto_2
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    const/4 v6, 0x2

    if-le v0, v6, :cond_4

    aget-object p2, p2, v6

    goto :goto_3

    :cond_4
    move-object p2, v5

    :goto_3
    if-eq p2, v5, :cond_5

    instance-of v0, p2, Lcom/google/android/gms/internal/gtm/zzko;

    if-nez v0, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzdj;->d(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    if-eq v4, v5, :cond_8

    check-cast v4, Lcom/google/android/gms/internal/gtm/zzkr;

    iget-object v1, v4, Lcom/google/android/gms/internal/gtm/zzkr;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzkk;

    instance-of v3, v2, Lcom/google/android/gms/internal/gtm/zzks;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzks;

    iget-object v2, v2, Lcom/google/android/gms/internal/gtm/zzkk;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/gtm/zzkk;

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/gtm/zzkw;->c(Lcom/google/android/gms/internal/gtm/zzbv;Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzdj;->d(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzir;->a:Lcom/google/android/gms/internal/gtm/zzau;

    if-ne p2, v5, :cond_9

    move-object v7, p0

    check-cast v7, Lcom/google/android/gms/internal/gtm/zzap;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/internal/gtm/zzap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SendPixel: url = "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    return-object v5

    :cond_9
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzdj;->d(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;

    move-result-object v10

    move-object v7, p0

    check-cast v7, Lcom/google/android/gms/internal/gtm/zzap;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/internal/gtm/zzap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Z

    invoke-static {v6}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    return-object v5
.end method
