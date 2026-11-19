.class public final Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;",
        "",
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

    iput-object p1, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;->a:Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;

    iput-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;->b:Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;->c:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p2, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList$1;

    iget v1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList$1;-><init>(Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList$1;->f:I

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_6

    if-eq v2, v7, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList$1;->c:Ljava/lang/String;

    iget-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList$1;->b:Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    goto/16 :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_2
    iget-object p0, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList$1;->c:Ljava/lang/String;

    iget-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList$1;->b:Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    goto/16 :goto_2

    :cond_3
    iget-object p0, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList$1;->c:Ljava/lang/String;

    iget-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList$1;->b:Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    goto/16 :goto_3

    :cond_4
    iget-object p0, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList$1;->c:Ljava/lang/String;

    iget-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList$1;->b:Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    goto/16 :goto_4

    :cond_5
    iget-object p0, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList$1;->c:Ljava/lang/String;

    iget-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList$1;->b:Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    goto/16 :goto_6

    :cond_6
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p2, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    iget-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;->b:Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;

    iget-object v2, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;->c:Ljava/util/LinkedHashMap;

    iget-object v9, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;->a:Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;

    if-eq p1, v7, :cond_1b

    if-eq p1, v6, :cond_16

    if-eq p1, v5, :cond_11

    if-eq p1, v4, :cond_c

    if-ne p1, v3, :cond_b

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "GeneratedAppSchemes/CivilityDTOMap_profileTwist.json"

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/util/List;

    if-nez v4, :cond_7

    move-object v2, v8

    :cond_7
    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_8

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    return-object v2

    :cond_8
    iget-object v2, p2, Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v4, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList-gIAlu-s$$inlined$getCachedCivilities-gIAlu-s$5;

    invoke-direct {v4, p1, p2, v8}, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList-gIAlu-s$$inlined$getCachedCivilities-gIAlu-s$5;-><init>(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList$1;->b:Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;

    iput-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList$1;->c:Ljava/lang/String;

    iput v3, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList$1;->f:I

    invoke-static {v2, v4, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_9

    goto/16 :goto_5

    :cond_9
    :goto_1
    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v0, p2, Lkotlin/Result$Failure;

    if-nez v0, :cond_a

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-object p2

    :cond_b
    invoke-static {}, Lv40;->g()V

    return-object v8

    :cond_c
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "GeneratedAppSchemes/CivilityDTOMap_profileATG.json"

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/List;

    if-nez v3, :cond_d

    move-object v2, v8

    :cond_d
    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_e

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    return-object v2

    :cond_e
    iget-object v2, p2, Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v3, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList-gIAlu-s$$inlined$getCachedCivilities-gIAlu-s$4;

    invoke-direct {v3, p1, p2, v8}, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList-gIAlu-s$$inlined$getCachedCivilities-gIAlu-s$4;-><init>(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList$1;->b:Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;

    iput-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList$1;->c:Ljava/lang/String;

    iput v4, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList$1;->f:I

    invoke-static {v2, v3, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_f

    goto/16 :goto_5

    :cond_f
    :goto_2
    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v0, p2, Lkotlin/Result$Failure;

    if-nez v0, :cond_10

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-object p2

    :cond_11
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "GeneratedAppSchemes/CivilityDTOMap_guestAppointment.json"

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/List;

    if-nez v3, :cond_12

    move-object v2, v8

    :cond_12
    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_13

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    return-object v2

    :cond_13
    iget-object v2, p2, Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v3, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList-gIAlu-s$$inlined$getCachedCivilities-gIAlu-s$3;

    invoke-direct {v3, p1, p2, v8}, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList-gIAlu-s$$inlined$getCachedCivilities-gIAlu-s$3;-><init>(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList$1;->b:Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;

    iput-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList$1;->c:Ljava/lang/String;

    iput v5, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList$1;->f:I

    invoke-static {v2, v3, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_14

    goto/16 :goto_5

    :cond_14
    :goto_3
    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v0, p2, Lkotlin/Result$Failure;

    if-nez v0, :cond_15

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-object p2

    :cond_16
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "GeneratedAppSchemes/CivilityDTOMap_addressATG.json"

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/List;

    if-nez v3, :cond_17

    move-object v2, v8

    :cond_17
    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_18

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    return-object v2

    :cond_18
    iget-object v2, p2, Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v3, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList-gIAlu-s$$inlined$getCachedCivilities-gIAlu-s$2;

    invoke-direct {v3, p1, p2, v8}, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList-gIAlu-s$$inlined$getCachedCivilities-gIAlu-s$2;-><init>(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList$1;->b:Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;

    iput-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList$1;->c:Ljava/lang/String;

    iput v6, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList$1;->f:I

    invoke-static {v2, v3, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_19

    goto :goto_5

    :cond_19
    :goto_4
    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v0, p2, Lkotlin/Result$Failure;

    if-nez v0, :cond_1a

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    return-object p2

    :cond_1b
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "GeneratedAppSchemes/CivilityDTOMap_addressTwist.json"

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/List;

    if-nez v3, :cond_1c

    move-object v2, v8

    :cond_1c
    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1d

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    return-object v2

    :cond_1d
    iget-object v2, p2, Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v3, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList-gIAlu-s$$inlined$getCachedCivilities-gIAlu-s$1;

    invoke-direct {v3, p1, p2, v8}, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList-gIAlu-s$$inlined$getCachedCivilities-gIAlu-s$1;-><init>(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList$1;->b:Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;

    iput-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList$1;->c:Ljava/lang/String;

    iput v7, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList$1;->f:I

    invoke-static {v2, v3, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_1e

    :goto_5
    return-object v1

    :cond_1e
    :goto_6
    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v0, p2, Lkotlin/Result$Failure;

    if-nez v0, :cond_1f

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-object p2
.end method
