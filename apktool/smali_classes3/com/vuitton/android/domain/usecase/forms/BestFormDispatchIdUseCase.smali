.class public final Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;",
        "",
        "Lcom/vuitton/android/domain/usecase/forms/GetDispatchIdentifierListForFormUseCase;",
        "getDispatchIdentifierListForFormUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/forms/GetDispatchIdentifierListForFormUseCase;)V",
        "FormDispatchIdentifierDetail",
        "domain"
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
.field public final a:Lcom/vuitton/android/domain/usecase/forms/GetDispatchIdentifierListForFormUseCase;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/forms/GetDispatchIdentifierListForFormUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;->a:Lcom/vuitton/android/domain/usecase/forms/GetDispatchIdentifierListForFormUseCase;

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/forms/FormDispatchId;

    iget-object v3, v1, Lcom/vuitton/foundation/model/domain/model/forms/FormDispatchId;->a:Ljava/lang/String;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts$Companion;->a(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;

    iget-object v4, v1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;->a:Ljava/lang/String;

    iget-object v5, v1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;->b:Ljava/lang/String;

    iget-object v6, v1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;->c:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p3, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$run$1;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$run$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$run$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$run$1;->e:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$run$1;->g:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$run$1;->d:Ljava/lang/String;

    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$run$1;->c:Ljava/lang/String;

    iget-object p2, v0, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$run$1;->b:Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    iget-object p3, p3, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p3, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->j:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;

    invoke-virtual {p1}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p2, v0, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$run$1;->b:Ljava/lang/String;

    iput-object p3, v0, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$run$1;->c:Ljava/lang/String;

    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$run$1;->d:Ljava/lang/String;

    iput v3, v0, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$run$1;->g:I

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;->a:Lcom/vuitton/android/domain/usecase/forms/GetDispatchIdentifierListForFormUseCase;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/domain/usecase/forms/GetDispatchIdentifierListForFormUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v6, p3

    move-object p3, p0

    move-object p0, p1

    move-object p1, v6

    :goto_1
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v0, p3, Lkotlin/Result$Failure;

    if-nez v0, :cond_4

    :try_start_0
    check-cast p3, Ljava/util/List;

    invoke-static {p3}, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p3

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p3}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p3, v0

    :cond_4
    :goto_2
    instance-of v0, p3, Lkotlin/Result$Failure;

    if-nez v0, :cond_14

    :try_start_1
    check-cast p3, Ljava/util/List;

    invoke-static {p2}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    check-cast p3, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_5
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;

    iget-object v2, v2, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;->d:Ljava/lang/String;

    if-nez v2, :cond_6

    move-object v2, v4

    :cond_6
    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;

    iget-object v2, v2, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;->b:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode$Companion;

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v4, v1

    :cond_9
    check-cast v4, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;

    if-nez v4, :cond_12

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;

    goto/16 :goto_7

    :cond_a
    move-object v0, p3

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;

    iget-object v3, v3, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;->d:Ljava/lang/String;

    if-nez v3, :cond_c

    const/4 v3, 0x0

    goto :goto_5

    :cond_c
    sget-object v5, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode$Companion;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_5
    if-eqz v3, :cond_b

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    check-cast p3, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_e
    :goto_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;

    iget-object v3, v3, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;->b:Ljava/lang/String;

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode$Companion;

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    new-instance p3, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$run_0E7RQCE$lambda$1$$inlined$sortedByDescending$1;

    invoke-direct {p3}, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$run_0E7RQCE$lambda$1$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v0, p3}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;

    iget-object v3, v3, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;->b:Ljava/lang/String;

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode$Companion;

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    move-object v4, v2

    :cond_11
    check-cast v4, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;

    if-nez v4, :cond_12

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;

    if-nez v4, :cond_12

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;

    :cond_12
    :goto_7
    if-eqz v4, :cond_13

    iget-object p0, v4, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;->a:Ljava/lang/String;

    new-instance p1, Lcom/vuitton/foundation/model/domain/model/forms/FormDispatchId;

    invoke-direct {p1, p0}, Lcom/vuitton/foundation/model/domain/model/forms/FormDispatchId;-><init>(Ljava/lang/String;)V

    :goto_8
    move-object p3, p1

    goto :goto_9

    :cond_13
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No dispatch identifier found (dispatchRegionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", dispatchLanguage="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", addressRegionCode="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_14
    :goto_9
    return-object p3
.end method
