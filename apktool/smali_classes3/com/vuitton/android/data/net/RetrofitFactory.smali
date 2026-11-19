.class public final Lcom/vuitton/android/data/net/RetrofitFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/net/RetrofitFactory$Companion;,
        Lcom/vuitton/android/data/net/RetrofitFactory$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001&B\u0096\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0011\u0010#\u001a\r\u0012\t\u0012\u00070!\u00a2\u0006\u0002\u0008\"0 \u00a2\u0006\u0004\u0008$\u0010%\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/vuitton/android/data/net/RetrofitFactory;",
        "",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Landroid/content/Context;",
        "context",
        "Lcom/vuitton/android/data/net/serialization/retrofit/KotlinxSerializationConverterFactory;",
        "kotlinxConverterFactory",
        "Lkotlinx/serialization/json/Json;",
        "json",
        "Lcom/vuitton/android/domain/repository/AuthTokenRepository;",
        "authTokenRepository",
        "Lcom/vuitton/android/domain/repository/TwistAuthRepository;",
        "twistAuthRepository",
        "Lcom/vuitton/android/domain/repository/AppConfigRepository;",
        "appConfigRepository",
        "Lcom/vuitton/android/domain/repository/InAppDispatchRepository;",
        "inAppDispatchRepository",
        "Lcom/vuitton/android/domain/provider/feature/FeatureCheckerProvider;",
        "featureCheckerProvider",
        "Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;",
        "tokenRefreshCoordinator",
        "Lokhttp3/CookieJar;",
        "cookieJar",
        "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;",
        "environmentProvider",
        "Lcom/vuitton/android/data/net/ProdUrls;",
        "prodUrls",
        "Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;",
        "deviceIdLocalDataSource",
        "Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;",
        "buildConfigProvider",
        "",
        "Lokhttp3/Interceptor;",
        "Lkotlin/jvm/JvmSuppressWildcards;",
        "networkInterceptors",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Lcom/vuitton/android/data/net/serialization/retrofit/KotlinxSerializationConverterFactory;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/domain/repository/TwistAuthRepository;Lcom/vuitton/android/domain/repository/AppConfigRepository;Lcom/vuitton/android/domain/repository/InAppDispatchRepository;Lcom/vuitton/android/domain/provider/feature/FeatureCheckerProvider;Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;Lokhttp3/CookieJar;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Lcom/vuitton/android/data/net/ProdUrls;Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;Ljava/util/Set;)V",
        "Companion",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic q:I


# instance fields
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Landroid/content/Context;

.field public final c:Lcom/vuitton/android/data/net/serialization/retrofit/KotlinxSerializationConverterFactory;

.field public final d:Lkotlinx/serialization/json/Json;

.field public final e:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

.field public final f:Lcom/vuitton/android/domain/repository/TwistAuthRepository;

.field public final g:Lcom/vuitton/android/domain/repository/AppConfigRepository;

.field public final h:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

.field public final i:Lcom/vuitton/android/domain/provider/feature/FeatureCheckerProvider;

.field public final j:Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;

.field public final k:Lokhttp3/CookieJar;

.field public final l:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

.field public final m:Lcom/vuitton/android/data/net/ProdUrls;

.field public final n:Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;

.field public final o:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

.field public final p:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/net/RetrofitFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/net/RetrofitFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Lcom/vuitton/android/data/net/serialization/retrofit/KotlinxSerializationConverterFactory;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/domain/repository/TwistAuthRepository;Lcom/vuitton/android/domain/repository/AppConfigRepository;Lcom/vuitton/android/domain/repository/InAppDispatchRepository;Lcom/vuitton/android/domain/provider/feature/FeatureCheckerProvider;Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;Lokhttp3/CookieJar;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Lcom/vuitton/android/data/net/ProdUrls;Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/foundation/logger/Logger;",
            "Landroid/content/Context;",
            "Lcom/vuitton/android/data/net/serialization/retrofit/KotlinxSerializationConverterFactory;",
            "Lkotlinx/serialization/json/Json;",
            "Lcom/vuitton/android/domain/repository/AuthTokenRepository;",
            "Lcom/vuitton/android/domain/repository/TwistAuthRepository;",
            "Lcom/vuitton/android/domain/repository/AppConfigRepository;",
            "Lcom/vuitton/android/domain/repository/InAppDispatchRepository;",
            "Lcom/vuitton/android/domain/provider/feature/FeatureCheckerProvider;",
            "Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;",
            "Lokhttp3/CookieJar;",
            "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;",
            "Lcom/vuitton/android/data/net/ProdUrls;",
            "Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;",
            "Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;",
            "Ljava/util/Set<",
            "Lokhttp3/Interceptor;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/net/RetrofitFactory;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/data/net/RetrofitFactory;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/vuitton/android/data/net/RetrofitFactory;->c:Lcom/vuitton/android/data/net/serialization/retrofit/KotlinxSerializationConverterFactory;

    iput-object p4, p0, Lcom/vuitton/android/data/net/RetrofitFactory;->d:Lkotlinx/serialization/json/Json;

    iput-object p5, p0, Lcom/vuitton/android/data/net/RetrofitFactory;->e:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    iput-object p6, p0, Lcom/vuitton/android/data/net/RetrofitFactory;->f:Lcom/vuitton/android/domain/repository/TwistAuthRepository;

    iput-object p7, p0, Lcom/vuitton/android/data/net/RetrofitFactory;->g:Lcom/vuitton/android/domain/repository/AppConfigRepository;

    iput-object p8, p0, Lcom/vuitton/android/data/net/RetrofitFactory;->h:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    iput-object p9, p0, Lcom/vuitton/android/data/net/RetrofitFactory;->i:Lcom/vuitton/android/domain/provider/feature/FeatureCheckerProvider;

    iput-object p10, p0, Lcom/vuitton/android/data/net/RetrofitFactory;->j:Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;

    iput-object p11, p0, Lcom/vuitton/android/data/net/RetrofitFactory;->k:Lokhttp3/CookieJar;

    iput-object p12, p0, Lcom/vuitton/android/data/net/RetrofitFactory;->l:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    iput-object p13, p0, Lcom/vuitton/android/data/net/RetrofitFactory;->m:Lcom/vuitton/android/data/net/ProdUrls;

    iput-object p14, p0, Lcom/vuitton/android/data/net/RetrofitFactory;->n:Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;

    iput-object p15, p0, Lcom/vuitton/android/data/net/RetrofitFactory;->o:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/vuitton/android/data/net/RetrofitFactory;->p:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Lcom/vuitton/android/data/net/serialization/retrofit/KotlinxSerializationConverterFactory;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/domain/repository/TwistAuthRepository;Lcom/vuitton/android/domain/repository/AppConfigRepository;Lcom/vuitton/android/domain/repository/InAppDispatchRepository;Lcom/vuitton/android/domain/provider/feature/FeatureCheckerProvider;Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;Lokhttp3/CookieJar;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Lcom/vuitton/android/data/net/ProdUrls;Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 18

    move/from16 v0, p17

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v12, v0

    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    goto :goto_1

    :cond_0
    move-object/from16 v12, p11

    goto :goto_0

    .line 83
    :goto_1
    invoke-direct/range {v1 .. v17}, Lcom/vuitton/android/data/net/RetrofitFactory;-><init>(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Lcom/vuitton/android/data/net/serialization/retrofit/KotlinxSerializationConverterFactory;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/domain/repository/TwistAuthRepository;Lcom/vuitton/android/domain/repository/AppConfigRepository;Lcom/vuitton/android/domain/repository/InAppDispatchRepository;Lcom/vuitton/android/domain/provider/feature/FeatureCheckerProvider;Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;Lokhttp3/CookieJar;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Lcom/vuitton/android/data/net/ProdUrls;Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;Ljava/util/Set;)V

    return-void
.end method

.method public static a(Lcom/vuitton/android/data/net/RetrofitFactory;Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;I)Lretrofit2/Retrofit;
    .locals 7

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_2

    sget-object p2, Lcom/vuitton/android/data/net/AuthRequirement;->NONE:Lcom/vuitton/android/data/net/AuthRequirement;

    :cond_2
    move-object v5, p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/net/RetrofitFactory;->e(Lcom/vuitton/android/data/net/BffApi;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v6, 0x2a

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/data/net/RetrofitFactory;->f(Lcom/vuitton/android/data/net/RetrofitFactory;Ljava/lang/String;Lokhttp3/CookieJar;ZLcom/vuitton/android/data/net/AuthRequirement;I)Lretrofit2/Retrofit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/vuitton/android/data/net/RetrofitFactory;Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;I)Lretrofit2/Retrofit;
    .locals 1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    sget-object p2, Lcom/vuitton/android/data/net/AuthRequirement;->NONE:Lcom/vuitton/android/data/net/AuthRequirement;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/net/RetrofitFactory;->c(Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;)Lretrofit2/Retrofit;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lcom/vuitton/android/data/net/RetrofitFactory;Ljava/lang/String;Lokhttp3/CookieJar;ZLcom/vuitton/android/data/net/AuthRequirement;I)Lretrofit2/Retrofit;
    .locals 19

    move-object/from16 v0, p0

    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v11, v1

    goto :goto_0

    :cond_0
    move-object/from16 v11, p2

    :goto_0
    and-int/lit8 v1, p5, 0x4

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v12, v2

    goto :goto_1

    :cond_1
    move/from16 v12, p3

    :goto_1
    and-int/lit8 v1, p5, 0x10

    if-eqz v1, :cond_2

    sget-object v1, Lcom/vuitton/android/data/net/AuthRequirement;->NONE:Lcom/vuitton/android/data/net/AuthRequirement;

    move-object v14, v1

    goto :goto_2

    :cond_2
    move-object/from16 v14, p4

    :goto_2
    iget-object v1, v0, Lcom/vuitton/android/data/net/RetrofitFactory;->b:Landroid/content/Context;

    iget-object v3, v0, Lcom/vuitton/android/data/net/RetrofitFactory;->c:Lcom/vuitton/android/data/net/serialization/retrofit/KotlinxSerializationConverterFactory;

    iget-object v8, v0, Lcom/vuitton/android/data/net/RetrofitFactory;->l:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    iget-object v5, v0, Lcom/vuitton/android/data/net/RetrofitFactory;->g:Lcom/vuitton/android/domain/repository/AppConfigRepository;

    iget-object v6, v0, Lcom/vuitton/android/data/net/RetrofitFactory;->h:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    iget-object v7, v0, Lcom/vuitton/android/data/net/RetrofitFactory;->n:Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;

    iget-object v9, v0, Lcom/vuitton/android/data/net/RetrofitFactory;->o:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    iget-object v10, v0, Lcom/vuitton/android/data/net/RetrofitFactory;->p:Ljava/util/Set;

    new-instance v15, Lft0;

    const/4 v4, 0x0

    invoke-direct {v15, v0, v4}, Lft0;-><init>(Lcom/vuitton/android/data/net/RetrofitFactory;I)V

    new-instance v4, Lft0;

    invoke-direct {v4, v0, v2}, Lft0;-><init>(Lcom/vuitton/android/data/net/RetrofitFactory;I)V

    new-instance v2, Lft0;

    const/4 v13, 0x2

    invoke-direct {v2, v0, v13}, Lft0;-><init>(Lcom/vuitton/android/data/net/RetrofitFactory;I)V

    new-instance v13, Lft0;

    move-object/from16 v16, v1

    const/4 v1, 0x3

    invoke-direct {v13, v0, v1}, Lft0;-><init>(Lcom/vuitton/android/data/net/RetrofitFactory;I)V

    move-object/from16 v18, v13

    const/4 v13, 0x0

    move-object/from16 v17, v2

    move-object/from16 v2, v16

    move-object/from16 v16, v4

    move-object/from16 v4, p1

    invoke-static/range {v2 .. v18}, Lcom/vuitton/android/data/net/RetrofitFactoryKt;->b(Landroid/content/Context;Lcom/vuitton/android/data/net/serialization/retrofit/KotlinxSerializationConverterFactory;Ljava/lang/String;Lcom/vuitton/android/domain/repository/AppConfigRepository;Lcom/vuitton/android/domain/repository/InAppDispatchRepository;Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;Ljava/util/Set;Lokhttp3/CookieJar;ZZLcom/vuitton/android/data/net/AuthRequirement;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lretrofit2/Retrofit;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final b(Lcom/vuitton/android/data/net/BffApi;)Lretrofit2/Retrofit;
    .locals 6

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/net/RetrofitFactory;->e(Lcom/vuitton/android/data/net/BffApi;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/16 v5, 0x3c

    iget-object v2, p0, Lcom/vuitton/android/data/net/RetrofitFactory;->k:Lokhttp3/CookieJar;

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/data/net/RetrofitFactory;->f(Lcom/vuitton/android/data/net/RetrofitFactory;Ljava/lang/String;Lokhttp3/CookieJar;ZLcom/vuitton/android/data/net/AuthRequirement;I)Lretrofit2/Retrofit;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;)Lretrofit2/Retrofit;
    .locals 6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/net/RetrofitFactory;->e(Lcom/vuitton/android/data/net/BffApi;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/16 v5, 0x2c

    iget-object v2, p0, Lcom/vuitton/android/data/net/RetrofitFactory;->k:Lokhttp3/CookieJar;

    move-object v0, p0

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/data/net/RetrofitFactory;->f(Lcom/vuitton/android/data/net/RetrofitFactory;Ljava/lang/String;Lokhttp3/CookieJar;ZLcom/vuitton/android/data/net/AuthRequirement;I)Lretrofit2/Retrofit;

    move-result-object p0

    return-object p0
.end method

.method public final e(Lcom/vuitton/android/data/net/BffApi;)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/vuitton/android/data/net/RetrofitFactory$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    :goto_0
    if-eq p1, v0, :cond_4

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/vuitton/android/data/net/RetrofitFactory;->l:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    invoke-interface {p0}, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-interface {p0}, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;->o()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-interface {p0}, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p0, "https://fakeurl.com/"

    return-object p0
.end method

.method public final g(Lokhttp3/OkHttpClient$Builder;)V
    .locals 1

    new-instance v0, Lcom/vuitton/android/data/net/auth/ProactiveTokenRefreshInterceptor;

    iget-object p0, p0, Lcom/vuitton/android/data/net/RetrofitFactory;->j:Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;

    invoke-direct {v0, p0}, Lcom/vuitton/android/data/net/auth/ProactiveTokenRefreshInterceptor;-><init>(Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lokhttp3/OkHttpClient$Builder;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
