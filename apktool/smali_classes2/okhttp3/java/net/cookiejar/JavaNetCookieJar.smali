.class public final Lokhttp3/java/net/cookiejar/JavaNetCookieJar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/CookieJar;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lokhttp3/java/net/cookiejar/JavaNetCookieJar;",
        "Lokhttp3/CookieJar;",
        "Ljava/net/CookieHandler;",
        "cookieHandler",
        "<init>",
        "(Ljava/net/CookieHandler;)V",
        "okhttp-java-net-cookiejar"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final b:Ljava/net/CookieHandler;


# direct methods
.method public constructor <init>(Ljava/net/CookieHandler;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/java/net/cookiejar/JavaNetCookieJar;->b:Ljava/net/CookieHandler;

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/HttpUrl;)Ljava/util/List;
    .locals 28

    move-object/from16 v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p0

    :try_start_0
    iget-object v0, v0, Lokhttp3/java/net/cookiejar/JavaNetCookieJar;->b:Ljava/net/CookieHandler;

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->j()Ljava/net/URI;

    move-result-object v2

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const-string v6, "Cookie"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "Cookie2"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v27, v0

    const/16 v26, 0x0

    goto/16 :goto_5

    :cond_2
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    move v9, v8

    :goto_3
    if-ge v9, v7, :cond_d

    const-string v10, ";,"

    invoke-static {v9, v7, v5, v10}, Lokhttp3/internal/_UtilCommonKt;->e(IILjava/lang/String;Ljava/lang/String;)I

    move-result v10

    const/16 v11, 0x3d

    invoke-static {v5, v9, v10, v11}, Lokhttp3/internal/_UtilCommonKt;->f(Ljava/lang/String;IIC)I

    move-result v11

    invoke-static {v9, v11, v5}, Lokhttp3/internal/_UtilCommonKt;->j(IILjava/lang/String;)I

    move-result v9

    invoke-static {v9, v11, v5}, Lokhttp3/internal/_UtilCommonKt;->k(IILjava/lang/String;)I

    move-result v12

    invoke-virtual {v5, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v12, "$"

    invoke-static {v9, v12, v8}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_4

    add-int/lit8 v9, v10, 0x1

    goto :goto_3

    :cond_4
    if-ge v11, v10, :cond_5

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11, v10, v5}, Lokhttp3/internal/_UtilCommonKt;->j(IILjava/lang/String;)I

    move-result v11

    invoke-static {v11, v10, v5}, Lokhttp3/internal/_UtilCommonKt;->k(IILjava/lang/String;)I

    move-result v12

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    :cond_5
    const-string v11, ""

    :goto_4
    const-string v12, "\""

    invoke-static {v11, v12, v8}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-static {v11, v12, v8}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x2

    if-lt v12, v13, :cond_6

    const/4 v12, 0x1

    invoke-static {v12, v12, v11}, Lo60;->g(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_6
    invoke-static {v11}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lokhttp3/Cookie$Builder;

    invoke-direct {v12}, Lokhttp3/Cookie$Builder;-><init>()V

    invoke-static {v9}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    iput-object v9, v12, Lokhttp3/Cookie$Builder;->a:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    iput-object v11, v12, Lokhttp3/Cookie$Builder;->b:Ljava/lang/String;

    iget-object v9, v1, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lokhttp3/internal/_HostnamesCommonKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_a

    iput-object v11, v12, Lokhttp3/Cookie$Builder;->d:Ljava/lang/String;

    iput-boolean v8, v12, Lokhttp3/Cookie$Builder;->i:Z

    new-instance v13, Lokhttp3/Cookie;

    iget-object v14, v12, Lokhttp3/Cookie$Builder;->a:Ljava/lang/String;

    if-eqz v14, :cond_9

    iget-object v15, v12, Lokhttp3/Cookie$Builder;->b:Ljava/lang/String;

    if-eqz v15, :cond_8

    iget-wide v8, v12, Lokhttp3/Cookie$Builder;->c:J

    iget-object v11, v12, Lokhttp3/Cookie$Builder;->d:Ljava/lang/String;

    const/16 v26, 0x0

    if-eqz v11, :cond_7

    iget-object v2, v12, Lokhttp3/Cookie$Builder;->e:Ljava/lang/String;

    move-object/from16 v27, v0

    iget-boolean v0, v12, Lokhttp3/Cookie$Builder;->f:Z

    move/from16 v20, v0

    iget-boolean v0, v12, Lokhttp3/Cookie$Builder;->g:Z

    move/from16 v21, v0

    iget-boolean v0, v12, Lokhttp3/Cookie$Builder;->h:Z

    move/from16 v22, v0

    iget-boolean v0, v12, Lokhttp3/Cookie$Builder;->i:Z

    iget-object v12, v12, Lokhttp3/Cookie$Builder;->j:Ljava/lang/String;

    const/16 v25, 0x0

    move/from16 v23, v0

    move-object/from16 v19, v2

    move-wide/from16 v16, v8

    move-object/from16 v18, v11

    move-object/from16 v24, v12

    invoke-direct/range {v13 .. v25}, Lokhttp3/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v10, 0x1

    move-object/from16 v0, v27

    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_7
    const-string v0, "builder.domain == null"

    invoke-static {v0}, Lr81;->d(Ljava/lang/String;)V

    return-object v26

    :cond_8
    const/16 v26, 0x0

    const-string v0, "builder.value == null"

    invoke-static {v0}, Lr81;->d(Ljava/lang/String;)V

    return-object v26

    :cond_9
    const/16 v26, 0x0

    const-string v0, "builder.name == null"

    invoke-static {v0}, Lr81;->d(Ljava/lang/String;)V

    return-object v26

    :cond_a
    const/16 v26, 0x0

    const-string v0, "unexpected domain: "

    invoke-virtual {v0, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v26

    :cond_b
    const/16 v26, 0x0

    const-string v0, "value is not trimmed"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v26

    :cond_c
    const/16 v26, 0x0

    const-string v0, "name is not trimmed"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v26

    :cond_d
    move-object/from16 v27, v0

    const/16 v26, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    :goto_5
    move-object/from16 v0, v27

    goto/16 :goto_0

    :cond_e
    if-eqz v3, :cond_f

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_f
    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    return-object v0

    :catch_0
    move-exception v0

    sget-object v2, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lokhttp3/internal/platform/Platform;->b:Lokhttp3/internal/platform/Android10Platform;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Loading cookies failed for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/..."

    invoke-virtual {v1, v4}, Lokhttp3/HttpUrl;->i(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v1, v0}, Lokhttp3/internal/platform/Android10Platform;->e(ILjava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    return-object v0
.end method

.method public final b(Lokhttp3/HttpUrl;Ljava/util/List;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Cookie;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lokhttp3/Cookie;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p2, Lkotlin/Pair;

    const-string v1, "Set-Cookie"

    invoke-direct {p2, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/collections/MapsKt;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    :try_start_0
    iget-object p0, p0, Lokhttp3/java/net/cookiejar/JavaNetCookieJar;->b:Ljava/net/CookieHandler;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->j()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object p2, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lokhttp3/internal/platform/Platform;->b:Lokhttp3/internal/platform/Android10Platform;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Saving cookies failed for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/..."

    invoke-virtual {p1, v1}, Lokhttp3/HttpUrl;->i(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p2, v0, p1, p0}, Lokhttp3/internal/platform/Android10Platform;->e(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
