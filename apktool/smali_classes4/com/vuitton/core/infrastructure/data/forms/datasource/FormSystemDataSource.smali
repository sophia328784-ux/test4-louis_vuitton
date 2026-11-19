.class public final Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/core/infrastructure/data/forms/datasource/FormDataSource;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;",
        "Lcom/vuitton/core/infrastructure/data/forms/datasource/FormDataSource;",
        "Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;",
        "formFilePathProvider",
        "Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;",
        "fileReader",
        "<init>",
        "(Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;)V",
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
.field public final a:Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;

.field public final b:Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;

.field public final c:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->a:Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;

    iput-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->b:Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->c:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getSecondaryAddressForm$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getSecondaryAddressForm$1;

    iget v1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getSecondaryAddressForm$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getSecondaryAddressForm$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getSecondaryAddressForm$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getSecondaryAddressForm$1;-><init>(Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getSecondaryAddressForm$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getSecondaryAddressForm$1;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getSecondaryAddressForm$1;->c:Ljava/lang/String;

    iget-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getSecondaryAddressForm$1;->b:Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->a:Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "secondaryAddressForm.json"

    invoke-static {p1, p2}, Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of v2, p2, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;

    if-nez v2, :cond_3

    move-object p2, v4

    :cond_3
    check-cast p2, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;

    if-eqz p2, :cond_4

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    return-object p2

    :cond_4
    iget-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->b:Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;

    iget-object v2, p2, Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v5, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getSecondaryAddressForm-qJBbalk$$inlined$getCachedForm-gIAlu-s$1;

    invoke-direct {v5, p1, p2, v4}, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getSecondaryAddressForm-qJBbalk$$inlined$getCachedForm-gIAlu-s$1;-><init>(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getSecondaryAddressForm$1;->b:Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;

    iput-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getSecondaryAddressForm$1;->c:Ljava/lang/String;

    iput v3, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getSecondaryAddressForm$1;->f:I

    invoke-static {v2, v5, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v0, p2, Lkotlin/Result$Failure;

    if-nez v0, :cond_6

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object p2
.end method

.method public final b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getDispatchIdentifierList$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getDispatchIdentifierList$1;

    iget v1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getDispatchIdentifierList$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getDispatchIdentifierList$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getDispatchIdentifierList$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getDispatchIdentifierList$1;-><init>(Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getDispatchIdentifierList$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getDispatchIdentifierList$1;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getDispatchIdentifierList$1;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getDispatchIdentifierList$1;->b:Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v2, p0

    move-object p0, v0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->a:Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->c:Ljava/util/LinkedHashMap;

    const-string v2, "GeneratedAppSchemes/dispatchIdentifierList.json"

    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v5, p1, Lcom/vuitton/core/infrastructure/data/forms/models/DispatchIdentifierListDto;

    if-nez v5, :cond_3

    move-object p1, v4

    :cond_3
    check-cast p1, Lcom/vuitton/core/infrastructure/data/forms/models/DispatchIdentifierListDto;

    if-eqz p1, :cond_4

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    return-object p1

    :cond_4
    iget-object p1, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->b:Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;

    iget-object v5, p1, Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v6, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getDispatchIdentifierList-IoAF18A$$inlined$getCachedForm-gIAlu-s$1;

    invoke-direct {v6, v2, p1, v4}, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getDispatchIdentifierList-IoAF18A$$inlined$getCachedForm-gIAlu-s$1;-><init>(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getDispatchIdentifierList$1;->b:Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;

    iput-object v2, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getDispatchIdentifierList$1;->c:Ljava/lang/String;

    iput v3, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getDispatchIdentifierList$1;->f:I

    invoke-static {v5, v6, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_6

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object p1
.end method

.method public final c(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getMainAddressForm$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getMainAddressForm$1;

    iget v1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getMainAddressForm$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getMainAddressForm$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getMainAddressForm$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getMainAddressForm$1;-><init>(Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getMainAddressForm$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getMainAddressForm$1;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getMainAddressForm$1;->c:Ljava/lang/String;

    iget-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getMainAddressForm$1;->b:Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->a:Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "mainAddressForm.json"

    invoke-static {p1, p2}, Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of v2, p2, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;

    if-nez v2, :cond_3

    move-object p2, v4

    :cond_3
    check-cast p2, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;

    if-eqz p2, :cond_4

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    return-object p2

    :cond_4
    iget-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->b:Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;

    iget-object v2, p2, Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v5, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getMainAddressForm-qJBbalk$$inlined$getCachedForm-gIAlu-s$1;

    invoke-direct {v5, p1, p2, v4}, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getMainAddressForm-qJBbalk$$inlined$getCachedForm-gIAlu-s$1;-><init>(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getMainAddressForm$1;->b:Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;

    iput-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getMainAddressForm$1;->c:Ljava/lang/String;

    iput v3, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getMainAddressForm$1;->f:I

    invoke-static {v2, v5, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v0, p2, Lkotlin/Result$Failure;

    if-nez v0, :cond_6

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object p2
.end method

.method public final d(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getAccountActivationForm$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getAccountActivationForm$1;

    iget v1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getAccountActivationForm$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getAccountActivationForm$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getAccountActivationForm$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getAccountActivationForm$1;-><init>(Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getAccountActivationForm$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getAccountActivationForm$1;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getAccountActivationForm$1;->c:Ljava/lang/String;

    iget-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getAccountActivationForm$1;->b:Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->a:Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "accountActivationForm.json"

    invoke-static {p1, p2}, Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of v2, p2, Lcom/vuitton/core/infrastructure/data/forms/models/AccountActivationFormDto;

    if-nez v2, :cond_3

    move-object p2, v4

    :cond_3
    check-cast p2, Lcom/vuitton/core/infrastructure/data/forms/models/AccountActivationFormDto;

    if-eqz p2, :cond_4

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    return-object p2

    :cond_4
    iget-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->b:Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;

    iget-object v2, p2, Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v5, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getAccountActivationForm-qJBbalk$$inlined$getCachedForm-gIAlu-s$1;

    invoke-direct {v5, p1, p2, v4}, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getAccountActivationForm-qJBbalk$$inlined$getCachedForm-gIAlu-s$1;-><init>(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getAccountActivationForm$1;->b:Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;

    iput-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getAccountActivationForm$1;->c:Ljava/lang/String;

    iput v3, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getAccountActivationForm$1;->f:I

    invoke-static {v2, v5, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v0, p2, Lkotlin/Result$Failure;

    if-nez v0, :cond_6

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object p2
.end method

.method public final e(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getProfileForm$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getProfileForm$1;

    iget v1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getProfileForm$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getProfileForm$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getProfileForm$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getProfileForm$1;-><init>(Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getProfileForm$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getProfileForm$1;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getProfileForm$1;->c:Ljava/lang/String;

    iget-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getProfileForm$1;->b:Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->a:Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "profileForm.json"

    invoke-static {p1, p2}, Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of v2, p2, Lcom/vuitton/core/infrastructure/data/forms/models/ProfileFormDto;

    if-nez v2, :cond_3

    move-object p2, v4

    :cond_3
    check-cast p2, Lcom/vuitton/core/infrastructure/data/forms/models/ProfileFormDto;

    if-eqz p2, :cond_4

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    return-object p2

    :cond_4
    iget-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->b:Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;

    iget-object v2, p2, Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v5, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getProfileForm-qJBbalk$$inlined$getCachedForm-gIAlu-s$1;

    invoke-direct {v5, p1, p2, v4}, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getProfileForm-qJBbalk$$inlined$getCachedForm-gIAlu-s$1;-><init>(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getProfileForm$1;->b:Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;

    iput-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getProfileForm$1;->c:Ljava/lang/String;

    iput v3, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getProfileForm$1;->f:I

    invoke-static {v2, v5, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v0, p2, Lkotlin/Result$Failure;

    if-nez v0, :cond_6

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object p2
.end method

.method public final f(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getAuthenticationForm$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getAuthenticationForm$1;

    iget v1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getAuthenticationForm$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getAuthenticationForm$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getAuthenticationForm$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getAuthenticationForm$1;-><init>(Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getAuthenticationForm$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getAuthenticationForm$1;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getAuthenticationForm$1;->c:Ljava/lang/String;

    iget-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getAuthenticationForm$1;->b:Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->a:Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "authenticationForm.json"

    invoke-static {p1, p2}, Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of v2, p2, Lcom/vuitton/core/infrastructure/data/forms/models/AuthenticationFormDto;

    if-nez v2, :cond_3

    move-object p2, v4

    :cond_3
    check-cast p2, Lcom/vuitton/core/infrastructure/data/forms/models/AuthenticationFormDto;

    if-eqz p2, :cond_4

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    return-object p2

    :cond_4
    iget-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->b:Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;

    iget-object v2, p2, Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v5, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getAuthenticationForm-qJBbalk$$inlined$getCachedForm-gIAlu-s$1;

    invoke-direct {v5, p1, p2, v4}, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getAuthenticationForm-qJBbalk$$inlined$getCachedForm-gIAlu-s$1;-><init>(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getAuthenticationForm$1;->b:Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;

    iput-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getAuthenticationForm$1;->c:Ljava/lang/String;

    iput v3, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getAuthenticationForm$1;->f:I

    invoke-static {v2, v5, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v0, p2, Lkotlin/Result$Failure;

    if-nez v0, :cond_6

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object p2
.end method

.method public final g(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getBookingForm$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getBookingForm$1;

    iget v1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getBookingForm$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getBookingForm$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getBookingForm$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getBookingForm$1;-><init>(Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getBookingForm$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getBookingForm$1;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getBookingForm$1;->c:Ljava/lang/String;

    iget-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getBookingForm$1;->b:Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->a:Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "bookingForm.json"

    invoke-static {p1, p2}, Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of v2, p2, Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto;

    if-nez v2, :cond_3

    move-object p2, v4

    :cond_3
    check-cast p2, Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto;

    if-eqz p2, :cond_4

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    return-object p2

    :cond_4
    iget-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->b:Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;

    iget-object v2, p2, Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v5, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getBookingForm-qJBbalk$$inlined$getCachedForm-gIAlu-s$1;

    invoke-direct {v5, p1, p2, v4}, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getBookingForm-qJBbalk$$inlined$getCachedForm-gIAlu-s$1;-><init>(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getBookingForm$1;->b:Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;

    iput-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getBookingForm$1;->c:Ljava/lang/String;

    iput v3, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getBookingForm$1;->f:I

    invoke-static {v2, v5, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v0, p2, Lkotlin/Result$Failure;

    if-nez v0, :cond_6

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object p2
.end method

.method public final h(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getCompleteProfileForm$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getCompleteProfileForm$1;

    iget v1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getCompleteProfileForm$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getCompleteProfileForm$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getCompleteProfileForm$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getCompleteProfileForm$1;-><init>(Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getCompleteProfileForm$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getCompleteProfileForm$1;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getCompleteProfileForm$1;->c:Ljava/lang/String;

    iget-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getCompleteProfileForm$1;->b:Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->a:Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "completeProfileForm.json"

    invoke-static {p1, p2}, Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of v2, p2, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;

    if-nez v2, :cond_3

    move-object p2, v4

    :cond_3
    check-cast p2, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;

    if-eqz p2, :cond_4

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    return-object p2

    :cond_4
    iget-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->b:Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;

    iget-object v2, p2, Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v5, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getCompleteProfileForm-qJBbalk$$inlined$getCachedForm-gIAlu-s$1;

    invoke-direct {v5, p1, p2, v4}, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getCompleteProfileForm-qJBbalk$$inlined$getCachedForm-gIAlu-s$1;-><init>(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getCompleteProfileForm$1;->b:Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;

    iput-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getCompleteProfileForm$1;->c:Ljava/lang/String;

    iput v3, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getCompleteProfileForm$1;->f:I

    invoke-static {v2, v5, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v0, p2, Lkotlin/Result$Failure;

    if-nez v0, :cond_6

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object p2
.end method

.method public final i(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getCareServiceForm$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getCareServiceForm$1;

    iget v1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getCareServiceForm$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getCareServiceForm$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getCareServiceForm$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getCareServiceForm$1;-><init>(Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getCareServiceForm$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getCareServiceForm$1;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getCareServiceForm$1;->c:Ljava/lang/String;

    iget-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getCareServiceForm$1;->b:Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->a:Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "careServiceForm.json"

    invoke-static {p1, p2}, Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of v2, p2, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;

    if-nez v2, :cond_3

    move-object p2, v4

    :cond_3
    check-cast p2, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;

    if-eqz p2, :cond_4

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    return-object p2

    :cond_4
    iget-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->b:Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;

    iget-object v2, p2, Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v5, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getCareServiceForm-qJBbalk$$inlined$getCachedForm-gIAlu-s$1;

    invoke-direct {v5, p1, p2, v4}, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getCareServiceForm-qJBbalk$$inlined$getCachedForm-gIAlu-s$1;-><init>(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getCareServiceForm$1;->b:Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;

    iput-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getCareServiceForm$1;->c:Ljava/lang/String;

    iput v3, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getCareServiceForm$1;->f:I

    invoke-static {v2, v5, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v0, p2, Lkotlin/Result$Failure;

    if-nez v0, :cond_6

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object p2
.end method

.method public final j(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getRegistrationForm$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getRegistrationForm$1;

    iget v1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getRegistrationForm$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getRegistrationForm$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getRegistrationForm$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getRegistrationForm$1;-><init>(Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getRegistrationForm$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getRegistrationForm$1;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getRegistrationForm$1;->c:Ljava/lang/String;

    iget-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getRegistrationForm$1;->b:Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->a:Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "registerForm.json"

    invoke-static {p1, p2}, Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of v2, p2, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;

    if-nez v2, :cond_3

    move-object p2, v4

    :cond_3
    check-cast p2, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;

    if-eqz p2, :cond_4

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    return-object p2

    :cond_4
    iget-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->b:Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;

    iget-object v2, p2, Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v5, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getRegistrationForm-qJBbalk$$inlined$getCachedForm-gIAlu-s$1;

    invoke-direct {v5, p1, p2, v4}, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getRegistrationForm-qJBbalk$$inlined$getCachedForm-gIAlu-s$1;-><init>(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getRegistrationForm$1;->b:Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;

    iput-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getRegistrationForm$1;->c:Ljava/lang/String;

    iput v3, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getRegistrationForm$1;->f:I

    invoke-static {v2, v5, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v0, p2, Lkotlin/Result$Failure;

    if-nez v0, :cond_6

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object p2
.end method

.method public final k(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getGuestAppointmentForm$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getGuestAppointmentForm$1;

    iget v1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getGuestAppointmentForm$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getGuestAppointmentForm$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getGuestAppointmentForm$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getGuestAppointmentForm$1;-><init>(Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getGuestAppointmentForm$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getGuestAppointmentForm$1;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getGuestAppointmentForm$1;->c:Ljava/lang/String;

    iget-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getGuestAppointmentForm$1;->b:Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->a:Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "guestAppointmentForm.json"

    invoke-static {p1, p2}, Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of v2, p2, Lcom/vuitton/core/infrastructure/data/forms/models/GuestAppointmentFormDto;

    if-nez v2, :cond_3

    move-object p2, v4

    :cond_3
    check-cast p2, Lcom/vuitton/core/infrastructure/data/forms/models/GuestAppointmentFormDto;

    if-eqz p2, :cond_4

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    return-object p2

    :cond_4
    iget-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->b:Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;

    iget-object v2, p2, Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v5, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getGuestAppointmentForm-qJBbalk$$inlined$getCachedForm-gIAlu-s$1;

    invoke-direct {v5, p1, p2, v4}, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getGuestAppointmentForm-qJBbalk$$inlined$getCachedForm-gIAlu-s$1;-><init>(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getGuestAppointmentForm$1;->b:Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;

    iput-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getGuestAppointmentForm$1;->c:Ljava/lang/String;

    iput v3, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource$getGuestAppointmentForm$1;->f:I

    invoke-static {v2, v5, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v0, p2, Lkotlin/Result$Failure;

    if-nez v0, :cond_6

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object p2
.end method
