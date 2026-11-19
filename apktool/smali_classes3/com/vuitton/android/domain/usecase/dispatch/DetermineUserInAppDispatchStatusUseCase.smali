.class public final Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$InAppDispatchStatus;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u000eB1\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase;",
        "",
        "Lcom/vuitton/android/domain/usecase/dispatch/GetDispatchAreaListUseCase;",
        "getDispatchAreaListUseCase",
        "Lcom/vuitton/android/domain/usecase/dispatch/FindDispatchForPhoneUseCase;",
        "findDispatchForPhoneUseCase",
        "Lcom/vuitton/android/domain/usecase/dispatch/FindUserInAppDispatchUseCase;",
        "findUserInAppDispatchUseCase",
        "Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase;",
        "saveUserInAppDispatchUseCase",
        "Lcom/vuitton/android/domain/usecase/dispatch/ClearUserInAppDispatchUseCase;",
        "clearUserInAppDispatchUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/dispatch/GetDispatchAreaListUseCase;Lcom/vuitton/android/domain/usecase/dispatch/FindDispatchForPhoneUseCase;Lcom/vuitton/android/domain/usecase/dispatch/FindUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/dispatch/ClearUserInAppDispatchUseCase;)V",
        "InAppDispatchStatus",
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
.field public final a:Lcom/vuitton/android/domain/usecase/dispatch/GetDispatchAreaListUseCase;

.field public final b:Lcom/vuitton/android/domain/usecase/dispatch/FindDispatchForPhoneUseCase;

.field public final c:Lcom/vuitton/android/domain/usecase/dispatch/FindUserInAppDispatchUseCase;

.field public final d:Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase;

.field public final e:Lcom/vuitton/android/domain/usecase/dispatch/ClearUserInAppDispatchUseCase;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/dispatch/GetDispatchAreaListUseCase;Lcom/vuitton/android/domain/usecase/dispatch/FindDispatchForPhoneUseCase;Lcom/vuitton/android/domain/usecase/dispatch/FindUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/dispatch/ClearUserInAppDispatchUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase;->a:Lcom/vuitton/android/domain/usecase/dispatch/GetDispatchAreaListUseCase;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase;->b:Lcom/vuitton/android/domain/usecase/dispatch/FindDispatchForPhoneUseCase;

    iput-object p3, p0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase;->c:Lcom/vuitton/android/domain/usecase/dispatch/FindUserInAppDispatchUseCase;

    iput-object p4, p0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase;->d:Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase;

    iput-object p5, p0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase;->e:Lcom/vuitton/android/domain/usecase/dispatch/ClearUserInAppDispatchUseCase;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p1, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$run$1;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$run$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$run$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$run$1;->e:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$run$1;->g:I

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

    iget-object p0, v0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v0, v0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$run$1;->b:Ljava/util/List;

    check-cast v0, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_9

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_2
    iget-object p0, v0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$run$1;->b:Ljava/util/List;

    check-cast p0, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_7

    :cond_3
    iget-object p0, v0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$run$1;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v0, v0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$run$1;->b:Ljava/util/List;

    check-cast v0, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_6

    :cond_4
    iget-object v2, v0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$run$1;->b:Ljava/util/List;

    check-cast v2, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_6
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v7, v0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$run$1;->g:I

    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase;->a:Lcom/vuitton/android/domain/usecase/dispatch/GetDispatchAreaListUseCase;

    invoke-virtual {p1, v0}, Lcom/vuitton/android/domain/usecase/dispatch/GetDispatchAreaListUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    goto/16 :goto_8

    :cond_7
    :goto_1
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, p1, Lkotlin/Result$Failure;

    if-eqz v2, :cond_8

    move-object p1, v8

    :cond_8
    move-object v2, p1

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_9

    sget-object p0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$InAppDispatchStatus$FetchDispatchAreaListFailed;->a:Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$InAppDispatchStatus$FetchDispatchAreaListFailed;

    return-object p0

    :cond_9
    move-object p1, v2

    check-cast p1, Ljava/util/List;

    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$run$1;->b:Ljava/util/List;

    iput v6, v0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$run$1;->g:I

    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase;->c:Lcom/vuitton/android/domain/usecase/dispatch/FindUserInAppDispatchUseCase;

    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/dispatch/FindUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {p1, v2, v0}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->c(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    goto/16 :goto_8

    :cond_a
    :goto_2
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v6, p0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase;->d:Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase;

    if-nez p1, :cond_12

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase;->b:Lcom/vuitton/android/domain/usecase/dispatch/FindDispatchForPhoneUseCase;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/dispatch/FindDispatchForPhoneUseCase;->a:Lcom/vuitton/android/domain/repository/PhoneLocaleRepository;

    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/PhoneLocaleRepository;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/PhoneLocaleRepository;->b()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_b

    :goto_3
    move-object p0, v8

    goto :goto_5

    :cond_b
    sget-object v3, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id$Companion;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagBcp47;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagBcp47$Companion;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore$Companion;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id$Companion;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_c

    goto :goto_3

    :cond_c
    invoke-static {p0, v2}, Lcom/vuitton/foundation/model/domain/model/dispatch/DispatchAreaKt;->a(Ljava/lang/String;Ljava/util/List;)Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object p1

    if-nez p1, :cond_f

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts$Companion;->a(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;

    move-result-object p0

    if-nez p0, :cond_d

    move-object p0, v8

    goto :goto_4

    :cond_d
    iget-object p1, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;->c:Ljava/lang/String;

    const-string v3, "_"

    invoke-static {v3, p1, v8, p0}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocalePartsKt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_4
    if-nez p0, :cond_e

    goto :goto_3

    :cond_e
    invoke-static {p0, v2}, Lcom/vuitton/foundation/model/domain/model/dispatch/DispatchAreaKt;->a(Ljava/lang/String;Ljava/util/List;)Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object p0

    goto :goto_5

    :cond_f
    move-object p0, p1

    :goto_5
    if-eqz p0, :cond_11

    iput-object v8, v0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$run$1;->b:Ljava/util/List;

    iput-object v8, v0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-object p0, v0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$run$1;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput v5, v0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$run$1;->g:I

    invoke-virtual {v6, p0, v0}, Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_10

    goto :goto_8

    :cond_10
    :goto_6
    new-instance p1, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$InAppDispatchStatus$InAppDispatchAutoSelected;

    invoke-direct {p1, p0}, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$InAppDispatchStatus$InAppDispatchAutoSelected;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)V

    return-object p1

    :cond_11
    sget-object p0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$InAppDispatchStatus$InAppDispatchNotSet;->a:Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$InAppDispatchStatus$InAppDispatchNotSet;

    return-object p0

    :cond_12
    iget-object v5, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->a:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/vuitton/foundation/model/domain/model/dispatch/DispatchAreaKt;->a(Ljava/lang/String;Ljava/util/List;)Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v2

    if-nez v2, :cond_14

    iput-object v8, v0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$run$1;->b:Ljava/util/List;

    iput-object v8, v0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput v4, v0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$run$1;->g:I

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase;->e:Lcom/vuitton/android/domain/usecase/dispatch/ClearUserInAppDispatchUseCase;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/domain/usecase/dispatch/ClearUserInAppDispatchUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_13

    goto :goto_8

    :cond_13
    :goto_7
    sget-object p0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$InAppDispatchStatus$InAppDispatchDeprecated;->a:Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$InAppDispatchStatus$InAppDispatchDeprecated;

    return-object p0

    :cond_14
    iput-object v8, v0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$run$1;->b:Ljava/util/List;

    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput v3, v0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$run$1;->g:I

    invoke-virtual {v6, p1, v0}, Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_15

    :goto_8
    return-object v1

    :cond_15
    move-object p0, p1

    :goto_9
    new-instance p1, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$InAppDispatchStatus$InAppDispatchValid;

    invoke-direct {p1, p0}, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$InAppDispatchStatus$InAppDispatchValid;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)V

    return-object p1
.end method
