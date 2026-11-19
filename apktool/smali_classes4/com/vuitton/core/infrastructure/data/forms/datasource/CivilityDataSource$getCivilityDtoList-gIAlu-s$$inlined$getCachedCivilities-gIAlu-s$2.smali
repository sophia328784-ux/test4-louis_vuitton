.class public final Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList-gIAlu-s$$inlined$getCachedCivilities-gIAlu-s$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Result<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/vuitton/core/infrastructure/data/forms/models/DispatchCivilityDto;",
        ">;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\"\u0006\u0008\u0000\u0010\u0000\u0018\u0001*\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "T",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/Result;",
        "<anonymous>",
        "(Lkotlinx/coroutines/CoroutineScope;)Lkotlin/Result;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.core.infrastructure.data.forms.reader.FileReader$readJson$2"
    f = "FileReader.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList-gIAlu-s$$inlined$getCachedCivilities-gIAlu-s$2;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList-gIAlu-s$$inlined$getCachedCivilities-gIAlu-s$2;->d:Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList-gIAlu-s$$inlined$getCachedCivilities-gIAlu-s$2;

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList-gIAlu-s$$inlined$getCachedCivilities-gIAlu-s$2;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList-gIAlu-s$$inlined$getCachedCivilities-gIAlu-s$2;->d:Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;

    invoke-direct {v0, v1, p0, p2}, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList-gIAlu-s$$inlined$getCachedCivilities-gIAlu-s$2;-><init>(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList-gIAlu-s$$inlined$getCachedCivilities-gIAlu-s$2;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList-gIAlu-s$$inlined$getCachedCivilities-gIAlu-s$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList-gIAlu-s$$inlined$getCachedCivilities-gIAlu-s$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList-gIAlu-s$$inlined$getCachedCivilities-gIAlu-s$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList-gIAlu-s$$inlined$getCachedCivilities-gIAlu-s$2;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList-gIAlu-s$$inlined$getCachedCivilities-gIAlu-s$2;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->b(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource$getCivilityDtoList-gIAlu-s$$inlined$getCachedCivilities-gIAlu-s$2;->d:Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;->a:Lkotlinx/serialization/json/Json;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lcom/vuitton/core/infrastructure/data/forms/models/DispatchCivilityDto;->Companion:Lcom/vuitton/core/infrastructure/data/forms/models/DispatchCivilityDto$Companion;

    invoke-virtual {v1}, Lcom/vuitton/core/infrastructure/data/forms/models/DispatchCivilityDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_0
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
