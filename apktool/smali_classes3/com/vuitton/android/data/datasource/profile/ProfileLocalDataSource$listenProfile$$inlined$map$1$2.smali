.class public final Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$listenProfile$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic c:Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$listenProfile$$inlined$map$1$2;->b:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$listenProfile$$inlined$map$1$2;->c:Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$listenProfile$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$listenProfile$$inlined$map$1$2$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$listenProfile$$inlined$map$1$2$1;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$listenProfile$$inlined$map$1$2$1;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$listenProfile$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$listenProfile$$inlined$map$1$2$1;-><init>(Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$listenProfile$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$listenProfile$$inlined$map$1$2$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$listenProfile$$inlined$map$1$2$1;->c:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Landroidx/datastore/preferences/core/Preferences;

    sget-object p2, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;->e:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$listenProfile$$inlined$map$1$2;->c:Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;

    if-eqz p1, :cond_3

    :try_start_0
    iget-object v2, p2, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;->b:Lkotlinx/serialization/json/Json;

    sget-object v5, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->Companion:Lcom/vuitton/android/data/database/entity/profile/ProfileEntity$Companion;

    invoke-virtual {v5}, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v5

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v2, v5, p1}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;

    invoke-static {p1}, Lcom/vuitton/android/data/dto/profile/ProfileMapperKt;->b(Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;)Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object p2, p2, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;->d:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Error deserializing profile: "

    const-string v5, "ProfileLocalDataSource"

    invoke-static {v2, p1, p2, v5, v4}, La;->y(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    iget-object p1, p2, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;->d:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    iput v3, v0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$listenProfile$$inlined$map$1$2$1;->c:I

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$listenProfile$$inlined$map$1$2;->b:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, v4, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
