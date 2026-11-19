.class public final Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl;",
        "Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepository;",
        "Lcom/vuitton/core/infrastructure/data/forms/datasource/FormDataSource;",
        "formSystemDataSource",
        "<init>",
        "(Lcom/vuitton/core/infrastructure/data/forms/datasource/FormDataSource;)V",
        "forms"
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
.field public final a:Lcom/vuitton/core/infrastructure/data/forms/datasource/FormDataSource;


# direct methods
.method public constructor <init>(Lcom/vuitton/core/infrastructure/data/forms/datasource/FormDataSource;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl;->a:Lcom/vuitton/core/infrastructure/data/forms/datasource/FormDataSource;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getSecondaryAddressForm$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getSecondaryAddressForm$1;

    iget v1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getSecondaryAddressForm$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getSecondaryAddressForm$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getSecondaryAddressForm$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getSecondaryAddressForm$1;-><init>(Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getSecondaryAddressForm$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getSecondaryAddressForm$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl;->a:Lcom/vuitton/core/infrastructure/data/forms/datasource/FormDataSource;

    iput v3, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getSecondaryAddressForm$1;->d:I

    invoke-interface {p0, p1, v0}, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormDataSource;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;

    invoke-static {p0}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->b(Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;)Lcom/vuitton/foundation/model/domain/model/forms/Form;

    move-result-object p0

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p0
.end method

.method public final b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getDispatchIdentifierList$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getDispatchIdentifierList$1;

    iget v1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getDispatchIdentifierList$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getDispatchIdentifierList$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getDispatchIdentifierList$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getDispatchIdentifierList$1;-><init>(Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getDispatchIdentifierList$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getDispatchIdentifierList$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl;->a:Lcom/vuitton/core/infrastructure/data/forms/datasource/FormDataSource;

    iput v4, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getDispatchIdentifierList$1;->d:I

    invoke-interface {p0, v0}, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormDataSource;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p0, Lcom/vuitton/core/infrastructure/data/forms/models/DispatchIdentifierListDto;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/DispatchIdentifierListDto;->a:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore$Companion;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-object v1, v3

    :goto_3
    if-eqz v1, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore;->a:Ljava/lang/String;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/forms/FormDispatchId;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/forms/FormDispatchId;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Dispatch identifier list is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_5
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_9

    goto :goto_6

    :cond_9
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_a

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_6
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_a
    throw p0
.end method

.method public final c(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getMainAddressForm$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getMainAddressForm$1;

    iget v1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getMainAddressForm$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getMainAddressForm$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getMainAddressForm$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getMainAddressForm$1;-><init>(Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getMainAddressForm$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getMainAddressForm$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl;->a:Lcom/vuitton/core/infrastructure/data/forms/datasource/FormDataSource;

    iput v3, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getMainAddressForm$1;->d:I

    invoke-interface {p0, p1, v0}, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormDataSource;->c(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;

    invoke-static {p0}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->b(Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;)Lcom/vuitton/foundation/model/domain/model/forms/Form;

    move-result-object p0

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p0
.end method

.method public final d(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getAccountActivationForm$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getAccountActivationForm$1;

    iget v1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getAccountActivationForm$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getAccountActivationForm$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getAccountActivationForm$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getAccountActivationForm$1;-><init>(Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getAccountActivationForm$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getAccountActivationForm$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl;->a:Lcom/vuitton/core/infrastructure/data/forms/datasource/FormDataSource;

    iput v3, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getAccountActivationForm$1;->d:I

    invoke-interface {p0, p1, v0}, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormDataSource;->d(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p0, Lcom/vuitton/core/infrastructure/data/forms/models/AccountActivationFormDto;

    invoke-static {p0}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->a(Lcom/vuitton/core/infrastructure/data/forms/models/AccountActivationFormDto;)Lcom/vuitton/foundation/model/domain/model/forms/Form;

    move-result-object p0

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p0
.end method

.method public final e(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getProfileForm$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getProfileForm$1;

    iget v1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getProfileForm$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getProfileForm$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getProfileForm$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getProfileForm$1;-><init>(Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getProfileForm$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getProfileForm$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl;->a:Lcom/vuitton/core/infrastructure/data/forms/datasource/FormDataSource;

    iput v3, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getProfileForm$1;->d:I

    invoke-interface {p0, p1, v0}, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormDataSource;->e(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p0, Lcom/vuitton/core/infrastructure/data/forms/models/ProfileFormDto;

    invoke-static {p0}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->h(Lcom/vuitton/core/infrastructure/data/forms/models/ProfileFormDto;)Lcom/vuitton/foundation/model/domain/model/forms/Form;

    move-result-object p0

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p0
.end method

.method public final f(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getAuthenticationForm$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getAuthenticationForm$1;

    iget v1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getAuthenticationForm$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getAuthenticationForm$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getAuthenticationForm$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getAuthenticationForm$1;-><init>(Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getAuthenticationForm$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getAuthenticationForm$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl;->a:Lcom/vuitton/core/infrastructure/data/forms/datasource/FormDataSource;

    iput v3, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getAuthenticationForm$1;->d:I

    invoke-interface {p0, p1, v0}, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormDataSource;->f(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p0, Lcom/vuitton/core/infrastructure/data/forms/models/AuthenticationFormDto;

    invoke-static {p0}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->c(Lcom/vuitton/core/infrastructure/data/forms/models/AuthenticationFormDto;)Lcom/vuitton/foundation/model/domain/model/forms/Form;

    move-result-object p0

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p0
.end method

.method public final g(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getBookingForm$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getBookingForm$1;

    iget v1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getBookingForm$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getBookingForm$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getBookingForm$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getBookingForm$1;-><init>(Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getBookingForm$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getBookingForm$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl;->a:Lcom/vuitton/core/infrastructure/data/forms/datasource/FormDataSource;

    iput v3, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getBookingForm$1;->d:I

    invoke-interface {p0, p1, v0}, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormDataSource;->g(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p0, Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto;

    invoke-static {p0}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->d(Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto;)Lcom/vuitton/foundation/model/domain/model/forms/Form;

    move-result-object p0

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p0
.end method

.method public final h(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getCompleteProfileForm$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getCompleteProfileForm$1;

    iget v1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getCompleteProfileForm$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getCompleteProfileForm$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getCompleteProfileForm$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getCompleteProfileForm$1;-><init>(Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getCompleteProfileForm$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getCompleteProfileForm$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl;->a:Lcom/vuitton/core/infrastructure/data/forms/datasource/FormDataSource;

    iput v3, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getCompleteProfileForm$1;->d:I

    invoke-interface {p0, p1, v0}, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormDataSource;->h(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;

    invoke-static {p0}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->f(Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;)Lcom/vuitton/foundation/model/domain/model/forms/Form;

    move-result-object p0

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p0
.end method

.method public final i(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getCareServiceForm$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getCareServiceForm$1;

    iget v1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getCareServiceForm$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getCareServiceForm$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getCareServiceForm$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getCareServiceForm$1;-><init>(Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getCareServiceForm$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getCareServiceForm$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl;->a:Lcom/vuitton/core/infrastructure/data/forms/datasource/FormDataSource;

    iput v3, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getCareServiceForm$1;->d:I

    invoke-interface {p0, p1, v0}, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormDataSource;->i(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p0, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;

    invoke-static {p0}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->e(Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;)Lcom/vuitton/foundation/model/domain/model/forms/Form;

    move-result-object p0

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p0
.end method

.method public final j(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getRegistrationForm$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getRegistrationForm$1;

    iget v1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getRegistrationForm$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getRegistrationForm$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getRegistrationForm$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getRegistrationForm$1;-><init>(Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getRegistrationForm$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getRegistrationForm$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl;->a:Lcom/vuitton/core/infrastructure/data/forms/datasource/FormDataSource;

    iput v3, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getRegistrationForm$1;->d:I

    invoke-interface {p0, p1, v0}, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormDataSource;->j(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;

    invoke-static {p0}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->i(Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;)Lcom/vuitton/foundation/model/domain/model/forms/Form;

    move-result-object p0

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p0
.end method

.method public final k(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getGuestAppointmentForm$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getGuestAppointmentForm$1;

    iget v1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getGuestAppointmentForm$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getGuestAppointmentForm$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getGuestAppointmentForm$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getGuestAppointmentForm$1;-><init>(Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getGuestAppointmentForm$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getGuestAppointmentForm$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl;->a:Lcom/vuitton/core/infrastructure/data/forms/datasource/FormDataSource;

    iput v3, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl$getGuestAppointmentForm$1;->d:I

    invoke-interface {p0, p1, v0}, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormDataSource;->k(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p0, Lcom/vuitton/core/infrastructure/data/forms/models/GuestAppointmentFormDto;

    invoke-static {p0}, Lcom/vuitton/core/infrastructure/data/forms/models/FormMapperKt;->g(Lcom/vuitton/core/infrastructure/data/forms/models/GuestAppointmentFormDto;)Lcom/vuitton/foundation/model/domain/model/forms/Form;

    move-result-object p0

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p0
.end method
