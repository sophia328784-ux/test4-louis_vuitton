.class final Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SwitchingProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/internal/Provider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

.field public final b:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iput p2, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;->b:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget v5, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;->b:I

    packed-switch v5, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v5}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/vuitton/android/data/datasource/pdp/CustomizationLocalDataSource;

    invoke-direct {v0}, Lcom/vuitton/android/data/datasource/pdp/CustomizationLocalDataSource;-><init>()V

    return-object v0

    :pswitch_1
    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/net/BffApi;->CATALOG_API:Lcom/vuitton/android/data/net/BffApi;

    invoke-static {v1, v0, v3, v2}, Lcom/vuitton/android/data/net/RetrofitFactory;->d(Lcom/vuitton/android/data/net/RetrofitFactory;Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;I)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/catalog/ProductApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/catalog/ProductApi;

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/vuitton/android/data/repository/ProductRepositoryImpl;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->I1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/data/api/bff/catalog/ProductApi;

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->C:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;

    iget-object v3, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->J1:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/data/datasource/pdp/CustomizationLocalDataSource;

    invoke-direct {v0, v1, v2, v3}, Lcom/vuitton/android/data/repository/ProductRepositoryImpl;-><init>(Lcom/vuitton/android/data/api/bff/catalog/ProductApi;Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;Lcom/vuitton/android/data/datasource/pdp/CustomizationLocalDataSource;)V

    return-object v0

    :pswitch_3
    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/net/BffApi;->USER_API:Lcom/vuitton/android/data/net/BffApi;

    sget-object v3, Lcom/vuitton/android/data/net/AuthRequirement;->FORCE_ADD_SFID_AND_SLAS_HEADERS_FOR_TWIST_LOCALE:Lcom/vuitton/android/data/net/AuthRequirement;

    invoke-static {v1, v0, v3, v2}, Lcom/vuitton/android/data/net/RetrofitFactory;->a(Lcom/vuitton/android/data/net/RetrofitFactory;Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;I)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/user/AICompanionApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/user/AICompanionApi;

    return-object v0

    :pswitch_4
    new-instance v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionRemoteDataSource;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/data/api/bff/user/AICompanionApi;

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionRemoteDataSource;-><init>(Lcom/vuitton/android/data/api/bff/user/AICompanionApi;)V

    return-object v0

    :pswitch_5
    new-instance v0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/datastore/core/DataStore;

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    iget-object v3, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/json/Json;

    invoke-direct {v0, v1, v2, v3}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;-><init>(Landroidx/datastore/core/DataStore;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lkotlinx/serialization/json/Json;)V

    return-object v0

    :pswitch_6
    new-instance v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->U:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E1:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

    iget-object v3, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G1:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionRemoteDataSource;

    invoke-direct {v0, v1, v2, v3}, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl;-><init>(Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;Lcom/vuitton/android/data/datasource/aicompanion/AICompanionRemoteDataSource;)V

    return-object v0

    :pswitch_7
    new-instance v0, Lcom/vuitton/android/presentation/security/AkamaiSecurityHelper;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v1, v1, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v1}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/presentation/security/AkamaiSecurityHelper;-><init>(Landroid/content/Context;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V

    return-object v0

    :pswitch_8
    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/nfc/NfcManager;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/logger/Logger;

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/secrets/SecretsProvider;

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/certificates/nfc/NfcManager;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/foundation/secrets/SecretsProvider;)V

    return-object v0

    :pswitch_9
    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/net/BffApi;->USER_API:Lcom/vuitton/android/data/net/BffApi;

    sget-object v2, Lcom/vuitton/android/data/net/AuthRequirement;->FORCE_ADD_SFID_AND_SLAS_HEADERS_FOR_TWIST_LOCALE:Lcom/vuitton/android/data/net/AuthRequirement;

    invoke-virtual {v1, v0, v2}, Lcom/vuitton/android/data/net/RetrofitFactory;->c(Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/user/TwistCartApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/user/TwistCartApi;

    return-object v0

    :pswitch_a
    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/net/BffApi;->PUBLICATION_API:Lcom/vuitton/android/data/net/BffApi;

    const/4 v2, 0x6

    invoke-static {v1, v0, v3, v2}, Lcom/vuitton/android/data/net/RetrofitFactory;->a(Lcom/vuitton/android/data/net/RetrofitFactory;Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;I)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/publication/PublicationCartApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/publication/PublicationCartApi;

    return-object v0

    :pswitch_b
    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/net/BffApi;->USER_API:Lcom/vuitton/android/data/net/BffApi;

    sget-object v2, Lcom/vuitton/android/data/net/AuthRequirement;->FORCE_ADD_SFID_AND_SLAS_HEADERS_FOR_TWIST_LOCALE:Lcom/vuitton/android/data/net/AuthRequirement;

    invoke-virtual {v1, v0, v2}, Lcom/vuitton/android/data/net/RetrofitFactory;->c(Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/user/CartApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/user/CartApi;

    return-object v0

    :pswitch_c
    new-instance v1, Lcom/vuitton/android/data/repository/CartRepositoryImpl;

    new-instance v2, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->w1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/api/bff/user/CartApi;

    iget-object v3, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->x1:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/data/api/bff/publication/PublicationCartApi;

    iget-object v5, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    iget-object v6, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlinx/serialization/json/Json;

    invoke-direct {v2, v0, v3, v5, v6}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;-><init>(Lcom/vuitton/android/data/api/bff/user/CartApi;Lcom/vuitton/android/data/api/bff/publication/PublicationCartApi;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lkotlinx/serialization/json/Json;)V

    new-instance v3, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/api/bff/user/TwistCartApi;

    iget-object v5, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->U:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    iget-object v6, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-direct {v3, v0, v5, v6}, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;-><init>(Lcom/vuitton/android/data/api/bff/user/TwistCartApi;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V

    new-instance v0, Lcom/vuitton/android/data/datasource/cart/legacy/CartLegacyDataSource;

    iget-object v5, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    iget-object v6, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->e0:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/domain/repository/AppConfigRepository;

    invoke-direct {v0, v5, v6}, Lcom/vuitton/android/data/datasource/cart/legacy/CartLegacyDataSource;-><init>(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/android/domain/repository/AppConfigRepository;)V

    iget-object v5, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->Z:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;

    iget-object v4, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G0:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/android/data/repository/CartRepositoryImpl;-><init>(Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;Lcom/vuitton/android/data/datasource/cart/legacy/CartLegacyDataSource;Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;)V

    return-object v1

    :pswitch_d
    new-instance v0, Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->b0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;-><init>(Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V

    return-object v0

    :pswitch_e
    new-instance v0, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/logger/Logger;

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->q1:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powerfront/insidewebsdkandroid/InsideClient;

    invoke-direct {v0, v1, v2}, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/powerfront/insidewebsdkandroid/InsideClient;)V

    return-object v0

    :pswitch_f
    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v0, v0, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    sget-object v2, Lcom/powerfront/insidewebsdkandroid/InsideClient;->A:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    if-nez v2, :cond_0

    new-instance v2, Lcom/powerfront/insidewebsdkandroid/InsideClient;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/powerfront/insidewebsdkandroid/InsideClient;->c:Z

    iput-boolean v1, v2, Lcom/powerfront/insidewebsdkandroid/InsideClient;->d:Z

    iput-object v3, v2, Lcom/powerfront/insidewebsdkandroid/InsideClient;->e:Lcom/powerfront/insidewebsdkandroid/models/InsideUser;

    new-instance v5, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;

    invoke-direct {v5, v3, v3}, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    iput-object v5, v2, Lcom/powerfront/insidewebsdkandroid/InsideClient;->f:Lcom/powerfront/insidewebsdkandroid/models/InsideCart;

    iput-object v3, v2, Lcom/powerfront/insidewebsdkandroid/InsideClient;->g:Lcom/powerfront/insidewebsdkandroid/models/InsideView;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v3, "javascript:disconnectMe();"

    iput-object v3, v2, Lcom/powerfront/insidewebsdkandroid/InsideClient;->m:Ljava/lang/String;

    iput-boolean v1, v2, Lcom/powerfront/insidewebsdkandroid/InsideClient;->u:Z

    iput-boolean v4, v2, Lcom/powerfront/insidewebsdkandroid/InsideClient;->v:Z

    iput-boolean v1, v2, Lcom/powerfront/insidewebsdkandroid/InsideClient;->w:Z

    sput-object v2, Lcom/powerfront/insidewebsdkandroid/InsideClient;->A:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    sput-object v0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->y:Landroid/content/Context;

    goto :goto_0

    :cond_1
    sput-object v0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->z:Landroid/content/Context;

    :goto_0
    sget-object v0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->A:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_10
    new-instance v0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->q1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powerfront/insidewebsdkandroid/InsideClient;

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->s1:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/contracts/chat/ChatTracker;

    iget-object v3, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u1:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/contracts/link/UrlVerifier;

    iget-object v4, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/logger/Logger;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;-><init>(Lcom/powerfront/insidewebsdkandroid/InsideClient;Lcom/vuitton/foundation/contracts/chat/ChatTracker;Lcom/vuitton/foundation/contracts/link/UrlVerifier;Lcom/vuitton/foundation/logger/Logger;)V

    return-object v0

    :pswitch_11
    new-instance v5, Lcom/vuitton/android/presentation/chat/ChatCoordinator;

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    new-instance v7, Lcom/vuitton/android/domain/usecase/chat/HandleChatSystemUseCase;

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/contracts/chat/ChatManager;

    invoke-direct {v7, v0}, Lcom/vuitton/android/domain/usecase/chat/HandleChatSystemUseCase;-><init>(Lcom/vuitton/foundation/contracts/chat/ChatManager;)V

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/vuitton/core/infrastructure/chat/AndroidPlatformContract;

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v9

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v10

    new-instance v11, Lcom/vuitton/android/domain/usecase/privacy/consent/chat/HasChatConsentUseCase;

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->p0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/ConsentRepository;

    invoke-direct {v11, v0}, Lcom/vuitton/android/domain/usecase/privacy/consent/chat/HasChatConsentUseCase;-><init>(Lcom/vuitton/android/domain/repository/ConsentRepository;)V

    new-instance v12, Lcom/vuitton/android/domain/usecase/cart/GetConfirmationDetailsUseCase;

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->A1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/CartRepository;

    invoke-direct {v12, v0}, Lcom/vuitton/android/domain/usecase/cart/GetConfirmationDetailsUseCase;-><init>(Lcom/vuitton/android/domain/repository/CartRepository;)V

    new-instance v13, Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->s1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/contracts/chat/ChatTracker;

    invoke-direct {v13, v0}, Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;-><init>(Lcom/vuitton/foundation/contracts/chat/ChatTracker;)V

    invoke-direct/range {v5 .. v13}, Lcom/vuitton/android/presentation/chat/ChatCoordinator;-><init>(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/android/domain/usecase/chat/HandleChatSystemUseCase;Lcom/vuitton/core/infrastructure/chat/AndroidPlatformContract;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/chat/HasChatConsentUseCase;Lcom/vuitton/android/domain/usecase/cart/GetConfirmationDetailsUseCase;Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;)V

    return-object v5

    :pswitch_12
    new-instance v0, Lcom/vuitton/android/data/monitoring/DynatraceMonitor;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->Z:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/data/monitoring/DynatraceMonitor;-><init>(Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V

    return-object v0

    :pswitch_13
    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v0, v0, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    new-instance v1, Landroidx/credentials/CredentialManagerImpl;

    invoke-direct {v1, v0}, Landroidx/credentials/CredentialManagerImpl;-><init>(Landroid/content/Context;)V

    return-object v1

    :pswitch_14
    new-instance v2, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;

    new-instance v3, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl;

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->l1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/credentials/CredentialManager;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->b0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    invoke-direct {v3, v0, v1}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl;-><init>(Landroidx/credentials/CredentialManager;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->b0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl;-><init>(Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V

    new-instance v5, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl;

    invoke-direct {v5}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl;-><init>()V

    new-instance v6, Lcom/vuitton/android/domain/usecase/authentication/social/SocialLoginUseCase;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->L0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/domain/repository/TwistAuthRepository;

    invoke-direct {v6, v1}, Lcom/vuitton/android/domain/usecase/authentication/social/SocialLoginUseCase;-><init>(Lcom/vuitton/android/domain/repository/TwistAuthRepository;)V

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v7

    new-instance v8, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    invoke-direct {v8}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;-><init>()V

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/vuitton/foundation/logger/Logger;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/vuitton/android/core/events/LVEventSender;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v12

    move-object v4, v0

    invoke-direct/range {v2 .. v12}, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;-><init>(Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManager;Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManager;Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManager;Lcom/vuitton/android/domain/usecase/authentication/social/SocialLoginUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V

    return-object v2

    :pswitch_15
    new-instance v3, Lcom/vuitton/android/data/repository/NotificationsPreferencesRepositoryImpl;

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/logger/Logger;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v5, v1, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v5}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G:Ldagger/internal/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->a(Ldagger/internal/Provider;)Ldagger/Lazy;

    move-result-object v6

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lkotlinx/serialization/json/Json;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->p0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/vuitton/android/domain/repository/ConsentRepository;

    move-object v4, v0

    invoke-direct/range {v3 .. v8}, Lcom/vuitton/android/data/repository/NotificationsPreferencesRepositoryImpl;-><init>(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Ldagger/Lazy;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/domain/repository/ConsentRepository;)V

    return-object v3

    :pswitch_16
    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/net/BffApi;->USER_API:Lcom/vuitton/android/data/net/BffApi;

    invoke-static {v1, v0, v3, v2}, Lcom/vuitton/android/data/net/RetrofitFactory;->d(Lcom/vuitton/android/data/net/RetrofitFactory;Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;I)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/user/UserWorldwideIdApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/user/UserWorldwideIdApi;

    return-object v0

    :pswitch_17
    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/net/BffApi;->USER_API:Lcom/vuitton/android/data/net/BffApi;

    sget-object v2, Lcom/vuitton/android/data/net/AuthRequirement;->FORCE_ADD_SFID_AND_SLAS_HEADERS_FOR_TWIST_LOCALE:Lcom/vuitton/android/data/net/AuthRequirement;

    invoke-virtual {v1, v0, v2}, Lcom/vuitton/android/data/net/RetrofitFactory;->c(Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/user/AddressesApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/user/AddressesApi;

    return-object v0

    :pswitch_18
    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/net/BffApi;->USER_API:Lcom/vuitton/android/data/net/BffApi;

    sget-object v2, Lcom/vuitton/android/data/net/AuthRequirement;->ADD_SFID_AND_SLAS_HEADERS_ONLY_FOR_TWIST_LOGGED_IN_USER:Lcom/vuitton/android/data/net/AuthRequirement;

    invoke-virtual {v1, v0, v2}, Lcom/vuitton/android/data/net/RetrofitFactory;->c(Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/user/AccountApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/user/AccountApi;

    return-object v0

    :pswitch_19
    new-instance v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteDataSource;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->c1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/data/api/bff/user/AccountApi;

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/datasource/account/AccountRemoteDataSource;-><init>(Lcom/vuitton/android/data/api/bff/user/AccountApi;)V

    return-object v0

    :pswitch_1a
    new-instance v0, Lcom/vuitton/android/data/repository/ATGSessionRepositoryImpl;

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->x()Lcom/vuitton/android/data/api/bff/user/AuthApi;

    move-result-object v1

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G0:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;

    iget-object v3, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->b0:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    invoke-direct {v0, v1, v2, v3}, Lcom/vuitton/android/data/repository/ATGSessionRepositoryImpl;-><init>(Lcom/vuitton/android/data/api/bff/user/AuthApi;Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V

    return-object v0

    :pswitch_1b
    new-instance v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v5, v1, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v5}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->Z0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/vuitton/android/domain/repository/ATGSessionRepository;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->e0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/vuitton/android/domain/repository/AppConfigRepository;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->K:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/vuitton/foundation/logger/Logger;

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;-><init>(Landroid/content/Context;Lcom/vuitton/android/domain/repository/ATGSessionRepository;Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;Lcom/vuitton/android/domain/repository/AppConfigRepository;Lcom/vuitton/android/domain/repository/UserPreferencesRepository;Lcom/vuitton/foundation/logger/Logger;)V

    return-object v4

    :pswitch_1c
    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/net/BffApi;->USER_API:Lcom/vuitton/android/data/net/BffApi;

    sget-object v2, Lcom/vuitton/android/data/net/AuthRequirement;->TRIGGER_REFRESH_TOKEN:Lcom/vuitton/android/data/net/AuthRequirement;

    invoke-virtual {v1, v0, v2}, Lcom/vuitton/android/data/net/RetrofitFactory;->c(Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/user/AccountFacadeApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/user/AccountFacadeApi;

    return-object v0

    :pswitch_1d
    new-instance v0, Lcom/vuitton/android/presentation/di/provider/ApiEndpointProviderImpl;

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/di/provider/ApiEndpointProviderImpl;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V

    return-object v0

    :pswitch_1e
    new-instance v2, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vuitton/android/data/datasource/endpoint/FacadeApiEndpointFactory;

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->W0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/provider/api/ApiEndpointProvider;

    invoke-direct {v3, v0}, Lcom/vuitton/android/data/datasource/endpoint/FacadeApiEndpointFactory;-><init>(Lcom/vuitton/android/domain/provider/api/ApiEndpointProvider;)V

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->X0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/api/bff/user/AccountFacadeApi;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->T0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/vuitton/android/data/api/bff/user/ProfileApi;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->U:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/vuitton/android/data/net/atg/ATGSessionManager;

    move-object v4, v0

    invoke-direct/range {v2 .. v7}, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;-><init>(Lcom/vuitton/android/data/datasource/endpoint/FacadeApiEndpointFactory;Lcom/vuitton/android/data/api/bff/user/AccountFacadeApi;Lcom/vuitton/android/data/api/bff/user/ProfileApi;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/data/net/atg/ATGSessionManager;)V

    return-object v2

    :pswitch_1f
    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/net/BffApi;->USER_API:Lcom/vuitton/android/data/net/BffApi;

    sget-object v2, Lcom/vuitton/android/data/net/AuthRequirement;->ADD_SFID_AND_SLAS_HEADERS_ONLY_FOR_TWIST_LOGGED_IN_USER:Lcom/vuitton/android/data/net/AuthRequirement;

    invoke-virtual {v1, v0, v2}, Lcom/vuitton/android/data/net/RetrofitFactory;->c(Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/user/ProfileApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/user/ProfileApi;

    return-object v0

    :pswitch_20
    new-instance v0, Lcom/vuitton/android/data/time/SystemTimeProvider;

    invoke-direct {v0}, Lcom/vuitton/android/data/time/SystemTimeProvider;-><init>()V

    return-object v0

    :pswitch_21
    new-instance v1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->x()Lcom/vuitton/android/data/api/bff/user/AuthApi;

    move-result-object v3

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->T:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSource;

    iget-object v5, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->P:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/domain/repository/LoginStateRepository;

    iget-object v6, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G0:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;

    iget-object v7, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->I0:Ldagger/internal/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/data/datasource/analytic/AnalyticLocalDataSource;

    iget-object v8, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->J0:Ldagger/internal/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/data/datasource/analytic/AnalyticRemoteDataSource;

    iget-object v4, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;

    move-object v4, v0

    invoke-direct/range {v1 .. v9}, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/api/bff/user/AuthApi;Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSource;Lcom/vuitton/android/domain/repository/LoginStateRepository;Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;Lcom/vuitton/android/data/datasource/analytic/AnalyticLocalDataSource;Lcom/vuitton/android/data/datasource/analytic/AnalyticRemoteDataSource;Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;)V

    return-object v1

    :pswitch_22
    new-instance v2, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->U:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->L0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/TwistAuthRepository;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->N0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->P0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/time/TimeProvider;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/vuitton/foundation/logger/Logger;

    move-object v4, v0

    invoke-direct/range {v2 .. v7}, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;-><init>(Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/domain/repository/TwistAuthRepository;Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;Lcom/vuitton/foundation/model/domain/model/time/TimeProvider;Lcom/vuitton/foundation/logger/Logger;)V

    return-object v2

    :pswitch_23
    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/logger/Logger;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v1, v1, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v1}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/data/datasource/di/DataSourceDiModule;->a:Lcom/vuitton/android/data/datasource/di/DataSourceDiModule$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/data/datasource/analytic/AnalyticRemoteDataSource;

    invoke-direct {v2, v0, v1}, Lcom/vuitton/android/data/datasource/analytic/AnalyticRemoteDataSource;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/google/firebase/analytics/FirebaseAnalytics;)V

    return-object v2

    :pswitch_24
    sget-object v0, Lcom/vuitton/android/data/datasource/di/DataSourceDiModule;->a:Lcom/vuitton/android/data/datasource/di/DataSourceDiModule$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/data/datasource/analytic/AnalyticLocalDataSource;

    invoke-direct {v0}, Lcom/vuitton/android/data/datasource/analytic/AnalyticLocalDataSource;-><init>()V

    return-object v0

    :pswitch_25
    new-instance v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->x()Lcom/vuitton/android/data/api/bff/user/AuthApi;

    move-result-object v3

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;

    iget-object v5, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->P:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/domain/repository/LoginStateRepository;

    iget-object v6, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G0:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;

    iget-object v7, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->I0:Ldagger/internal/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/data/datasource/analytic/AnalyticLocalDataSource;

    iget-object v8, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->J0:Ldagger/internal/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/data/datasource/analytic/AnalyticRemoteDataSource;

    iget-object v9, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F:Ldagger/internal/Provider;

    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;

    iget-object v4, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lkotlinx/serialization/json/Json;

    move-object v4, v0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/api/bff/user/AuthApi;Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;Lcom/vuitton/android/domain/repository/LoginStateRepository;Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;Lcom/vuitton/android/data/datasource/analytic/AnalyticLocalDataSource;Lcom/vuitton/android/data/datasource/analytic/AnalyticRemoteDataSource;Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;Lkotlinx/serialization/json/Json;)V

    return-object v1

    :pswitch_26
    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;

    sget-object v2, Ljava/net/CookiePolicy;->ACCEPT_ALL:Ljava/net/CookiePolicy;

    invoke-direct {v1, v0, v2}, Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;-><init>(Lcom/vuitton/foundation/logger/Logger;Ljava/net/CookiePolicy;)V

    return-object v1

    :pswitch_27
    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lokhttp3/JavaNetCookieJar;

    invoke-direct {v1, v0}, Lokhttp3/JavaNetCookieJar;-><init>(Ljava/net/CookieHandler;)V

    return-object v1

    :pswitch_28
    new-instance v0, Lcom/vuitton/android/data/net/serialization/retrofit/KotlinxSerializationConverterFactory;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/json/Json;

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/net/serialization/retrofit/KotlinxSerializationConverterFactory;-><init>(Lkotlinx/serialization/json/Json;)V

    return-object v0

    :pswitch_29
    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->e:Lcom/vuitton/android/data/di/auth/AuthenticationDiModule;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v7, v1, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v7}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/vuitton/foundation/logger/Logger;

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F0:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/vuitton/android/data/net/serialization/retrofit/KotlinxSerializationConverterFactory;

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lkotlinx/serialization/json/Json;

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->H0:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lokhttp3/CookieJar;

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->U:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->L0:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/vuitton/android/domain/repository/TwistAuthRepository;

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->Q0:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->e0:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/vuitton/android/domain/repository/AppConfigRepository;

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->X:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->i0:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/vuitton/android/domain/provider/feature/FeatureCheckerProvider;

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->b0:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    new-instance v2, Lcom/vuitton/android/data/net/ProdUrls;

    iget-object v3, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    invoke-direct {v2, v3}, Lcom/vuitton/android/data/net/ProdUrls;-><init>(Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V

    iget-object v3, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->Z:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;

    iget-object v1, v1, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v1}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    sget-object v1, Lkotlin/collections/EmptySet;->b:Lkotlin/collections/EmptySet;

    invoke-static {v1}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->s(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v21

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/vuitton/android/data/net/RetrofitFactory;

    move-object/from16 v18, v2

    invoke-direct/range {v5 .. v21}, Lcom/vuitton/android/data/net/RetrofitFactory;-><init>(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Lcom/vuitton/android/data/net/serialization/retrofit/KotlinxSerializationConverterFactory;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/domain/repository/TwistAuthRepository;Lcom/vuitton/android/domain/repository/AppConfigRepository;Lcom/vuitton/android/domain/repository/InAppDispatchRepository;Lcom/vuitton/android/domain/provider/feature/FeatureCheckerProvider;Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;Lokhttp3/CookieJar;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Lcom/vuitton/android/data/net/ProdUrls;Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;Ljava/util/Set;)V

    return-object v5

    :pswitch_2a
    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/net/BffApi;->USER_API:Lcom/vuitton/android/data/net/BffApi;

    sget-object v2, Lcom/vuitton/android/data/net/AuthRequirement;->ADD_SFID_AND_SLAS_HEADERS_ONLY_FOR_TWIST_LOGGED_IN_USER:Lcom/vuitton/android/data/net/AuthRequirement;

    invoke-virtual {v1, v0, v2}, Lcom/vuitton/android/data/net/RetrofitFactory;->c(Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/user/TwistAccountApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/user/TwistAccountApi;

    return-object v0

    :pswitch_2b
    new-instance v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/logger/Logger;

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->S0:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/api/bff/user/TwistAccountApi;

    iget-object v3, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->T0:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/data/api/bff/user/ProfileApi;

    invoke-direct {v0, v1, v2, v3}, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/api/bff/user/TwistAccountApi;Lcom/vuitton/android/data/api/bff/user/ProfileApi;)V

    return-object v0

    :pswitch_2c
    new-instance v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->U0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->b1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;

    new-instance v7, Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/logger/Logger;

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->T0:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/api/bff/user/ProfileApi;

    iget-object v3, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->U:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    invoke-direct {v7, v1, v2, v3}, Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/api/bff/user/ProfileApi;Lcom/vuitton/android/domain/repository/AuthTokenRepository;)V

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/vuitton/android/data/datasource/account/AccountRemoteDataSource;

    new-instance v9, Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->e1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/data/api/bff/user/AddressesApi;

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/logger/Logger;

    new-instance v3, Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper;

    invoke-direct {v3}, Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper;-><init>()V

    invoke-direct {v9, v1, v2, v3}, Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;-><init>(Lcom/vuitton/android/data/api/bff/user/AddressesApi;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper;)V

    new-instance v10, Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G:Ldagger/internal/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->a(Ldagger/internal/Provider;)Ldagger/Lazy;

    move-result-object v1

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/json/Json;

    invoke-direct {v10, v1, v2}, Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;-><init>(Ldagger/Lazy;Lkotlinx/serialization/json/Json;)V

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/vuitton/android/data/api/bff/user/UserWorldwideIdApi;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->H:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->I:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->K:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lkotlinx/serialization/json/Json;

    move-object v4, v0

    invoke-direct/range {v4 .. v17}, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;-><init>(Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource;Lcom/vuitton/android/data/datasource/account/AccountRemoteDataSource;Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;Lcom/vuitton/android/data/api/bff/user/UserWorldwideIdApi;Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;Lcom/vuitton/android/domain/repository/UserPreferencesRepository;Lkotlinx/serialization/json/Json;)V

    return-object v4

    :pswitch_2d
    new-instance v0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;-><init>(Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V

    return-object v0

    :pswitch_2e
    new-instance v2, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/vuitton/foundation/logger/Logger;

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v0, v0, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v6

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B()Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-result-object v7

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->A()Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomizationUseCase;

    move-result-object v8

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->K:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/vuitton/android/core/events/LVEventSender;

    move-object v4, v0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;-><init>(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomizationUseCase;Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;Lcom/vuitton/android/domain/repository/UserPreferencesRepository;Lcom/vuitton/android/core/events/LVEventSender;)V

    return-object v2

    :pswitch_2f
    new-instance v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;-><init>()V

    return-object v0

    :pswitch_30
    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;-><init>(Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V

    return-object v0

    :pswitch_31
    new-instance v2, Lcom/vuitton/android/data/repository/AccessibilityPreferencesRepositoryImpl;

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/vuitton/foundation/logger/Logger;

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v0, v0, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G:Ldagger/internal/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->a(Ldagger/internal/Provider;)Ldagger/Lazy;

    move-result-object v5

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lkotlinx/serialization/json/Json;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->i0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/vuitton/android/domain/provider/feature/FeatureCheckerProvider;

    move-object v4, v0

    invoke-direct/range {v2 .. v7}, Lcom/vuitton/android/data/repository/AccessibilityPreferencesRepositoryImpl;-><init>(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Ldagger/Lazy;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/domain/provider/feature/FeatureCheckerProvider;)V

    return-object v2

    :pswitch_32
    new-instance v0, Lcom/vuitton/android/data/repository/LoggerAnalyticsRepositoryImpl;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/logger/Logger;

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/repository/LoggerAnalyticsRepositoryImpl;-><init>(Lcom/vuitton/foundation/logger/Logger;)V

    return-object v0

    :pswitch_33
    new-instance v2, Lcom/vuitton/android/data/repository/CrashlyticsAnalyticsRepositoryImpl;

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/vuitton/foundation/logger/Logger;

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v0, v0, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->p0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/vuitton/android/domain/repository/ConsentRepository;

    new-instance v6, Lcom/vuitton/android/data/analytics/builder/CrashlyticsAnalyticsHitBuilder;

    invoke-direct {v6}, Lcom/vuitton/android/data/analytics/builder/CrashlyticsAnalyticsHitBuilder;-><init>()V

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    move-object v4, v0

    invoke-direct/range {v2 .. v7}, Lcom/vuitton/android/data/repository/CrashlyticsAnalyticsRepositoryImpl;-><init>(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Lcom/vuitton/android/domain/repository/ConsentRepository;Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V

    return-object v2

    :pswitch_34
    new-instance v3, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/logger/Logger;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v5, v1, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v5}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->p0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/vuitton/android/domain/repository/ConsentRepository;

    new-instance v7, Lcom/vuitton/android/data/analytics/builder/SensorsDataUserPropertyBuilder;

    invoke-direct {v7}, Lcom/vuitton/android/data/analytics/builder/SensorsDataUserPropertyBuilder;-><init>()V

    new-instance v8, Lcom/vuitton/android/data/analytics/builder/SensorsDataAnalyticsHitBuilder;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->K:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->b0:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    iget-object v9, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y:Ldagger/internal/Provider;

    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    invoke-direct {v8, v1, v2, v9}, Lcom/vuitton/android/data/analytics/builder/SensorsDataAnalyticsHitBuilder;-><init>(Lcom/vuitton/android/domain/repository/UserPreferencesRepository;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->b0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    move-object v4, v0

    invoke-direct/range {v3 .. v11}, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;-><init>(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Lcom/vuitton/android/domain/repository/ConsentRepository;Lcom/vuitton/android/data/analytics/builder/AnalyticsUserPropertyBuilder;Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V

    return-object v3

    :pswitch_35
    new-instance v0, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/content/SharedPreferences;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->X:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lkotlinx/serialization/json/Json;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/vuitton/foundation/logger/Logger;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Lcom/vuitton/android/domain/repository/InAppDispatchRepository;Lkotlinx/serialization/json/Json;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V

    return-object v4

    :pswitch_36
    new-instance v5, Lcom/vuitton/android/data/repository/FirebaseAnalyticsRepositoryImpl;

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/vuitton/foundation/logger/Logger;

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v7, v0, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v7}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->p0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/vuitton/android/domain/repository/ConsentRepository;

    new-instance v9, Lcom/vuitton/android/data/analytics/builder/FirebaseUserPropertyBuilder;

    invoke-direct {v9}, Lcom/vuitton/android/data/analytics/builder/FirebaseUserPropertyBuilder;-><init>()V

    new-instance v10, Lcom/vuitton/android/data/analytics/builder/FirebaseAnalyticsHitBuilder;

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->K:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->b0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    invoke-direct {v10, v0, v1, v2}, Lcom/vuitton/android/data/analytics/builder/FirebaseAnalyticsHitBuilder;-><init>(Lcom/vuitton/android/domain/repository/UserPreferencesRepository;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V

    invoke-direct/range {v5 .. v10}, Lcom/vuitton/android/data/repository/FirebaseAnalyticsRepositoryImpl;-><init>(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Lcom/vuitton/android/domain/repository/ConsentRepository;Lcom/vuitton/android/data/analytics/builder/AnalyticsUserPropertyBuilder;Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;)V

    return-object v5

    :pswitch_37
    new-instance v6, Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl;

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/vuitton/foundation/logger/Logger;

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v8, v0, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v8}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->r0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/vuitton/android/domain/repository/AnalyticsRepository;

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->t0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/vuitton/android/domain/repository/AnalyticsRepository;

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/vuitton/android/domain/repository/AnalyticsRepository;

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->x0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/vuitton/android/domain/repository/AnalyticsRepository;

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    invoke-direct/range {v6 .. v13}, Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl;-><init>(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Lcom/vuitton/android/domain/repository/AnalyticsRepository;Lcom/vuitton/android/domain/repository/AnalyticsRepository;Lcom/vuitton/android/domain/repository/AnalyticsRepository;Lcom/vuitton/android/domain/repository/AnalyticsRepository;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V

    return-object v6

    :pswitch_38
    sget-object v0, Lcom/vuitton/android/presentation/di/AppModule;->a:Lcom/vuitton/android/presentation/CacheFactory;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/vuitton/android/presentation/CacheFactory;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    return-object v0

    :cond_2
    return-object v3

    :pswitch_39
    new-instance v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider$1;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider$1;-><init>(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;)V

    return-object v1

    :pswitch_3a
    new-instance v0, Lcom/vuitton/android/data/repository/SharedPreferencesRepositoryImpl;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G:Ldagger/internal/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->a(Ldagger/internal/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/repository/SharedPreferencesRepositoryImpl;-><init>(Ldagger/Lazy;)V

    return-object v0

    :pswitch_3b
    new-instance v0, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/data/datasource/config/EnvironmentDataSource;

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G:Ldagger/internal/Provider;

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->a(Ldagger/internal/Provider;)Ldagger/Lazy;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vuitton/android/data/datasource/config/EnvironmentDataSource;-><init>(Ldagger/Lazy;)V

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/secrets/SecretsProvider;

    iget-object v3, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    invoke-direct {v0, v1, v2, v3}, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;-><init>(Lcom/vuitton/android/data/datasource/config/EnvironmentDataSource;Lcom/vuitton/foundation/secrets/SecretsProvider;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V

    return-object v0

    :pswitch_3c
    new-instance v0, Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G:Ldagger/internal/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->a(Ldagger/internal/Provider;)Ldagger/Lazy;

    move-result-object v1

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;-><init>(Ldagger/Lazy;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V

    return-object v0

    :pswitch_3d
    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v0, v0, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    const-string v2, "app_config_sp"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_3e
    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v3, v2, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v3}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    new-instance v5, Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;

    iget-object v6, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    iget-object v7, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->Y:Ldagger/internal/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/SharedPreferences;

    iget-object v8, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlinx/serialization/json/Json;

    invoke-direct {v5, v6, v7, v8}, Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;-><init>(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Landroid/content/SharedPreferences;Lkotlinx/serialization/json/Json;)V

    iget-object v6, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->Z:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;

    iget-object v7, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->b0:Ldagger/internal/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    iget-object v8, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->X:Ldagger/internal/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    iget-object v4, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    iget-object v2, v2, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v2}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    sget-object v2, Lkotlin/collections/EmptySet;->b:Lkotlin/collections/EmptySet;

    invoke-static {v2}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/google/common/collect/ImmutableSet;->s(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v9, Lcom/vuitton/android/data/net/interceptor/BOLocaleInterceptor;

    new-instance v10, Lu6;

    invoke-direct {v10, v8, v1}, Lu6;-><init>(Lcom/vuitton/android/domain/repository/InAppDispatchRepository;I)V

    new-instance v1, Lw1;

    const/4 v8, 0x7

    invoke-direct {v1, v5, v8}, Lw1;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v9, v7, v10, v1}, Lcom/vuitton/android/data/net/interceptor/BOLocaleInterceptor;-><init>(Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iget-object v1, v0, Lokhttp3/OkHttpClient$Builder;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/vuitton/android/data/net/interceptor/AkamaiBotProtectionInterceptor;

    invoke-direct {v5, v7}, Lcom/vuitton/android/data/net/interceptor/AkamaiBotProtectionInterceptor;-><init>(Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/vuitton/android/data/net/interceptor/DeviceIdInterceptor;

    invoke-direct {v5, v6}, Lcom/vuitton/android/data/net/interceptor/DeviceIdInterceptor;-><init>(Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/vuitton/android/data/net/interceptor/MobileCorrelationIdInterceptor;

    invoke-direct {v5, v7}, Lcom/vuitton/android/data/net/interceptor/MobileCorrelationIdInterceptor;-><init>(Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/vuitton/android/data/net/interceptor/UserAgentInterceptor;

    invoke-direct {v5, v3, v4}, Lcom/vuitton/android/data/net/interceptor/UserAgentInterceptor;-><init>(Landroid/content/Context;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/Interceptor;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lokhttp3/OkHttpClient$Builder;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1, v0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    iput-object v1, v0, Lretrofit2/Retrofit$Builder;->a:Lokhttp3/Call$Factory;

    new-instance v1, Lcom/vuitton/android/data/net/serialization/retrofit/KotlinxSerializationConverterFactory;

    sget-object v2, Lcom/vuitton/android/core/platform/serialization/JsonProviderKt;->a:Lkotlinx/serialization/json/Json;

    invoke-direct {v1, v2}, Lcom/vuitton/android/data/net/serialization/retrofit/KotlinxSerializationConverterFactory;-><init>(Lkotlinx/serialization/json/Json;)V

    invoke-virtual {v1}, Lcom/vuitton/android/data/net/serialization/retrofit/KotlinxSerializationConverterFactory;->a()Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Factory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->a(Lretrofit2/Converter$Factory;)V

    invoke-interface {v7}, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->d()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/publication/ConfigurationApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/publication/ConfigurationApi;

    return-object v0

    :pswitch_3f
    new-instance v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl;

    new-instance v1, Lcom/vuitton/android/data/datasource/config/AppConfigRemoteDataSource;

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->c0:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/api/bff/publication/ConfigurationApi;

    invoke-direct {v1, v2}, Lcom/vuitton/android/data/datasource/config/AppConfigRemoteDataSource;-><init>(Lcom/vuitton/android/data/api/bff/publication/ConfigurationApi;)V

    new-instance v2, Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;

    iget-object v3, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    iget-object v5, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->Y:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/SharedPreferences;

    iget-object v6, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlinx/serialization/json/Json;

    invoke-direct {v2, v3, v5, v6}, Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;-><init>(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Landroid/content/SharedPreferences;Lkotlinx/serialization/json/Json;)V

    new-instance v3, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;

    iget-object v5, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    iget-object v4, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SharedPreferences;

    invoke-direct {v3, v5, v4}, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;-><init>(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Landroid/content/SharedPreferences;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl;-><init>(Lcom/vuitton/android/data/datasource/config/AppConfigRemoteDataSource;Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;)V

    return-object v0

    :pswitch_40
    sget-object v0, Lcom/vuitton/android/data/datasource/di/DataSourceDiModule;->a:Lcom/vuitton/android/data/datasource/di/DataSourceDiModule$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/datasource/di/DataSourceDiModule$Companion;->b:Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;

    invoke-static {v0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object v0

    :pswitch_41
    new-instance v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/logger/Logger;

    new-instance v2, Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource;

    iget-object v3, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    iget-object v5, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/serialization/json/Json;

    iget-object v6, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G:Ldagger/internal/Provider;

    invoke-static {v6}, Ldagger/internal/DoubleCheck;->a(Ldagger/internal/Provider;)Ldagger/Lazy;

    move-result-object v6

    invoke-direct {v2, v3, v5, v6}, Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource;-><init>(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lkotlinx/serialization/json/Json;Ldagger/Lazy;)V

    iget-object v3, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->V:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;

    invoke-direct {v0, v1, v2, v3}, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource;Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;)V

    return-object v0

    :pswitch_42
    new-instance v0, Lcom/vuitton/android/presentation/di/provider/FeatureCheckerProviderImpl;

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/di/provider/FeatureCheckerProviderImpl;-><init>(Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V

    return-object v0

    :pswitch_43
    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->i0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/provider/feature/FeatureCheckerProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/di/core/CoreDiModule$Companion$provideTwistFeature$1;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/di/core/CoreDiModule$Companion$provideTwistFeature$1;-><init>(Lcom/vuitton/android/domain/provider/feature/FeatureCheckerProvider;)V

    return-object v1

    :pswitch_44
    new-instance v0, Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSourceImpl;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G:Ldagger/internal/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->a(Ldagger/internal/Provider;)Ldagger/Lazy;

    move-result-object v1

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSourceImpl;-><init>(Ldagger/Lazy;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V

    return-object v0

    :pswitch_45
    new-instance v0, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G:Ldagger/internal/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->a(Ldagger/internal/Provider;)Ldagger/Lazy;

    move-result-object v1

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;-><init>(Ldagger/Lazy;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V

    return-object v0

    :pswitch_46
    new-instance v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->T:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSource;

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl;-><init>(Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSource;)V

    return-object v0

    :pswitch_47
    new-instance v0, Lcom/vuitton/android/data/repository/LoginStateRepositoryImpl;

    invoke-direct {v0}, Lcom/vuitton/android/data/repository/LoginStateRepositoryImpl;-><init>()V

    return-object v0

    :pswitch_48
    new-instance v0, Lcom/vuitton/android/data/datasource/hotcontent/HotContentLocalDataSource;

    invoke-direct {v0}, Lcom/vuitton/android/data/datasource/hotcontent/HotContentLocalDataSource;-><init>()V

    return-object v0

    :pswitch_49
    new-instance v0, Lcom/vuitton/android/data/datasource/avatar/AvatarLocalDataSource;

    invoke-direct {v0}, Lcom/vuitton/android/data/datasource/avatar/AvatarLocalDataSource;-><init>()V

    return-object v0

    :pswitch_4a
    new-instance v0, Lcom/vuitton/android/data/repository/UserPreferencesRepositoryImpl;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G:Ldagger/internal/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->a(Ldagger/internal/Provider;)Ldagger/Lazy;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/data/datasource/config/EnvironmentDataSource;

    iget-object v3, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G:Ldagger/internal/Provider;

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->a(Ldagger/internal/Provider;)Ldagger/Lazy;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vuitton/android/data/datasource/config/EnvironmentDataSource;-><init>(Ldagger/Lazy;)V

    iget-object v3, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-direct {v0, v1, v2, v3}, Lcom/vuitton/android/data/repository/UserPreferencesRepositoryImpl;-><init>(Ldagger/Lazy;Lcom/vuitton/android/data/datasource/config/EnvironmentDataSource;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V

    return-object v0

    :pswitch_4b
    new-instance v0, Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;

    invoke-direct {v0}, Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;-><init>()V

    return-object v0

    :pswitch_4c
    new-instance v0, Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;

    invoke-direct {v0}, Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;-><init>()V

    return-object v0

    :pswitch_4d
    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v0, v0, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    const-string v1, "SP_MYLV_ENC"

    invoke-static {v0, v1}, Lcom/vuitton/android/data/di/sharedpreferences/SharedPreferencesFactory;->a(Landroid/content/Context;Ljava/lang/String;)Landroidx/security/crypto/EncryptedSharedPreferences;

    move-result-object v0

    return-object v0

    :pswitch_4e
    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->c:Lcom/vuitton/android/data/net/serialization/di/SerializationModule;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/core/platform/serialization/JsonProviderKt;->a:Lkotlinx/serialization/json/Json;

    invoke-static {v0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object v0

    :pswitch_4f
    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v0, v0, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    sget-object v2, Lcom/vuitton/android/data/di/datastore/DataStoreDiModuleKt;->b:Landroidx/datastore/preferences/PreferenceDataStoreSingletonDelegate;

    sget-object v3, Lcom/vuitton/android/data/di/datastore/DataStoreDiModuleKt;->a:[Lkotlin/reflect/KProperty;

    aget-object v1, v3, v1

    invoke-virtual {v2, v0, v1}, Landroidx/datastore/preferences/PreferenceDataStoreSingletonDelegate;->b(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/core/DataStore;

    return-object v0

    :pswitch_50
    new-instance v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/datastore/core/DataStore;

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/json/Json;

    iget-object v3, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    iget-object v4, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/logger/Logger;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;-><init>(Landroidx/datastore/core/DataStore;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/foundation/logger/Logger;)V

    return-object v0

    :pswitch_51
    new-instance v0, Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;

    invoke-direct {v0}, Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;-><init>()V

    return-object v0

    :pswitch_52
    new-instance v0, Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;

    invoke-direct {v0}, Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;-><init>()V

    return-object v0

    :pswitch_53
    new-instance v1, Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl;

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/vuitton/foundation/logger/Logger;

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;

    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->C:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;

    iget-object v5, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;

    new-instance v6, Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;

    iget-object v7, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G:Ldagger/internal/Provider;

    invoke-static {v7}, Ldagger/internal/DoubleCheck;->a(Ldagger/internal/Provider;)Ldagger/Lazy;

    move-result-object v7

    iget-object v8, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlinx/serialization/json/Json;

    invoke-direct {v6, v7, v8}, Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;-><init>(Ldagger/Lazy;Lkotlinx/serialization/json/Json;)V

    iget-object v7, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->H:Ldagger/internal/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;

    iget-object v8, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->I:Ldagger/internal/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;

    iget-object v9, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->K:Ldagger/internal/Provider;

    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    iget-object v10, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->L:Ldagger/internal/Provider;

    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/data/datasource/avatar/AvatarLocalDataSource;

    iget-object v4, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->M:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/vuitton/android/data/datasource/hotcontent/HotContentLocalDataSource;

    move-object v4, v0

    invoke-direct/range {v1 .. v11}, Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;Lcom/vuitton/android/domain/repository/UserPreferencesRepository;Lcom/vuitton/android/data/datasource/avatar/AvatarLocalDataSource;Lcom/vuitton/android/data/datasource/hotcontent/HotContentLocalDataSource;)V

    return-object v1

    :pswitch_54
    new-instance v0, Lcom/vuitton/android/data/repository/AppsFlyerRepositoryImpl;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v1, v1, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v1}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v3

    iget-object v4, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->K:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vuitton/android/data/repository/AppsFlyerRepositoryImpl;-><init>(Landroid/content/Context;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/repository/UserPreferencesRepository;)V

    return-object v0

    :pswitch_55
    new-instance v0, Lcom/vuitton/android/presentation/repository/AutomatedTestRepositoryProdImpl;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/repository/AutomatedTestRepositoryProdImpl;-><init>()V

    return-object v0

    :pswitch_56
    new-instance v0, Lcom/vuitton/android/presentation/provider/buildconfig/BuildConfigProviderImpl;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/provider/buildconfig/BuildConfigProviderImpl;-><init>()V

    return-object v0

    :pswitch_57
    new-instance v0, Lcom/vuitton/android/core/events/LVEventSender;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/logger/Logger;

    invoke-direct {v0, v1}, Lcom/vuitton/android/core/events/LVEventSender;-><init>(Lcom/vuitton/foundation/logger/Logger;)V

    return-object v0

    :pswitch_58
    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/LVTrunkDeviceManager;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/core/events/LVEventSender;

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v2, v2, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v2}, Ldagger/hilt/android/internal/Contexts;->a(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/LVTrunkDeviceManager;-><init>(Lcom/vuitton/android/core/events/LVEventSender;Landroid/app/Application;)V

    return-object v0

    :pswitch_59
    new-instance v0, Lcom/vuitton/android/data/reporter/CrashlyticsCrashReporter;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v1, v1, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v1}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/logger/Logger;

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/data/reporter/CrashlyticsCrashReporter;-><init>(Landroid/content/Context;Lcom/vuitton/foundation/logger/Logger;)V

    return-object v0

    :pswitch_5a
    new-instance v0, Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;

    invoke-direct {v0}, Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;-><init>()V

    return-object v0

    :pswitch_5b
    new-instance v0, Lcom/vuitton/android/data/repository/InAppBannerRepositoryImpl;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->o:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/repository/InAppBannerRepositoryImpl;-><init>(Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;)V

    return-object v0

    :pswitch_5c
    iget-object v0, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->b:Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule;->b:Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule$Companion$DefaultCoroutineDispatchers$1;

    invoke-static {v0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object v0

    :pswitch_5d
    new-instance v0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerStateHolder;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    new-instance v2, Lcom/vuitton/android/domain/usecase/inappbanner/ObserveActiveInAppBannerUseCase;

    iget-object v3, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->q:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/repository/InAppBannerRepository;

    invoke-direct {v2, v3}, Lcom/vuitton/android/domain/usecase/inappbanner/ObserveActiveInAppBannerUseCase;-><init>(Lcom/vuitton/android/domain/repository/InAppBannerRepository;)V

    new-instance v3, Lcom/vuitton/android/domain/usecase/inappbanner/SaveActiveInAppBannerUseCase;

    iget-object v5, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->q:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/domain/repository/InAppBannerRepository;

    invoke-direct {v3, v5}, Lcom/vuitton/android/domain/usecase/inappbanner/SaveActiveInAppBannerUseCase;-><init>(Lcom/vuitton/android/domain/repository/InAppBannerRepository;)V

    new-instance v5, Lcom/vuitton/android/domain/usecase/inappbanner/ClearActiveInAppBannerUseCase;

    iget-object v4, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->q:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/repository/InAppBannerRepository;

    invoke-direct {v5, v4}, Lcom/vuitton/android/domain/usecase/inappbanner/ClearActiveInAppBannerUseCase;-><init>(Lcom/vuitton/android/domain/repository/InAppBannerRepository;)V

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/vuitton/android/presentation/inappbanner/InAppBannerStateHolder;-><init>(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/android/domain/usecase/inappbanner/ObserveActiveInAppBannerUseCase;Lcom/vuitton/android/domain/usecase/inappbanner/SaveActiveInAppBannerUseCase;Lcom/vuitton/android/domain/usecase/inappbanner/ClearActiveInAppBannerUseCase;)V

    return-object v0

    :pswitch_5e
    new-instance v0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerSupervisor;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->r:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/inappbanner/InAppBannerStateHolder;

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->t:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/reporter/CrashReporter;

    iget-object v3, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->m:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/platform/activity/CurrentActivityProvider;

    invoke-direct {v0, v1, v2, v3}, Lcom/vuitton/android/presentation/inappbanner/InAppBannerSupervisor;-><init>(Lcom/vuitton/android/presentation/inappbanner/InAppBannerStateHolder;Lcom/vuitton/android/domain/reporter/CrashReporter;Lcom/vuitton/android/platform/activity/CurrentActivityProvider;)V

    return-object v0

    :pswitch_5f
    new-instance v0, Lcom/vuitton/android/platform/activity/CurrentActivityTracker;

    invoke-direct {v0}, Lcom/vuitton/android/platform/activity/CurrentActivityTracker;-><init>()V

    return-object v0

    :pswitch_60
    new-instance v0, Lcom/vuitton/android/platform/security/RootDetector;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v1, v1, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v1}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/logger/Logger;

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/platform/security/RootDetector;-><init>(Landroid/content/Context;Lcom/vuitton/foundation/logger/Logger;)V

    return-object v0

    :pswitch_61
    new-instance v0, Lcom/vuitton/foundation/secrets/ObfuscatedSecretsProvider;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/logger/Logger;

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/secrets/ObfuscatedSecretsProvider;-><init>(Lcom/vuitton/foundation/logger/Logger;)V

    return-object v0

    :pswitch_62
    new-instance v0, Lcom/vuitton/android/presentation/di/EnvironmentImpl;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/di/EnvironmentImpl;-><init>()V

    return-object v0

    :pswitch_63
    new-instance v0, Lcom/vuitton/foundation/logger/LoggerImpl;

    iget-object v1, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->i:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/contracts/environment/Environment;

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/logger/LoggerImpl;-><init>(Lcom/vuitton/foundation/contracts/environment/Environment;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final get()Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;->b:I

    div-int/lit8 v2, v1, 0x64

    if-eqz v2, :cond_2

    const/4 v3, 0x6

    const/4 v4, 0x0

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v2, v5, :cond_1

    if-ne v2, v6, :cond_0

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :pswitch_0
    new-instance v1, Lcom/vuitton/android/data/repository/DeviceIdRepositoryImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->Z:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;

    invoke-direct {v1, v0}, Lcom/vuitton/android/data/repository/DeviceIdRepositoryImpl;-><init>(Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;)V

    return-object v1

    :pswitch_1
    new-instance v1, Lcom/vuitton/android/data/repository/TravelRepositoryImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->H2:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/api/connectivity/WatchApiV2;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->U:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    invoke-direct {v1, v2, v0}, Lcom/vuitton/android/data/repository/TravelRepositoryImpl;-><init>(Lcom/vuitton/android/data/api/connectivity/WatchApiV2;Lcom/vuitton/android/domain/repository/AuthTokenRepository;)V

    return-object v1

    :pswitch_2
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->PUBLICATION_API:Lcom/vuitton/android/data/net/BffApi;

    invoke-static {v0, v1, v4, v3}, Lcom/vuitton/android/data/net/RetrofitFactory;->a(Lcom/vuitton/android/data/net/RetrofitFactory;Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;I)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/publication/StoryApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/publication/StoryApi;

    return-object v0

    :pswitch_3
    new-instance v1, Lcom/vuitton/android/data/repository/StoryRepositoryImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->C5:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/api/bff/publication/StoryApi;

    invoke-direct {v1, v0}, Lcom/vuitton/android/data/repository/StoryRepositoryImpl;-><init>(Lcom/vuitton/android/data/api/bff/publication/StoryApi;)V

    return-object v1

    :pswitch_4
    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v0, v0, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    sget-object v1, Landroidx/work/WorkManager;->a:Landroidx/work/WorkManager$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/work/impl/WorkManagerImpl;->d(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_5
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->PUBLICATION_API:Lcom/vuitton/android/data/net/BffApi;

    invoke-static {v0, v1, v4, v3}, Lcom/vuitton/android/data/net/RetrofitFactory;->a(Lcom/vuitton/android/data/net/RetrofitFactory;Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;I)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/publication/SpotlightApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/publication/SpotlightApi;

    return-object v0

    :pswitch_6
    new-instance v1, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y5:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/api/bff/publication/SpotlightApi;

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->z5:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/work/WorkManager;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-direct {v1, v2, v3, v0}, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl;-><init>(Lcom/vuitton/android/data/api/bff/publication/SpotlightApi;Landroidx/work/WorkManager;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V

    return-object v1

    :pswitch_7
    new-instance v1, Lcom/vuitton/android/data/repository/BotProtectionRepositoryImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v2, v2, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v2}, Ldagger/hilt/android/internal/Contexts;->a(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->b0:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/logger/Logger;

    invoke-direct {v1, v2, v3, v0}, Lcom/vuitton/android/data/repository/BotProtectionRepositoryImpl;-><init>(Landroid/app/Application;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Lcom/vuitton/foundation/logger/Logger;)V

    return-object v1

    :pswitch_8
    new-instance v0, Lcom/vuitton/android/data/repository/OpenAppTimestampRepositoryImpl;

    invoke-direct {v0}, Lcom/vuitton/android/data/repository/OpenAppTimestampRepositoryImpl;-><init>()V

    return-object v0

    :pswitch_9
    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v0, v0, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    const-string v1, "SP_MYLV"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_a
    new-instance v1, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->q5:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SharedPreferences;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->P0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/time/TimeProvider;

    invoke-direct {v1, v2, v3, v0}, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;-><init>(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Landroid/content/SharedPreferences;Lcom/vuitton/foundation/model/domain/model/time/TimeProvider;)V

    return-object v1

    :pswitch_b
    new-instance v1, Lcom/vuitton/android/data/repository/DeepLinkCacheRepositoryImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->s5:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheDataSource;

    invoke-direct {v1, v0}, Lcom/vuitton/android/data/repository/DeepLinkCacheRepositoryImpl;-><init>(Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheDataSource;)V

    return-object v1

    :pswitch_c
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->PUBLICATION_API:Lcom/vuitton/android/data/net/BffApi;

    invoke-static {v0, v1, v4, v3}, Lcom/vuitton/android/data/net/RetrofitFactory;->a(Lcom/vuitton/android/data/net/RetrofitFactory;Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;I)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/publication/MaintenanceApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/publication/MaintenanceApi;

    return-object v0

    :pswitch_d
    new-instance v1, Lcom/vuitton/android/data/repository/MaintenanceRepositoryImpl;

    new-instance v2, Lcom/vuitton/android/data/datasource/maintenance/MaintenanceRemoteDataSource;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n5:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/api/bff/publication/MaintenanceApi;

    invoke-direct {v2, v0}, Lcom/vuitton/android/data/datasource/maintenance/MaintenanceRemoteDataSource;-><init>(Lcom/vuitton/android/data/api/bff/publication/MaintenanceApi;)V

    invoke-direct {v1, v2}, Lcom/vuitton/android/data/repository/MaintenanceRepositoryImpl;-><init>(Lcom/vuitton/android/data/datasource/maintenance/MaintenanceRemoteDataSource;)V

    return-object v1

    :pswitch_e
    new-instance v1, Lcom/vuitton/android/data/repository/PerfectCorpRepositoryImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/logger/Logger;

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v3, v3, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v3}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->i0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/provider/feature/FeatureCheckerProvider;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/vuitton/android/data/repository/PerfectCorpRepositoryImpl;-><init>(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;Lcom/vuitton/android/domain/provider/feature/FeatureCheckerProvider;)V

    return-object v1

    :pswitch_f
    new-instance v1, Lcom/vuitton/android/data/repository/AppInitializationRepositoryImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v0, v0, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    invoke-direct {v1, v0}, Lcom/vuitton/android/data/repository/AppInitializationRepositoryImpl;-><init>(Landroid/content/Context;)V

    return-object v1

    :pswitch_10
    new-instance v1, Lcom/vuitton/android/data/repository/LoggerRepositoryTimberImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/logger/Logger;

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->z0:Ldagger/internal/Provider;

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->a(Ldagger/internal/Provider;)Ldagger/Lazy;

    move-result-object v3

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    invoke-direct {v1, v2, v3, v0}, Lcom/vuitton/android/data/repository/LoggerRepositoryTimberImpl;-><init>(Lcom/vuitton/foundation/logger/Logger;Ldagger/Lazy;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V

    return-object v1

    :pswitch_11
    new-instance v1, Lcom/vuitton/android/data/datasource/config/AppVersionProviderImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    invoke-direct {v1, v0}, Lcom/vuitton/android/data/datasource/config/AppVersionProviderImpl;-><init>(Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V

    return-object v1

    :pswitch_12
    new-instance v1, Lcom/vuitton/android/data/repository/AppVersionRepositoryImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->Y:Ldagger/internal/Provider;

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->a(Ldagger/internal/Provider;)Ldagger/Lazy;

    move-result-object v3

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f5:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/AppVersionProvider;

    invoke-direct {v1, v2, v3, v0}, Lcom/vuitton/android/data/repository/AppVersionRepositoryImpl;-><init>(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Ldagger/Lazy;Lcom/vuitton/android/domain/repository/AppVersionProvider;)V

    return-object v1

    :pswitch_13
    new-instance v0, Lcom/vuitton/android/data/repository/PhoneLocaleRepositoryImpl;

    invoke-direct {v0}, Lcom/vuitton/android/data/repository/PhoneLocaleRepositoryImpl;-><init>()V

    return-object v0

    :pswitch_14
    new-instance v1, Lcom/vuitton/android/presentation/di/notifications/NotificationsSdkProviderImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/di/notifications/NotificationsSdkProviderImpl;-><init>(Lcom/vuitton/android/presentation/push/NotificationsManager;)V

    return-object v1

    :pswitch_15
    new-instance v1, Lcom/vuitton/android/data/repository/NotificationsManagerRepositoryImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a5:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/core/notifications/NotificationsSdkProvider;

    invoke-direct {v1, v0}, Lcom/vuitton/android/data/repository/NotificationsManagerRepositoryImpl;-><init>(Lcom/vuitton/android/core/notifications/NotificationsSdkProvider;)V

    return-object v1

    :pswitch_16
    new-instance v1, Lcom/vuitton/android/data/monitoring/TingyunRepositoryImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v2, v2, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v2}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/secrets/SecretsProvider;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    invoke-direct {v1, v2, v3, v0}, Lcom/vuitton/android/data/monitoring/TingyunRepositoryImpl;-><init>(Landroid/content/Context;Lcom/vuitton/foundation/secrets/SecretsProvider;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V

    return-object v1

    :pswitch_17
    new-instance v1, Lcom/vuitton/android/data/monitoring/DynatraceRepositoryImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v2, v2, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v2}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/secrets/SecretsProvider;

    invoke-direct {v1, v2, v3, v0}, Lcom/vuitton/android/data/monitoring/DynatraceRepositoryImpl;-><init>(Landroid/content/Context;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;Lcom/vuitton/foundation/secrets/SecretsProvider;)V

    return-object v1

    :pswitch_18
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->PUBLICATION_API:Lcom/vuitton/android/data/net/BffApi;

    invoke-virtual {v0, v1}, Lcom/vuitton/android/data/net/RetrofitFactory;->b(Lcom/vuitton/android/data/net/BffApi;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/publication/PortalApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/publication/PortalApi;

    return-object v0

    :pswitch_19
    new-instance v1, Lcom/vuitton/android/data/repository/PortalRepositoryImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->T4:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/api/bff/publication/PortalApi;

    invoke-direct {v1, v0}, Lcom/vuitton/android/data/repository/PortalRepositoryImpl;-><init>(Lcom/vuitton/android/data/api/bff/publication/PortalApi;)V

    return-object v1

    :pswitch_1a
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->USER_API:Lcom/vuitton/android/data/net/BffApi;

    sget-object v2, Lcom/vuitton/android/data/net/AuthRequirement;->ADD_SFID_HEADER_FOR_PERMANENT_USER:Lcom/vuitton/android/data/net/AuthRequirement;

    invoke-static {v0, v1, v2, v6}, Lcom/vuitton/android/data/net/RetrofitFactory;->a(Lcom/vuitton/android/data/net/RetrofitFactory;Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;I)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/user/PersonalSelectionsApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/user/PersonalSelectionsApi;

    return-object v0

    :pswitch_1b
    new-instance v1, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->Q4:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/api/bff/user/PersonalSelectionsApi;

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->U:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v4

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/logger/Logger;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl;-><init>(Lcom/vuitton/android/data/api/bff/user/PersonalSelectionsApi;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/foundation/logger/Logger;)V

    return-object v1

    :pswitch_1c
    new-instance v1, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G:Ldagger/internal/Provider;

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->a(Ldagger/internal/Provider;)Ldagger/Lazy;

    move-result-object v2

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/logger/Logger;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/Json;

    invoke-direct {v1, v2, v3, v0}, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl;-><init>(Ldagger/Lazy;Lcom/vuitton/foundation/logger/Logger;Lkotlinx/serialization/json/Json;)V

    return-object v1

    :pswitch_1d
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->PUBLICATION_API:Lcom/vuitton/android/data/net/BffApi;

    invoke-static {v0, v1, v4, v6}, Lcom/vuitton/android/data/net/RetrofitFactory;->d(Lcom/vuitton/android/data/net/RetrofitFactory;Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;I)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/publication/LegalConsentApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/publication/LegalConsentApi;

    return-object v0

    :pswitch_1e
    new-instance v1, Lcom/vuitton/android/data/repository/LegalConsentRepositoryImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->L4:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/api/bff/publication/LegalConsentApi;

    invoke-direct {v1, v0}, Lcom/vuitton/android/data/repository/LegalConsentRepositoryImpl;-><init>(Lcom/vuitton/android/data/api/bff/publication/LegalConsentApi;)V

    return-object v1

    :pswitch_1f
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->CATALOG_API:Lcom/vuitton/android/data/net/BffApi;

    invoke-virtual {v0, v1}, Lcom/vuitton/android/data/net/RetrofitFactory;->b(Lcom/vuitton/android/data/net/BffApi;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/catalog/SearchApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/catalog/SearchApi;

    return-object v0

    :pswitch_20
    new-instance v1, Lcom/vuitton/android/data/repository/SearchRepositoryImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->I4:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/api/bff/catalog/SearchApi;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->C:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;

    invoke-direct {v1, v2, v0}, Lcom/vuitton/android/data/repository/SearchRepositoryImpl;-><init>(Lcom/vuitton/android/data/api/bff/catalog/SearchApi;Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;)V

    return-object v1

    :pswitch_21
    new-instance v1, Lcom/vuitton/android/data/repository/StoreRepositoryImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->p4:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/api/bff/catalog/StoreApi;

    invoke-direct {v1, v0}, Lcom/vuitton/android/data/repository/StoreRepositoryImpl;-><init>(Lcom/vuitton/android/data/api/bff/catalog/StoreApi;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :cond_1
    const/4 v2, 0x4

    packed-switch v1, :pswitch_data_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :pswitch_22
    new-instance v0, Lcom/vuitton/android/presentation/di/provider/SdkVersionProviderImpl;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/di/provider/SdkVersionProviderImpl;-><init>()V

    return-object v0

    :pswitch_23
    new-instance v0, Lcom/vuitton/android/data/repository/PermissionsRepositoryImpl;

    invoke-direct {v0}, Lcom/vuitton/android/data/repository/PermissionsRepositoryImpl;-><init>()V

    return-object v0

    :pswitch_24
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->PUBLICATION_API:Lcom/vuitton/android/data/net/BffApi;

    invoke-virtual {v0, v1}, Lcom/vuitton/android/data/net/RetrofitFactory;->b(Lcom/vuitton/android/data/net/BffApi;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/publication/ImmersiveArticleApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/publication/ImmersiveArticleApi;

    return-object v0

    :pswitch_25
    new-instance v1, Lcom/vuitton/android/data/repository/ImmersiveArticleRepositoryImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y4:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/api/bff/publication/ImmersiveArticleApi;

    invoke-direct {v1, v0}, Lcom/vuitton/android/data/repository/ImmersiveArticleRepositoryImpl;-><init>(Lcom/vuitton/android/data/api/bff/publication/ImmersiveArticleApi;)V

    return-object v1

    :pswitch_26
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->CATALOG_API:Lcom/vuitton/android/data/net/BffApi;

    invoke-virtual {v0, v1}, Lcom/vuitton/android/data/net/RetrofitFactory;->b(Lcom/vuitton/android/data/net/BffApi;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/publication/LandingPageApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/publication/LandingPageApi;

    return-object v0

    :pswitch_27
    new-instance v1, Lcom/vuitton/android/data/repository/LandingPageRepositoryImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v4:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/api/bff/publication/LandingPageApi;

    invoke-direct {v1, v0}, Lcom/vuitton/android/data/repository/LandingPageRepositoryImpl;-><init>(Lcom/vuitton/android/data/api/bff/publication/LandingPageApi;)V

    return-object v1

    :pswitch_28
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->USER_API:Lcom/vuitton/android/data/net/BffApi;

    invoke-static {v0, v1, v4, v6}, Lcom/vuitton/android/data/net/RetrofitFactory;->d(Lcom/vuitton/android/data/net/RetrofitFactory;Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;I)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/user/Model3dApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/user/Model3dApi;

    return-object v0

    :pswitch_29
    new-instance v1, Lcom/vuitton/android/data/repository/Model3dAssetRepositoryImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/logger/Logger;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->s4:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/api/bff/user/Model3dApi;

    invoke-direct {v1, v2, v0}, Lcom/vuitton/android/data/repository/Model3dAssetRepositoryImpl;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/api/bff/user/Model3dApi;)V

    return-object v1

    :pswitch_2a
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->CATALOG_API:Lcom/vuitton/android/data/net/BffApi;

    invoke-static {v0, v1, v4, v3}, Lcom/vuitton/android/data/net/RetrofitFactory;->a(Lcom/vuitton/android/data/net/RetrofitFactory;Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;I)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/catalog/StoreApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/catalog/StoreApi;

    return-object v0

    :pswitch_2b
    new-instance v1, Lcom/vuitton/android/data/repository/AvailabilityInStoreRepositoryImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->p4:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/api/bff/catalog/StoreApi;

    invoke-direct {v1, v0}, Lcom/vuitton/android/data/repository/AvailabilityInStoreRepositoryImpl;-><init>(Lcom/vuitton/android/data/api/bff/catalog/StoreApi;)V

    return-object v1

    :pswitch_2c
    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;-><init>()V

    return-object v0

    :pswitch_2d
    new-instance v1, Lcom/vuitton/android/data/repository/HotContentRepositoryImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->M:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/datasource/hotcontent/HotContentLocalDataSource;

    invoke-direct {v1, v0}, Lcom/vuitton/android/data/repository/HotContentRepositoryImpl;-><init>(Lcom/vuitton/android/data/datasource/hotcontent/HotContentLocalDataSource;)V

    return-object v1

    :pswitch_2e
    new-instance v1, Lcom/vuitton/android/data/repository/OnlineStoreAppointmentRepositoryImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/logger/Logger;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->w3:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/api/bff/user/AppointmentApi;

    invoke-direct {v1, v2, v0}, Lcom/vuitton/android/data/repository/OnlineStoreAppointmentRepositoryImpl;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/api/bff/user/AppointmentApi;)V

    return-object v1

    :pswitch_2f
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->PUBLICATION_API:Lcom/vuitton/android/data/net/BffApi;

    invoke-virtual {v0, v1}, Lcom/vuitton/android/data/net/RetrofitFactory;->b(Lcom/vuitton/android/data/net/BffApi;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/publication/FeedApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/publication/FeedApi;

    return-object v0

    :pswitch_30
    new-instance v1, Lcom/vuitton/android/data/repository/FeedRepositoryImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->h4:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/api/bff/publication/FeedApi;

    invoke-direct {v1, v0}, Lcom/vuitton/android/data/repository/FeedRepositoryImpl;-><init>(Lcom/vuitton/android/data/api/bff/publication/FeedApi;)V

    return-object v1

    :pswitch_31
    new-instance v1, Lcom/vuitton/android/data/repository/VideoRepositoryImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/logger/Logger;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->O2:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/api/bff/publication/VideoApi;

    invoke-direct {v1, v2, v0}, Lcom/vuitton/android/data/repository/VideoRepositoryImpl;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/api/bff/publication/VideoApi;)V

    return-object v1

    :pswitch_32
    new-instance v1, Lcom/vuitton/android/data/repository/CalendarRepositoryImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G:Ldagger/internal/Provider;

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->a(Ldagger/internal/Provider;)Ldagger/Lazy;

    move-result-object v2

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/Json;

    invoke-direct {v1, v2, v0}, Lcom/vuitton/android/data/repository/CalendarRepositoryImpl;-><init>(Ldagger/Lazy;Lkotlinx/serialization/json/Json;)V

    return-object v1

    :pswitch_33
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->USER_API:Lcom/vuitton/android/data/net/BffApi;

    sget-object v2, Lcom/vuitton/android/data/net/AuthRequirement;->ADD_SFID_AND_SLAS_HEADERS_ONLY_FOR_TWIST_LOGGED_IN_USER:Lcom/vuitton/android/data/net/AuthRequirement;

    invoke-virtual {v0, v1, v2}, Lcom/vuitton/android/data/net/RetrofitFactory;->c(Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/user/ExclusiveSalesApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/user/ExclusiveSalesApi;

    return-object v0

    :pswitch_34
    new-instance v1, Lcom/vuitton/android/data/repository/ExclusiveSalesRepositoryImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a4:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/api/bff/user/ExclusiveSalesApi;

    invoke-direct {v1, v0}, Lcom/vuitton/android/data/repository/ExclusiveSalesRepositoryImpl;-><init>(Lcom/vuitton/android/data/api/bff/user/ExclusiveSalesApi;)V

    return-object v1

    :pswitch_35
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/AuthRequirement;->TRIGGER_REFRESH_TOKEN:Lcom/vuitton/android/data/net/AuthRequirement;

    const/4 v2, 0x3

    invoke-static {v0, v4, v1, v2}, Lcom/vuitton/android/data/net/RetrofitFactory;->a(Lcom/vuitton/android/data/net/RetrofitFactory;Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;I)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/legacymulesoft/CareServicesApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/legacymulesoft/CareServicesApi;

    return-object v0

    :pswitch_36
    new-instance v1, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->X3:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/api/legacymulesoft/CareServicesApi;

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->U:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->b0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    invoke-direct {v1, v2, v3, v0}, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl;-><init>(Lcom/vuitton/android/data/api/legacymulesoft/CareServicesApi;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V

    return-object v1

    :pswitch_37
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->USER_API:Lcom/vuitton/android/data/net/BffApi;

    sget-object v2, Lcom/vuitton/android/data/net/AuthRequirement;->ADD_SFID_HEADER_FOR_PERMANENT_USER:Lcom/vuitton/android/data/net/AuthRequirement;

    invoke-static {v0, v1, v2, v6}, Lcom/vuitton/android/data/net/RetrofitFactory;->a(Lcom/vuitton/android/data/net/RetrofitFactory;Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;I)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/user/CareServicesBffApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/user/CareServicesBffApi;

    return-object v0

    :pswitch_38
    new-instance v1, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->S3:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/api/bff/user/CareServicesBffApi;

    invoke-direct {v1, v0}, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl;-><init>(Lcom/vuitton/android/data/api/bff/user/CareServicesBffApi;)V

    return-object v1

    :pswitch_39
    new-instance v1, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->U3:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSource;

    invoke-direct {v1, v0}, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl;-><init>(Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSource;)V

    return-object v1

    :pswitch_3a
    new-instance v1, Lcom/vuitton/android/data/repository/LastViewedProductRepositoryImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G:Ldagger/internal/Provider;

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->a(Ldagger/internal/Provider;)Ldagger/Lazy;

    move-result-object v2

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/logger/Logger;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/Json;

    invoke-direct {v1, v2, v3, v0}, Lcom/vuitton/android/data/repository/LastViewedProductRepositoryImpl;-><init>(Ldagger/Lazy;Lcom/vuitton/foundation/logger/Logger;Lkotlinx/serialization/json/Json;)V

    return-object v1

    :pswitch_3b
    new-instance v1, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G:Ldagger/internal/Provider;

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->a(Ldagger/internal/Provider;)Ldagger/Lazy;

    move-result-object v2

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/logger/Logger;

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/Json;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl;-><init>(Ldagger/Lazy;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lkotlinx/serialization/json/Json;)V

    return-object v1

    :pswitch_3c
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->PUBLICATION_API:Lcom/vuitton/android/data/net/BffApi;

    invoke-virtual {v0, v1}, Lcom/vuitton/android/data/net/RetrofitFactory;->b(Lcom/vuitton/android/data/net/BffApi;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/publication/AvatarApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/publication/AvatarApi;

    return-object v0

    :pswitch_3d
    new-instance v1, Lcom/vuitton/android/data/datasource/avatar/AvatarRemoteDataSource;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->K3:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/api/bff/publication/AvatarApi;

    invoke-direct {v1, v0}, Lcom/vuitton/android/data/datasource/avatar/AvatarRemoteDataSource;-><init>(Lcom/vuitton/android/data/api/bff/publication/AvatarApi;)V

    return-object v1

    :pswitch_3e
    new-instance v2, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->L3:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/vuitton/android/data/datasource/avatar/AvatarRemoteDataSource;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->L:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/vuitton/android/data/datasource/avatar/AvatarLocalDataSource;

    new-instance v5, Lcom/vuitton/android/data/datasource/avatar/SavedUserAvatarLocalDataSource;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G:Ldagger/internal/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->a(Ldagger/internal/Provider;)Ldagger/Lazy;

    move-result-object v1

    iget-object v6, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlinx/serialization/json/Json;

    invoke-direct {v5, v1, v6}, Lcom/vuitton/android/data/datasource/avatar/SavedUserAvatarLocalDataSource;-><init>(Ldagger/Lazy;Lkotlinx/serialization/json/Json;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/vuitton/android/core/events/LVEventSender;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-direct/range {v2 .. v7}, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;-><init>(Lcom/vuitton/android/data/datasource/avatar/AvatarRemoteDataSource;Lcom/vuitton/android/data/datasource/avatar/AvatarLocalDataSource;Lcom/vuitton/android/data/datasource/avatar/SavedUserAvatarLocalDataSource;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V

    return-object v2

    :pswitch_3f
    new-instance v0, Lcom/vuitton/android/data/localization/LanguageManagerImpl;

    invoke-direct {v0}, Lcom/vuitton/android/data/localization/LanguageManagerImpl;-><init>()V

    return-object v0

    :pswitch_40
    new-instance v1, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl;

    new-instance v2, Lcom/vuitton/android/data/datasource/config/ConfigsVersionRemoteDataSource;

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->c0:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/data/api/bff/publication/ConfigurationApi;

    invoke-direct {v2, v3}, Lcom/vuitton/android/data/datasource/config/ConfigsVersionRemoteDataSource;-><init>(Lcom/vuitton/android/data/api/bff/publication/ConfigurationApi;)V

    new-instance v3, Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource;

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    iget-object v5, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->A3:Ldagger/internal/Provider;

    invoke-static {v5}, Ldagger/internal/DoubleCheck;->a(Ldagger/internal/Provider;)Ldagger/Lazy;

    move-result-object v5

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/Json;

    invoke-direct {v3, v4, v5, v0}, Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource;-><init>(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Ldagger/Lazy;Lkotlinx/serialization/json/Json;)V

    invoke-direct {v1, v2, v3}, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl;-><init>(Lcom/vuitton/android/data/datasource/config/ConfigsVersionRemoteDataSource;Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource;)V

    return-object v1

    :pswitch_41
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->PUBLICATION_API:Lcom/vuitton/android/data/net/BffApi;

    invoke-static {v0, v1, v4, v2}, Lcom/vuitton/android/data/net/RetrofitFactory;->a(Lcom/vuitton/android/data/net/RetrofitFactory;Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;I)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/publication/DispatchApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/publication/DispatchApi;

    return-object v0

    :pswitch_42
    new-instance v1, Lcom/vuitton/android/data/repository/DispatchAreaListRepositoryImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->V:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;

    new-instance v3, Lcom/vuitton/android/data/datasource/dispatch/DispatchRemoteDataSource;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D3:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/api/bff/publication/DispatchApi;

    invoke-direct {v3, v0}, Lcom/vuitton/android/data/datasource/dispatch/DispatchRemoteDataSource;-><init>(Lcom/vuitton/android/data/api/bff/publication/DispatchApi;)V

    invoke-direct {v1, v2, v3}, Lcom/vuitton/android/data/repository/DispatchAreaListRepositoryImpl;-><init>(Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;Lcom/vuitton/android/data/datasource/dispatch/DispatchRemoteDataSource;)V

    return-object v1

    :pswitch_43
    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v0, v0, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    const-string v1, "configs_version_sp"

    invoke-static {v0, v1}, Lcom/vuitton/android/data/di/sharedpreferences/SharedPreferencesFactory;->a(Landroid/content/Context;Ljava/lang/String;)Landroidx/security/crypto/EncryptedSharedPreferences;

    move-result-object v0

    return-object v0

    :pswitch_44
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->PUBLICATION_API:Lcom/vuitton/android/data/net/BffApi;

    invoke-static {v0, v1, v4, v3}, Lcom/vuitton/android/data/net/RetrofitFactory;->a(Lcom/vuitton/android/data/net/RetrofitFactory;Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;I)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/publication/AppLinkApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/publication/AppLinkApi;

    return-object v0

    :pswitch_45
    new-instance v1, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->z3:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/api/bff/publication/AppLinkApi;

    new-instance v3, Lcom/vuitton/android/data/datasource/config/AppLinkLocalDataSource;

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    iget-object v5, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->A3:Ldagger/internal/Provider;

    invoke-static {v5}, Ldagger/internal/DoubleCheck;->a(Ldagger/internal/Provider;)Ldagger/Lazy;

    move-result-object v5

    iget-object v6, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlinx/serialization/json/Json;

    invoke-direct {v3, v4, v5, v6}, Lcom/vuitton/android/data/datasource/config/AppLinkLocalDataSource;-><init>(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Ldagger/Lazy;Lkotlinx/serialization/json/Json;)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->V:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;

    invoke-direct {v1, v2, v3, v0}, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl;-><init>(Lcom/vuitton/android/data/api/bff/publication/AppLinkApi;Lcom/vuitton/android/data/datasource/config/AppLinkLocalDataSource;Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;)V

    return-object v1

    :pswitch_46
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->USER_API:Lcom/vuitton/android/data/net/BffApi;

    sget-object v2, Lcom/vuitton/android/data/net/AuthRequirement;->ADD_SFID_HEADER_FOR_PERMANENT_USER:Lcom/vuitton/android/data/net/AuthRequirement;

    invoke-virtual {v0, v1, v2}, Lcom/vuitton/android/data/net/RetrofitFactory;->c(Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/user/AppointmentApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/user/AppointmentApi;

    return-object v0

    :pswitch_47
    new-instance v1, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->w3:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/api/bff/user/AppointmentApi;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/Json;

    invoke-direct {v1, v2, v0}, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl;-><init>(Lcom/vuitton/android/data/api/bff/user/AppointmentApi;Lkotlinx/serialization/json/Json;)V

    return-object v1

    :pswitch_48
    new-instance v0, Lcom/vuitton/android/data/repository/WatchV3RepositoryImpl;

    invoke-direct {v0}, Lcom/vuitton/android/data/repository/WatchV3RepositoryImpl;-><init>()V

    return-object v0

    :pswitch_49
    new-instance v0, Lcom/vuitton/android/data/repository/HorizonSpeakerRepositoryImpl;

    invoke-direct {v0}, Lcom/vuitton/android/data/repository/HorizonSpeakerRepositoryImpl;-><init>()V

    return-object v0

    :pswitch_4a
    new-instance v0, Lcom/vuitton/android/data/repository/TrunkSpeakerRepositoryImpl;

    invoke-direct {v0}, Lcom/vuitton/android/data/repository/TrunkSpeakerRepositoryImpl;-><init>()V

    return-object v0

    :pswitch_4b
    new-instance v0, Lcom/vuitton/android/data/repository/EarphoneRepositoryImpl;

    invoke-direct {v0}, Lcom/vuitton/android/data/repository/EarphoneRepositoryImpl;-><init>()V

    return-object v0

    :pswitch_4c
    new-instance v1, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl;

    new-instance v2, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigRemoteDataSource;

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->c0:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/data/api/bff/publication/ConfigurationApi;

    invoke-direct {v2, v3}, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigRemoteDataSource;-><init>(Lcom/vuitton/android/data/api/bff/publication/ConfigurationApi;)V

    new-instance v3, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource;

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    iget-object v5, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->K2:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/SharedPreferences;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/Json;

    invoke-direct {v3, v4, v5, v0}, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource;-><init>(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Landroid/content/SharedPreferences;Lkotlinx/serialization/json/Json;)V

    invoke-direct {v1, v2, v3}, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl;-><init>(Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigRemoteDataSource;Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource;)V

    return-object v1

    :pswitch_4d
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->CATALOG_API:Lcom/vuitton/android/data/net/BffApi;

    invoke-static {v0, v1, v4, v3}, Lcom/vuitton/android/data/net/RetrofitFactory;->a(Lcom/vuitton/android/data/net/RetrofitFactory;Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;I)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/catalog/StoreModeCatalogApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/catalog/StoreModeCatalogApi;

    return-object v0

    :pswitch_4e
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->PUBLICATION_API:Lcom/vuitton/android/data/net/BffApi;

    invoke-static {v0, v1, v4, v3}, Lcom/vuitton/android/data/net/RetrofitFactory;->a(Lcom/vuitton/android/data/net/RetrofitFactory;Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;I)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/publication/StoreModeApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/publication/StoreModeApi;

    return-object v0

    :pswitch_4f
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->USER_API:Lcom/vuitton/android/data/net/BffApi;

    invoke-static {v0, v1, v4, v3}, Lcom/vuitton/android/data/net/RetrofitFactory;->a(Lcom/vuitton/android/data/net/RetrofitFactory;Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;I)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/user/StoreModeWelcomeApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/user/StoreModeWelcomeApi;

    return-object v0

    :pswitch_50
    new-instance v1, Lcom/vuitton/android/data/repository/StoreModeRepositoryImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G:Ldagger/internal/Provider;

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->a(Ldagger/internal/Provider;)Ldagger/Lazy;

    move-result-object v2

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->h3:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/data/api/bff/user/StoreModeWelcomeApi;

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->i3:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/data/api/bff/publication/StoreModeApi;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j3:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/api/bff/catalog/StoreModeCatalogApi;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/vuitton/android/data/repository/StoreModeRepositoryImpl;-><init>(Ldagger/Lazy;Lcom/vuitton/android/data/api/bff/user/StoreModeWelcomeApi;Lcom/vuitton/android/data/api/bff/publication/StoreModeApi;Lcom/vuitton/android/data/api/bff/catalog/StoreModeCatalogApi;)V

    return-object v1

    :pswitch_51
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v2, Lcom/vuitton/android/data/net/RetrofitFactory;->l:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    invoke-interface {v0}, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;->e()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/vuitton/android/data/net/RetrofitFactory;->k:Lokhttp3/CookieJar;

    const/4 v6, 0x0

    const/16 v7, 0x3c

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/vuitton/android/data/net/RetrofitFactory;->f(Lcom/vuitton/android/data/net/RetrofitFactory;Ljava/lang/String;Lokhttp3/CookieJar;ZLcom/vuitton/android/data/net/AuthRequirement;I)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/user/RepairApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/user/RepairApi;

    return-object v0

    :pswitch_52
    new-instance v1, Lcom/vuitton/android/data/repository/RepairRepositoryImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->e3:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/api/bff/user/RepairApi;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->I:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;

    invoke-direct {v1, v2, v0}, Lcom/vuitton/android/data/repository/RepairRepositoryImpl;-><init>(Lcom/vuitton/android/data/api/bff/user/RepairApi;Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;)V

    return-object v1

    :pswitch_53
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->USER_API:Lcom/vuitton/android/data/net/BffApi;

    sget-object v2, Lcom/vuitton/android/data/net/AuthRequirement;->FORCE_ADD_SFID_AND_SLAS_HEADERS_FOR_TWIST_LOCALE:Lcom/vuitton/android/data/net/AuthRequirement;

    invoke-static {v0, v1, v2, v6}, Lcom/vuitton/android/data/net/RetrofitFactory;->a(Lcom/vuitton/android/data/net/RetrofitFactory;Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;I)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/user/BookingApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/user/BookingApi;

    return-object v0

    :pswitch_54
    new-instance v1, Lcom/vuitton/android/data/repository/BookingRepositoryImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->b3:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/api/bff/user/BookingApi;

    new-instance v3, Lcom/vuitton/android/data/dto/booking/mapper/BookingHttpErrorMapper;

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/json/Json;

    invoke-direct {v3, v4}, Lcom/vuitton/android/data/dto/booking/mapper/BookingHttpErrorMapper;-><init>(Lkotlinx/serialization/json/Json;)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/logger/Logger;

    invoke-direct {v1, v2, v3, v0}, Lcom/vuitton/android/data/repository/BookingRepositoryImpl;-><init>(Lcom/vuitton/android/data/api/bff/user/BookingApi;Lcom/vuitton/android/data/dto/booking/mapper/BookingHttpErrorMapper;Lcom/vuitton/foundation/logger/Logger;)V

    return-object v1

    :pswitch_55
    new-instance v0, Lcom/vuitton/android/data/repository/BeautyConsentRepositoryImpl;

    invoke-direct {v0}, Lcom/vuitton/android/data/repository/BeautyConsentRepositoryImpl;-><init>()V

    return-object v0

    :pswitch_56
    new-instance v0, Lcom/vuitton/android/data/datasource/pdp/BeautyLocalDataSource;

    invoke-direct {v0}, Lcom/vuitton/android/data/datasource/pdp/BeautyLocalDataSource;-><init>()V

    return-object v0

    :pswitch_57
    new-instance v1, Lcom/vuitton/android/data/repository/BeautyRepositoryImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->W2:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/datasource/pdp/BeautyLocalDataSource;

    invoke-direct {v1, v0}, Lcom/vuitton/android/data/repository/BeautyRepositoryImpl;-><init>(Lcom/vuitton/android/data/datasource/pdp/BeautyLocalDataSource;)V

    return-object v1

    :pswitch_58
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->USER_API:Lcom/vuitton/android/data/net/BffApi;

    sget-object v2, Lcom/vuitton/android/data/net/AuthRequirement;->FORCE_ADD_SFID_AND_SLAS_HEADERS_FOR_TWIST_LOCALE:Lcom/vuitton/android/data/net/AuthRequirement;

    invoke-static {v0, v1, v2, v6}, Lcom/vuitton/android/data/net/RetrofitFactory;->a(Lcom/vuitton/android/data/net/RetrofitFactory;Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;I)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/user/BackInStockApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/user/BackInStockApi;

    return-object v0

    :pswitch_59
    new-instance v1, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->T2:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/api/bff/user/BackInStockApi;

    invoke-direct {v1, v2, v0}, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl;-><init>(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/android/data/api/bff/user/BackInStockApi;)V

    return-object v1

    :pswitch_5a
    new-instance v0, Lcom/vuitton/android/data/datasource/catalog/CatalogLocalDataSource;

    invoke-direct {v0}, Lcom/vuitton/android/data/datasource/catalog/CatalogLocalDataSource;-><init>()V

    return-object v0

    :pswitch_5b
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->CATALOG_API:Lcom/vuitton/android/data/net/BffApi;

    invoke-static {v0, v1, v4, v6}, Lcom/vuitton/android/data/net/RetrofitFactory;->d(Lcom/vuitton/android/data/net/RetrofitFactory;Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;I)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/catalog/CatalogApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/catalog/CatalogApi;

    return-object v0

    :pswitch_5c
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->PUBLICATION_API:Lcom/vuitton/android/data/net/BffApi;

    invoke-virtual {v0, v1}, Lcom/vuitton/android/data/net/RetrofitFactory;->b(Lcom/vuitton/android/data/net/BffApi;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/publication/VideoApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/publication/VideoApi;

    return-object v0

    :pswitch_5d
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->CATALOG_API:Lcom/vuitton/android/data/net/BffApi;

    sget-object v2, Lcom/vuitton/android/data/net/AuthRequirement;->ADD_SFID_HEADER_FOR_PERMANENT_USER:Lcom/vuitton/android/data/net/AuthRequirement;

    invoke-virtual {v0, v1, v2}, Lcom/vuitton/android/data/net/RetrofitFactory;->c(Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/catalog/ExclusiveApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/catalog/ExclusiveApi;

    return-object v0

    :pswitch_5e
    new-instance v1, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/logger/Logger;

    new-instance v3, Lcom/vuitton/android/data/datasource/pdp/GetProductDataSource;

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->I1:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/data/api/bff/catalog/ProductApi;

    iget-object v5, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->N2:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/data/api/bff/catalog/ExclusiveApi;

    invoke-direct {v3, v4, v5}, Lcom/vuitton/android/data/datasource/pdp/GetProductDataSource;-><init>(Lcom/vuitton/android/data/api/bff/catalog/ProductApi;Lcom/vuitton/android/data/api/bff/catalog/ExclusiveApi;)V

    new-instance v4, Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesATGDataSource;

    iget-object v5, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->I1:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/data/api/bff/catalog/ProductApi;

    invoke-direct {v4, v5}, Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesATGDataSource;-><init>(Lcom/vuitton/android/data/api/bff/catalog/ProductApi;)V

    new-instance v5, Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesTwistDataSource;

    iget-object v6, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->I1:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/data/api/bff/catalog/ProductApi;

    invoke-direct {v5, v6}, Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesTwistDataSource;-><init>(Lcom/vuitton/android/data/api/bff/catalog/ProductApi;)V

    iget-object v6, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->O2:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/data/api/bff/publication/VideoApi;

    iget-object v7, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->P2:Ldagger/internal/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/data/api/bff/catalog/CatalogApi;

    iget-object v8, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->I1:Ldagger/internal/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/data/api/bff/catalog/ProductApi;

    iget-object v9, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->N2:Ldagger/internal/Provider;

    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/data/api/bff/catalog/ExclusiveApi;

    iget-object v10, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->Q2:Ldagger/internal/Provider;

    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/data/datasource/catalog/CatalogLocalDataSource;

    iget-object v11, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->C:Ldagger/internal/Provider;

    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;

    iget-object v12, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a1:Ldagger/internal/Provider;

    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/android/data/net/atg/ATGSessionManager;

    iget-object v13, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lkotlinx/serialization/json/Json;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-direct/range {v1 .. v14}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/datasource/pdp/GetProductDataSource;Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesATGDataSource;Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesTwistDataSource;Lcom/vuitton/android/data/api/bff/publication/VideoApi;Lcom/vuitton/android/data/api/bff/catalog/CatalogApi;Lcom/vuitton/android/data/api/bff/catalog/ProductApi;Lcom/vuitton/android/data/api/bff/catalog/ExclusiveApi;Lcom/vuitton/android/data/datasource/catalog/CatalogLocalDataSource;Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;Lcom/vuitton/android/data/net/atg/ATGSessionManager;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V

    return-object v1

    :pswitch_5f
    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v0, v0, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    const-string v1, "connected_objects_config_sp"

    invoke-static {v0, v1}, Lcom/vuitton/android/data/di/sharedpreferences/SharedPreferencesFactory;->a(Landroid/content/Context;Ljava/lang/String;)Landroidx/security/crypto/EncryptedSharedPreferences;

    move-result-object v0

    return-object v0

    :pswitch_60
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->USER_API:Lcom/vuitton/android/data/net/BffApi;

    invoke-virtual {v0, v1}, Lcom/vuitton/android/data/net/RetrofitFactory;->b(Lcom/vuitton/android/data/net/BffApi;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/user/SendEmailApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/user/SendEmailApi;

    return-object v0

    :pswitch_61
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->USER_API:Lcom/vuitton/android/data/net/BffApi;

    sget-object v2, Lcom/vuitton/android/data/net/AuthRequirement;->ADD_SFID_HEADER_FOR_PERMANENT_USER:Lcom/vuitton/android/data/net/AuthRequirement;

    invoke-virtual {v0, v1, v2}, Lcom/vuitton/android/data/net/RetrofitFactory;->c(Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/connectivity/BffWatchApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/connectivity/BffWatchApi;

    return-object v0

    :pswitch_62
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v2, Lcom/vuitton/android/data/net/RetrofitFactory;->m:Lcom/vuitton/android/data/net/ProdUrls;

    iget-object v0, v0, Lcom/vuitton/android/data/net/ProdUrls;->a:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/vuitton/android/data/net/AuthRequirement;->TRIGGER_REFRESH_TOKEN:Lcom/vuitton/android/data/net/AuthRequirement;

    const/16 v7, 0x2e

    const-string v3, "https://iot.louisvuitton.com/"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/vuitton/android/data/net/RetrofitFactory;->f(Lcom/vuitton/android/data/net/RetrofitFactory;Ljava/lang/String;Lokhttp3/CookieJar;ZLcom/vuitton/android/data/net/AuthRequirement;I)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/connectivity/WatchApiV2;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/connectivity/WatchApiV2;

    return-object v0

    :pswitch_63
    new-instance v1, Lcom/vuitton/android/data/repository/WatchRepositoryImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/logger/Logger;

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->H2:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/data/api/connectivity/WatchApiV2;

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->I2:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/data/api/connectivity/BffWatchApi;

    iget-object v5, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->J2:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/data/api/bff/user/SendEmailApi;

    iget-object v6, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->I1:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/data/api/bff/catalog/ProductApi;

    iget-object v7, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->K2:Ldagger/internal/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/SharedPreferences;

    iget-object v8, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->H:Ldagger/internal/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->U:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    invoke-direct/range {v1 .. v9}, Lcom/vuitton/android/data/repository/WatchRepositoryImpl;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/api/connectivity/WatchApiV2;Lcom/vuitton/android/data/api/connectivity/BffWatchApi;Lcom/vuitton/android/data/api/bff/user/SendEmailApi;Lcom/vuitton/android/data/api/bff/catalog/ProductApi;Landroid/content/SharedPreferences;Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;Lcom/vuitton/android/domain/repository/AuthTokenRepository;)V

    return-object v1

    :pswitch_64
    new-instance v0, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl;

    invoke-direct {v0}, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl;-><init>()V

    return-object v0

    :pswitch_65
    new-instance v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/logger/Logger;

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->b0:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v4, v4, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v4}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    new-instance v5, Lcom/vuitton/android/data/datasource/dynamicyield/DynamicYieldDataSource;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/core/DataStore;

    invoke-direct {v5, v0}, Lcom/vuitton/android/data/datasource/dynamicyield/DynamicYieldDataSource;-><init>(Landroidx/datastore/core/DataStore;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Landroid/content/Context;Lcom/vuitton/android/data/datasource/dynamicyield/DynamicYieldDataSource;)V

    return-object v1

    :pswitch_66
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->USER_API:Lcom/vuitton/android/data/net/BffApi;

    sget-object v2, Lcom/vuitton/android/data/net/AuthRequirement;->ADD_SFID_AND_SLAS_HEADERS_ONLY_FOR_TWIST_LOGGED_IN_USER:Lcom/vuitton/android/data/net/AuthRequirement;

    invoke-virtual {v0, v1, v2}, Lcom/vuitton/android/data/net/RetrofitFactory;->c(Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/user/PassApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/user/PassApi;

    return-object v0

    :pswitch_67
    new-instance v1, Lcom/vuitton/android/data/repository/PassRepositoryImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SharedPreferences;

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v4, v4, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v4}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    iget-object v5, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-direct {v2, v3, v4, v5}, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V

    new-instance v3, Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource;

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->A2:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/data/api/bff/user/PassApi;

    iget-object v5, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/foundation/logger/Logger;

    new-instance v6, Lcom/vuitton/android/data/datasource/pass/MultipartParser;

    iget-object v7, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/foundation/logger/Logger;

    invoke-direct {v6, v7}, Lcom/vuitton/android/data/datasource/pass/MultipartParser;-><init>(Lcom/vuitton/foundation/logger/Logger;)V

    invoke-direct {v3, v4, v5, v6}, Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource;-><init>(Lcom/vuitton/android/data/api/bff/user/PassApi;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/datasource/pass/MultipartParser;)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/logger/Logger;

    invoke-direct {v1, v2, v3, v0}, Lcom/vuitton/android/data/repository/PassRepositoryImpl;-><init>(Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource;Lcom/vuitton/foundation/logger/Logger;)V

    return-object v1

    :pswitch_68
    new-instance v1, Lcom/vuitton/android/presentation/di/file/FileStorageProviderImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v2, v2, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v2}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-direct {v1, v2, v0}, Lcom/vuitton/android/presentation/di/file/FileStorageProviderImpl;-><init>(Landroid/content/Context;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V

    return-object v1

    :pswitch_69
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->USER_API:Lcom/vuitton/android/data/net/BffApi;

    sget-object v2, Lcom/vuitton/android/data/net/AuthRequirement;->ADD_SFID_AND_SLAS_HEADERS_ONLY_FOR_TWIST_LOGGED_IN_USER:Lcom/vuitton/android/data/net/AuthRequirement;

    invoke-virtual {v0, v1, v2}, Lcom/vuitton/android/data/net/RetrofitFactory;->c(Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/user/OrdersLegacyApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/user/OrdersLegacyApi;

    return-object v0

    :pswitch_6a
    new-instance v1, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->s2:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/data/api/bff/user/OrdersApi;

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v2:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/data/api/bff/user/OrdersLegacyApi;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->w2:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/core/file/FileStorageProvider;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource;-><init>(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/android/data/api/bff/user/OrdersApi;Lcom/vuitton/android/data/api/bff/user/OrdersLegacyApi;Lcom/vuitton/android/core/file/FileStorageProvider;)V

    return-object v1

    :pswitch_6b
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->CATALOG_API:Lcom/vuitton/android/data/net/BffApi;

    invoke-static {v0, v1, v4, v3}, Lcom/vuitton/android/data/net/RetrofitFactory;->a(Lcom/vuitton/android/data/net/RetrofitFactory;Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;I)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/user/OrderExchangeApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/user/OrderExchangeApi;

    return-object v0

    :pswitch_6c
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->USER_API:Lcom/vuitton/android/data/net/BffApi;

    sget-object v2, Lcom/vuitton/android/data/net/AuthRequirement;->ADD_SFID_AND_SLAS_HEADERS_ONLY_FOR_TWIST_LOGGED_IN_USER:Lcom/vuitton/android/data/net/AuthRequirement;

    invoke-virtual {v0, v1, v2}, Lcom/vuitton/android/data/net/RetrofitFactory;->c(Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/user/OrdersApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/user/OrdersApi;

    return-object v0

    :pswitch_6d
    new-instance v1, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->s2:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/api/bff/user/OrdersApi;

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->t2:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/data/api/bff/user/OrderExchangeApi;

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->w1:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/data/api/bff/user/CartApi;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/Json;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;-><init>(Lcom/vuitton/android/data/api/bff/user/OrdersApi;Lcom/vuitton/android/data/api/bff/user/OrderExchangeApi;Lcom/vuitton/android/data/api/bff/user/CartApi;Lkotlinx/serialization/json/Json;)V

    return-object v1

    :pswitch_6e
    new-instance v1, Lcom/vuitton/android/data/repository/OrderRepositoryImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u2:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->x2:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource;

    invoke-direct {v1, v2, v3, v0}, Lcom/vuitton/android/data/repository/OrderRepositoryImpl;-><init>(Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource;)V

    return-object v1

    :pswitch_6f
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_70
    new-instance v1, Lcom/vuitton/android/presentation/di/provider/WebViewCookieCleanerImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->q2:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/CookieManager;

    invoke-direct {v1, v2, v0}, Lcom/vuitton/android/presentation/di/provider/WebViewCookieCleanerImpl;-><init>(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Landroid/webkit/CookieManager;)V

    return-object v1

    :pswitch_71
    new-instance v1, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/datastore/core/DataStore;

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/json/Json;

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/logger/Logger;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;-><init>(Landroidx/datastore/core/DataStore;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/foundation/logger/Logger;)V

    return-object v1

    :pswitch_72
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->PUBLICATION_API:Lcom/vuitton/android/data/net/BffApi;

    invoke-static {v0, v1, v4, v3}, Lcom/vuitton/android/data/net/RetrofitFactory;->a(Lcom/vuitton/android/data/net/RetrofitFactory;Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;I)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/publication/AudioGuideApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/publication/AudioGuideApi;

    return-object v0

    :pswitch_73
    new-instance v1, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->m2:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/api/bff/publication/AudioGuideApi;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n2:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;

    invoke-direct {v1, v2, v0}, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;-><init>(Lcom/vuitton/android/data/api/bff/publication/AudioGuideApi;Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;)V

    return-object v1

    :pswitch_74
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    iget-object v4, v0, Lcom/vuitton/android/data/net/RetrofitFactory;->m:Lcom/vuitton/android/data/net/ProdUrls;

    iget-object v4, v4, Lcom/vuitton/android/data/net/ProdUrls;->a:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "https://iot.louisvuitton.com/"

    invoke-virtual {v1, v4}, Lretrofit2/Retrofit$Builder;->b(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/vuitton/android/data/net/RetrofitFactory;->b:Landroid/content/Context;

    iget-object v7, v0, Lcom/vuitton/android/data/net/RetrofitFactory;->l:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    iget-object v8, v0, Lcom/vuitton/android/data/net/RetrofitFactory;->g:Lcom/vuitton/android/domain/repository/AppConfigRepository;

    iget-object v9, v0, Lcom/vuitton/android/data/net/RetrofitFactory;->h:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    iget-object v10, v0, Lcom/vuitton/android/data/net/RetrofitFactory;->n:Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;

    iget-object v11, v0, Lcom/vuitton/android/data/net/RetrofitFactory;->o:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    iget-object v12, v0, Lcom/vuitton/android/data/net/RetrofitFactory;->p:Ljava/util/Set;

    sget-object v15, Lcom/vuitton/android/data/net/AuthRequirement;->TRIGGER_REFRESH_TOKEN:Lcom/vuitton/android/data/net/AuthRequirement;

    new-instance v4, Lgt0;

    invoke-direct {v4, v2}, Lgt0;-><init>(I)V

    new-instance v2, Lgt0;

    const/4 v6, 0x5

    invoke-direct {v2, v6}, Lgt0;-><init>(I)V

    new-instance v6, Lgt0;

    invoke-direct {v6, v3}, Lgt0;-><init>(I)V

    new-instance v3, Lgt0;

    const/4 v13, 0x7

    invoke-direct {v3, v13}, Lgt0;-><init>(I)V

    move-object/from16 v18, v6

    const/4 v6, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move-object/from16 v16, v4

    invoke-static/range {v5 .. v19}, Lcom/vuitton/android/data/net/RetrofitFactoryKt;->a(Landroid/content/Context;Lokhttp3/CookieJar;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Lcom/vuitton/android/domain/repository/AppConfigRepository;Lcom/vuitton/android/domain/repository/InAppDispatchRepository;Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;Ljava/util/Set;ZZLcom/vuitton/android/data/net/AuthRequirement;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lokhttp3/OkHttpClient;

    move-result-object v2

    iput-object v2, v1, Lretrofit2/Retrofit$Builder;->a:Lokhttp3/Call$Factory;

    iget-object v0, v0, Lcom/vuitton/android/data/net/RetrofitFactory;->c:Lcom/vuitton/android/data/net/serialization/retrofit/KotlinxSerializationConverterFactory;

    invoke-virtual {v0}, Lcom/vuitton/android/data/net/serialization/retrofit/KotlinxSerializationConverterFactory;->a()Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Factory;

    move-result-object v0

    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->a(Lretrofit2/Converter$Factory;)V

    invoke-virtual {v1}, Lretrofit2/Retrofit$Builder;->d()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/connectivity/AirportApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/connectivity/AirportApi;

    return-object v0

    :pswitch_75
    new-instance v0, Lcom/vuitton/android/data/datasource/connectivity/AirportLocalDataSource;

    invoke-direct {v0}, Lcom/vuitton/android/data/datasource/connectivity/AirportLocalDataSource;-><init>()V

    return-object v0

    :pswitch_76
    new-instance v1, Lcom/vuitton/android/data/repository/AirportRepositoryImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v2, v2, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v2}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->i2:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/data/datasource/connectivity/AirportLocalDataSource;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j2:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/api/connectivity/AirportApi;

    invoke-direct {v1, v2, v3, v0}, Lcom/vuitton/android/data/repository/AirportRepositoryImpl;-><init>(Landroid/content/Context;Lcom/vuitton/android/data/datasource/connectivity/AirportLocalDataSource;Lcom/vuitton/android/data/api/connectivity/AirportApi;)V

    return-object v1

    :pswitch_77
    new-instance v1, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;

    new-instance v3, Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;

    invoke-direct {v3}, Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;-><init>()V

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;

    invoke-direct {v2, v3, v0}, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;-><init>(Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;)V

    invoke-direct {v1, v2}, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl;-><init>(Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;)V

    return-object v1

    :pswitch_78
    new-instance v1, Lcom/vuitton/android/data/datasource/address/AddressLocalDataSource;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v2, v2, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v2}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/Json;

    invoke-direct {v1, v2, v0}, Lcom/vuitton/android/data/datasource/address/AddressLocalDataSource;-><init>(Landroid/content/Context;Lkotlinx/serialization/json/Json;)V

    return-object v1

    :pswitch_79
    new-instance v1, Lcom/vuitton/android/data/repository/AddressRepositoryImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d2:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/datasource/address/AddressLocalDataSource;

    new-instance v3, Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->e1:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/data/api/bff/user/AddressesApi;

    iget-object v5, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/foundation/logger/Logger;

    new-instance v6, Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper;

    invoke-direct {v6}, Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper;-><init>()V

    invoke-direct {v3, v4, v5, v6}, Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;-><init>(Lcom/vuitton/android/data/api/bff/user/AddressesApi;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper;)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;

    invoke-direct {v1, v2, v3, v0}, Lcom/vuitton/android/data/repository/AddressRepositoryImpl;-><init>(Lcom/vuitton/android/data/datasource/address/AddressLocalDataSource;Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;)V

    return-object v1

    :pswitch_7a
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->PUBLICATION_API:Lcom/vuitton/android/data/net/BffApi;

    invoke-virtual {v0, v1}, Lcom/vuitton/android/data/net/RetrofitFactory;->b(Lcom/vuitton/android/data/net/BffApi;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/publication/PlaceApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/publication/PlaceApi;

    return-object v0

    :pswitch_7b
    new-instance v1, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a2:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/api/bff/publication/PlaceApi;

    invoke-direct {v1, v0}, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl;-><init>(Lcom/vuitton/android/data/api/bff/publication/PlaceApi;)V

    return-object v1

    :pswitch_7c
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->USER_API:Lcom/vuitton/android/data/net/BffApi;

    sget-object v2, Lcom/vuitton/android/data/net/AuthRequirement;->ADD_SFID_AND_SLAS_HEADERS_ONLY_FOR_TWIST_LOGGED_IN_USER:Lcom/vuitton/android/data/net/AuthRequirement;

    invoke-virtual {v0, v1, v2}, Lcom/vuitton/android/data/net/RetrofitFactory;->c(Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/user/CertificateDetailUrlApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/user/CertificateDetailUrlApi;

    return-object v0

    :pswitch_7d
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->USER_API:Lcom/vuitton/android/data/net/BffApi;

    sget-object v2, Lcom/vuitton/android/data/net/AuthRequirement;->ADD_SFID_HEADER_FOR_PERMANENT_USER:Lcom/vuitton/android/data/net/AuthRequirement;

    invoke-static {v0, v1, v2, v6}, Lcom/vuitton/android/data/net/RetrofitFactory;->a(Lcom/vuitton/android/data/net/RetrofitFactory;Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;I)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/user/CertificateApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/user/CertificateApi;

    return-object v0

    :pswitch_7e
    new-instance v1, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->W1:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/api/bff/user/CertificateApi;

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->X1:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/data/api/bff/user/CertificateDetailUrlApi;

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->U:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    iget-object v5, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;

    iget-object v6, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G0:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lkotlinx/serialization/json/Json;

    invoke-direct/range {v1 .. v7}, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl;-><init>(Lcom/vuitton/android/data/api/bff/user/CertificateApi;Lcom/vuitton/android/data/api/bff/user/CertificateDetailUrlApi;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;Lkotlinx/serialization/json/Json;)V

    return-object v1

    :pswitch_7f
    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;

    new-instance v2, Lu5;

    invoke-direct {v2, v6}, Lu5;-><init>(I)V

    invoke-static {v2}, Lkotlinx/serialization/json/JsonKt;->a(Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/json/Json;

    move-result-object v2

    invoke-interface {v0}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/coroutines/CoroutineDispatcher;)V

    return-object v1

    :pswitch_80
    new-instance v1, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;

    new-instance v2, Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;

    invoke-direct {v2}, Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;-><init>()V

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;

    invoke-direct {v1, v2, v0}, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;-><init>(Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;)V

    return-object v1

    :pswitch_81
    new-instance v1, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->T1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormDataSource;

    invoke-direct {v1, v0}, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl;-><init>(Lcom/vuitton/core/infrastructure/data/forms/datasource/FormDataSource;)V

    return-object v1

    :pswitch_82
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/BffApi;->USER_API:Lcom/vuitton/android/data/net/BffApi;

    sget-object v2, Lcom/vuitton/android/data/net/AuthRequirement;->FORCE_ADD_SFID_AND_SLAS_HEADERS_FOR_TWIST_LOCALE:Lcom/vuitton/android/data/net/AuthRequirement;

    invoke-virtual {v0, v1, v2}, Lcom/vuitton/android/data/net/RetrofitFactory;->c(Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/bff/user/WishlistApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/bff/user/WishlistApi;

    return-object v0

    :pswitch_83
    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d:Lcom/vuitton/android/data/di/ApiDiModule;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/net/AuthRequirement;->ADD_SFID_HEADER_FOR_PERMANENT_USER:Lcom/vuitton/android/data/net/AuthRequirement;

    invoke-static {v0, v4, v1, v5}, Lcom/vuitton/android/data/net/RetrofitFactory;->d(Lcom/vuitton/android/data/net/RetrofitFactory;Lcom/vuitton/android/data/net/BffApi;Lcom/vuitton/android/data/net/AuthRequirement;I)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/data/api/legacymulesoft/LegacyWishlistApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/data/api/legacymulesoft/LegacyWishlistApi;

    return-object v0

    :pswitch_84
    new-instance v1, Lcom/vuitton/android/data/datasource/wishlist/LegacyWishlistAtgDataSource;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->M1:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/api/legacymulesoft/LegacyWishlistApi;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->b0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    invoke-direct {v1, v2, v0}, Lcom/vuitton/android/data/datasource/wishlist/LegacyWishlistAtgDataSource;-><init>(Lcom/vuitton/android/data/api/legacymulesoft/LegacyWishlistApi;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V

    return-object v1

    :pswitch_85
    new-instance v1, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->N1:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/datasource/wishlist/LegacyWishlistAtgDataSource;

    new-instance v3, Lcom/vuitton/android/data/datasource/wishlist/WishlistRemoteDataSource;

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->O1:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/data/api/bff/user/WishlistApi;

    iget-object v5, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/serialization/json/Json;

    invoke-direct {v3, v4, v5}, Lcom/vuitton/android/data/datasource/wishlist/WishlistRemoteDataSource;-><init>(Lcom/vuitton/android/data/api/bff/user/WishlistApi;Lkotlinx/serialization/json/Json;)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->C:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;

    invoke-direct {v1, v2, v3, v0}, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl;-><init>(Lcom/vuitton/android/data/datasource/wishlist/LegacyWishlistAtgDataSource;Lcom/vuitton/android/data/datasource/wishlist/WishlistRemoteDataSource;Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;)V

    return-object v1

    :cond_2
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
    .end packed-switch
.end method
