.class public abstract Lcom/vuitton/android/data/net/RetrofitFactoryKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/net/RetrofitFactoryKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "data"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroid/content/Context;Lokhttp3/CookieJar;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Lcom/vuitton/android/domain/repository/AppConfigRepository;Lcom/vuitton/android/domain/repository/InAppDispatchRepository;Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;Ljava/util/Set;ZZLcom/vuitton/android/data/net/AuthRequirement;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lokhttp3/OkHttpClient;
    .locals 5

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v1, Lokhttp3/Cache;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/32 v3, 0x1000000

    invoke-direct {v1, v2, v3, v4}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->l:Lokhttp3/Cache;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/data/net/interceptor/DeviceIdInterceptor;

    invoke-direct {v1, p5}, Lcom/vuitton/android/data/net/interceptor/DeviceIdInterceptor;-><init>(Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;)V

    iget-object p5, v0, Lokhttp3/OkHttpClient$Builder;->c:Ljava/util/ArrayList;

    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/vuitton/android/data/net/interceptor/MobileCorrelationIdInterceptor;

    invoke-direct {v1, p2}, Lcom/vuitton/android/data/net/interceptor/MobileCorrelationIdInterceptor;-><init>(Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V

    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    if-eqz p8, :cond_0

    new-instance v2, Lu6;

    invoke-direct {v2, p4, v1}, Lu6;-><init>(Lcom/vuitton/android/domain/repository/InAppDispatchRepository;I)V

    new-instance p4, Lcom/vuitton/android/data/net/interceptor/BOLocaleInterceptor;

    new-instance v3, Lht0;

    invoke-direct {v3, p3, v1}, Lht0;-><init>(Lcom/vuitton/android/domain/repository/AppConfigRepository;I)V

    invoke-direct {p4, p2, v2, v3}, Lcom/vuitton/android/data/net/interceptor/BOLocaleInterceptor;-><init>(Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance p4, Lcom/vuitton/android/data/net/interceptor/UpdateBffUrlInterceptor;

    new-instance v2, Lht0;

    const/4 v3, 0x0

    invoke-direct {v2, p3, v3}, Lht0;-><init>(Lcom/vuitton/android/domain/repository/AppConfigRepository;I)V

    invoke-direct {p4, v2, p2}, Lcom/vuitton/android/data/net/interceptor/UpdateBffUrlInterceptor;-><init>(Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/vuitton/android/data/net/interceptor/UserAgentInterceptor;

    invoke-direct {p3, p0, p6}, Lcom/vuitton/android/data/net/interceptor/UserAgentInterceptor;-><init>(Landroid/content/Context;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 p3, 0x5a

    invoke-virtual {v0, p3, p4}, Lokhttp3/OkHttpClient$Builder;->c(J)V

    invoke-virtual {v0, p3, p4}, Lokhttp3/OkHttpClient$Builder;->d(J)V

    if-eqz p1, :cond_1

    iput-object p1, v0, Lokhttp3/OkHttpClient$Builder;->k:Lokhttp3/CookieJar;

    :cond_1
    if-eqz p9, :cond_2

    new-instance p0, Lcom/vuitton/android/data/net/interceptor/AcceptLanguageInterceptor;

    invoke-direct {p0}, Lcom/vuitton/android/data/net/interceptor/AcceptLanguageInterceptor;-><init>()V

    invoke-virtual {p5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance p0, Lcom/vuitton/android/data/net/interceptor/AkamaiBotProtectionInterceptor;

    invoke-direct {p0, p2}, Lcom/vuitton/android/data/net/interceptor/AkamaiBotProtectionInterceptor;-><init>(Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V

    invoke-virtual {p5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;->d()Lcom/vuitton/foundation/model/domain/model/environment/Environment;

    move-result-object p0

    instance-of p0, p0, Lcom/vuitton/foundation/model/domain/model/environment/Environment$DevEphemeral;

    if-eqz p0, :cond_3

    new-instance p0, Lcom/vuitton/android/data/net/interceptor/EphemeralEnvironmentHeaderInterceptor;

    invoke-interface {p2}, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;->g()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/vuitton/android/data/net/interceptor/EphemeralEnvironmentHeaderInterceptor;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance p0, Lcom/vuitton/android/data/net/interceptor/ReorderQueryParamListInterceptor;

    invoke-direct {p0, p2}, Lcom/vuitton/android/data/net/interceptor/ReorderQueryParamListInterceptor;-><init>(Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V

    invoke-virtual {p5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/vuitton/android/data/net/AuthRequirement;->NONE:Lcom/vuitton/android/data/net/AuthRequirement;

    if-eq p10, p0, :cond_4

    move-object/from16 p0, p11

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object p0, Lcom/vuitton/android/data/net/RetrofitFactoryKt$WhenMappings;->a:[I

    invoke-virtual {p10}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    if-eq p0, v1, :cond_8

    const/4 p1, 0x2

    if-eq p0, p1, :cond_7

    const/4 p1, 0x3

    if-eq p0, p1, :cond_6

    const/4 p1, 0x4

    if-eq p0, p1, :cond_9

    const/4 p1, 0x5

    if-ne p0, p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_6
    move-object/from16 p0, p14

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    move-object/from16 p0, p13

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_8
    move-object/from16 p0, p12

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_0
    check-cast p7, Ljava/lang/Iterable;

    invoke-interface {p7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    iget-object p3, v0, Lokhttp3/OkHttpClient$Builder;->d:Ljava/util/ArrayList;

    if-eqz p1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/Interceptor;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    invoke-interface {p2}, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;->d()Lcom/vuitton/foundation/model/domain/model/environment/Environment;

    move-result-object p0

    instance-of p0, p0, Lcom/vuitton/foundation/model/domain/model/environment/Environment$DevEphemeral;

    if-eqz p0, :cond_b

    new-instance p0, Lcom/vuitton/android/data/net/RetrofitFactoryKt$createOkHttpClient$lambda$4$$inlined$-addNetworkInterceptor$1;

    invoke-direct {p0}, Lcom/vuitton/android/data/net/RetrofitFactoryKt$createOkHttpClient$lambda$4$$inlined$-addNetworkInterceptor$1;-><init>()V

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    new-instance p0, Lokhttp3/OkHttpClient;

    invoke-direct {p0, v0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    return-object p0
.end method

.method public static final b(Landroid/content/Context;Lcom/vuitton/android/data/net/serialization/retrofit/KotlinxSerializationConverterFactory;Ljava/lang/String;Lcom/vuitton/android/domain/repository/AppConfigRepository;Lcom/vuitton/android/domain/repository/InAppDispatchRepository;Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;Ljava/util/Set;Lokhttp3/CookieJar;ZZLcom/vuitton/android/data/net/AuthRequirement;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lretrofit2/Retrofit;
    .locals 16

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->b(Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v3, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v2, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move-object/from16 v14, p15

    move-object/from16 v15, p16

    invoke-static/range {v1 .. v15}, Lcom/vuitton/android/data/net/RetrofitFactoryKt;->a(Landroid/content/Context;Lokhttp3/CookieJar;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Lcom/vuitton/android/domain/repository/AppConfigRepository;Lcom/vuitton/android/domain/repository/InAppDispatchRepository;Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;Ljava/util/Set;ZZLcom/vuitton/android/data/net/AuthRequirement;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lokhttp3/OkHttpClient;

    move-result-object v1

    iput-object v1, v0, Lretrofit2/Retrofit$Builder;->a:Lokhttp3/Call$Factory;

    invoke-virtual/range {p1 .. p1}, Lcom/vuitton/android/data/net/serialization/retrofit/KotlinxSerializationConverterFactory;->a()Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Factory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->a(Lretrofit2/Converter$Factory;)V

    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->d()Lretrofit2/Retrofit;

    move-result-object v0

    return-object v0
.end method
