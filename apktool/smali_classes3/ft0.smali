.class public final synthetic Lft0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/data/net/RetrofitFactory;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/data/net/RetrofitFactory;I)V
    .locals 0

    iput p2, p0, Lft0;->b:I

    iput-object p1, p0, Lft0;->c:Lcom/vuitton/android/data/net/RetrofitFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lft0;->b:I

    iget-object p0, p0, Lft0;->c:Lcom/vuitton/android/data/net/RetrofitFactory;

    check-cast p1, Lokhttp3/OkHttpClient$Builder;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/vuitton/android/data/net/RetrofitFactory;->q:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/net/RetrofitFactory;->g(Lokhttp3/OkHttpClient$Builder;)V

    new-instance v0, Lcom/vuitton/android/data/net/interceptor/AddTwistOnlySfidAndSlasTokenInterceptor;

    iget-object v1, p0, Lcom/vuitton/android/data/net/RetrofitFactory;->a:Lcom/vuitton/foundation/logger/Logger;

    iget-object p0, p0, Lcom/vuitton/android/data/net/RetrofitFactory;->e:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    invoke-direct {v0, v1, p0}, Lcom/vuitton/android/data/net/interceptor/AddTwistOnlySfidAndSlasTokenInterceptor;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/repository/AuthTokenRepository;)V

    iget-object p0, p1, Lokhttp3/OkHttpClient$Builder;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget v0, Lcom/vuitton/android/data/net/RetrofitFactory;->q:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/net/RetrofitFactory;->g(Lokhttp3/OkHttpClient$Builder;)V

    new-instance v0, Lcom/vuitton/android/data/net/interceptor/AddSfidAccessTokenInterceptor;

    iget-object v1, p0, Lcom/vuitton/android/data/net/RetrofitFactory;->a:Lcom/vuitton/foundation/logger/Logger;

    iget-object p0, p0, Lcom/vuitton/android/data/net/RetrofitFactory;->e:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    invoke-direct {v0, v1, p0}, Lcom/vuitton/android/data/net/interceptor/AddSfidAccessTokenInterceptor;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/repository/AuthTokenRepository;)V

    iget-object p0, p1, Lokhttp3/OkHttpClient$Builder;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    sget v0, Lcom/vuitton/android/data/net/RetrofitFactory;->q:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/net/RetrofitFactory;->g(Lokhttp3/OkHttpClient$Builder;)V

    new-instance v0, Lcom/vuitton/android/data/net/interceptor/GuestAuthenticatorInterceptor;

    iget-object v1, p0, Lcom/vuitton/android/data/net/RetrofitFactory;->f:Lcom/vuitton/android/domain/repository/TwistAuthRepository;

    iget-object v2, p0, Lcom/vuitton/android/data/net/RetrofitFactory;->e:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    new-instance v3, Lxn0;

    const/16 v4, 0x10

    invoke-direct {v3, p0, v4}, Lxn0;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1, v2, v3}, Lcom/vuitton/android/data/net/interceptor/GuestAuthenticatorInterceptor;-><init>(Lcom/vuitton/android/domain/repository/TwistAuthRepository;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lkotlin/jvm/functions/Function0;)V

    iget-object p1, p1, Lokhttp3/OkHttpClient$Builder;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/vuitton/android/data/net/interceptor/AddSfidAndSlasTokenInterceptor;

    iget-object p0, p0, Lcom/vuitton/android/data/net/RetrofitFactory;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-direct {v0, p0, v2}, Lcom/vuitton/android/data/net/interceptor/AddSfidAndSlasTokenInterceptor;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/repository/AuthTokenRepository;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    sget v0, Lcom/vuitton/android/data/net/RetrofitFactory;->q:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator;

    iget-object v1, p0, Lcom/vuitton/android/data/net/RetrofitFactory;->a:Lcom/vuitton/foundation/logger/Logger;

    iget-object v2, p0, Lcom/vuitton/android/data/net/RetrofitFactory;->j:Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;

    iget-object v3, p0, Lcom/vuitton/android/data/net/RetrofitFactory;->e:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lxe0;

    const/16 v5, 0xb

    invoke-direct {v4, v1, v5}, Lxe0;-><init>(Ljava/lang/Object;I)V

    iget-object v5, p0, Lcom/vuitton/android/data/net/RetrofitFactory;->o:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lsv;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Lsv;-><init>(ZI)V

    iget-object p0, p0, Lcom/vuitton/android/data/net/RetrofitFactory;->d:Lkotlinx/serialization/json/Json;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lxe0;

    const/16 v9, 0xa

    invoke-direct {v8, p0, v9}, Lxe0;-><init>(Ljava/lang/Object;I)V

    const/4 p0, 0x3

    new-array p0, p0, [Lkotlin/jvm/functions/Function3;

    aput-object v4, p0, v6

    aput-object v5, p0, v7

    const/4 v4, 0x2

    aput-object v8, p0, v4

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Ljava/util/List;)V

    iput-object v0, p1, Lokhttp3/OkHttpClient$Builder;->h:Lokhttp3/Authenticator;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
