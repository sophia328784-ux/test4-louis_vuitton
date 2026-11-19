.class public final Lcom/vuitton/android/data/repository/AddressRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/AddressRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/AddressRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/AddressRepository;",
        "Lcom/vuitton/android/data/datasource/address/AddressLocalDataSource;",
        "addressLocalDataSource",
        "Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;",
        "addressRemoteDataSource",
        "Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;",
        "profileLocalDataSource",
        "<init>",
        "(Lcom/vuitton/android/data/datasource/address/AddressLocalDataSource;Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;)V",
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


# instance fields
.field public final a:Lcom/vuitton/android/data/datasource/address/AddressLocalDataSource;

.field public final b:Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;

.field public final c:Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/address/AddressLocalDataSource;Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/address/AddressLocalDataSource;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/address/AddressLocalDataSource;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/address/AddressLocalDataSource;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/vuitton/android/core/extensions/SerializationExtKt;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/address/AddressLocalDataSource;->b:Lkotlinx/serialization/json/Json;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v2, Lcom/vuitton/android/data/database/entity/address/CountryEntity;->Companion:Lcom/vuitton/android/data/database/entity/address/CountryEntity$Companion;

    invoke-virtual {v2}, Lcom/vuitton/android/data/database/entity/address/CountryEntity$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    invoke-virtual {p0, v1, v0}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-instance v0, Lcom/vuitton/android/data/datasource/address/AddressLocalDataSource$getCountryListFromLocale_d1pmJ48$lambda$0$$inlined$sortBy$1;

    invoke-direct {v0}, Lcom/vuitton/android/data/datasource/address/AddressLocalDataSource$getCountryListFromLocale_d1pmJ48$lambda$0$$inlined$sortBy$1;-><init>()V

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->m0(Ljava/util/Comparator;Ljava/util/List;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_0
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    instance-of p0, v0, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_4

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_1
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v0, p0, Lkotlin/Result$Failure;

    if-nez v0, :cond_3

    check-cast p0, Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/data/database/entity/address/CountryEntity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/profile/Country;

    iget-object v3, v1, Lcom/vuitton/android/data/database/entity/address/CountryEntity;->a:Ljava/lang/String;

    iget-object v4, v1, Lcom/vuitton/android/data/database/entity/address/CountryEntity;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/android/data/database/entity/address/CountryEntity;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/vuitton/foundation/model/domain/model/profile/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object p0, v0

    :cond_3
    return-object p0

    :cond_4
    throw v0
.end method

.method public final b(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$getCNCityList$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$getCNCityList$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$getCNCityList$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$getCNCityList$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$getCNCityList$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$getCNCityList$1;-><init>(Lcom/vuitton/android/data/repository/AddressRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$getCNCityList$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$getCNCityList$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$getCNCityList$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;->e(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_4
    new-instance p0, Lcom/vuitton/android/data/account/address/exception/AddressException$NoChinaAddressException;

    invoke-direct {p0}, Lcom/vuitton/android/data/account/address/exception/AddressException$NoChinaAddressException;-><init>()V

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public final c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p1, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$getAddressList$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$getAddressList$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$getAddressList$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$getAddressList$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$getAddressList$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$getAddressList$1;-><init>(Lcom/vuitton/android/data/repository/AddressRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$getAddressList$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$getAddressList$1;->e:I

    iget-object v3, p0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$getAddressList$1;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_5

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_2
    iget-object p0, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$getAddressList$1;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v6, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$getAddressList$1;->e:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    goto :goto_4

    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_6

    :try_start_1
    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/vuitton/android/data/dto/address/mapper/AddressDtoMapperKt;->c(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :cond_6
    :goto_2
    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_7

    move-object p1, p0

    check-cast p1, Ljava/util/List;

    iput-object p0, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$getAddressList$1;->b:Ljava/lang/Object;

    iput v5, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$getAddressList$1;->e:I

    invoke-virtual {v3, p1, v0}, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;->d(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    goto :goto_4

    :cond_7
    :goto_3
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_7

    :cond_8
    :try_start_2
    iput-object v7, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$getAddressList$1;->b:Ljava/lang/Object;

    iput v4, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$getAddressList$1;->e:I

    invoke-virtual {v3, v0}, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_9

    :goto_4
    return-object v1

    :cond_9
    :goto_5
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-eqz p1, :cond_a

    goto :goto_6

    :cond_a
    move-object v7, p0

    :goto_6
    check-cast v7, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    if-eqz v7, :cond_b

    iget-object p0, v7, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->i:Ljava/util/List;

    if-nez p0, :cond_c

    :cond_b
    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :cond_c
    :goto_7
    return-object p0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$getCNCountyList$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$getCNCountyList$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$getCNCountyList$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$getCNCountyList$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$getCNCountyList$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$getCNCountyList$1;-><init>(Lcom/vuitton/android/data/repository/AddressRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$getCNCountyList$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$getCNCountyList$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    iget-object p0, p3, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$getCNCountyList$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;

    invoke-virtual {p0, p1, p2, v0}, Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;->f(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_4
    new-instance p0, Lcom/vuitton/android/data/account/address/exception/AddressException$NoChinaAddressException;

    invoke-direct {p0}, Lcom/vuitton/android/data/account/address/exception/AddressException$NoChinaAddressException;-><init>()V

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public final e(Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$editAddress$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$editAddress$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$editAddress$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$editAddress$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$editAddress$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$editAddress$1;-><init>(Lcom/vuitton/android/data/repository/AddressRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$editAddress$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$editAddress$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p1, Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;->a:Ljava/lang/String;

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, p2

    :goto_1
    if-nez v3, :cond_4

    const-string v3, ""

    :cond_4
    invoke-static {p1}, Lcom/vuitton/android/data/dto/address/mapper/AddressDtoMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;)Lcom/vuitton/android/data/dto/address/AddressCreationDto;

    move-result-object p1

    iput v4, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$editAddress$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;

    invoke-virtual {p0, v3, p1, v0}, Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;->c(Ljava/lang/String;Lcom/vuitton/android/data/dto/address/AddressCreationDto;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    return-object p0
.end method

.method public final f(Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$addAddress$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$addAddress$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$addAddress$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$addAddress$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$addAddress$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$addAddress$1;-><init>(Lcom/vuitton/android/data/repository/AddressRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$addAddress$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$addAddress$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/vuitton/android/data/dto/address/mapper/AddressDtoMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;)Lcom/vuitton/android/data/dto/address/AddressCreationDto;

    move-result-object p1

    iput v4, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$addAddress$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;->a(Lcom/vuitton/android/data/dto/address/AddressCreationDto;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_4

    :try_start_0
    check-cast p0, Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1

    :cond_4
    return-object p0
.end method

.method public final g(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$deleteAddress$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$deleteAddress$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$deleteAddress$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$deleteAddress$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$deleteAddress$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$deleteAddress$1;-><init>(Lcom/vuitton/android/data/repository/AddressRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$deleteAddress$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$deleteAddress$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl$deleteAddress$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AddressRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;->b(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method
