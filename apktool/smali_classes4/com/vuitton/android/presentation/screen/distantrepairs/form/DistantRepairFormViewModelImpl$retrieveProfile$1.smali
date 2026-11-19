.class final Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$retrieveProfile$1;
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModelImpl$retrieveProfile$1"
    f = "DistantRepairFormViewModelImpl.kt"
    l = {
        0x107,
        0x107
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$retrieveProfile$1;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$retrieveProfile$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$retrieveProfile$1;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;

    invoke-direct {p1, p2, p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$retrieveProfile$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$retrieveProfile$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$retrieveProfile$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$retrieveProfile$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$retrieveProfile$1;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$retrieveProfile$1;->b:I

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    if-eq v3, v6, :cond_1

    if-ne v3, v5, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    iput v6, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$retrieveProfile$1;->b:I

    invoke-virtual {p1, p0}, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput v5, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$retrieveProfile$1;->b:I

    invoke-interface {p1, p0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_4

    :goto_1
    return-object v2

    :cond_4
    :goto_2
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_14

    move-object v8, p0

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    :cond_5
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    const/4 v12, 0x0

    const/16 v13, 0x7e

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v7 .. v13}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;Lcom/vuitton/foundation/model/domain/model/profile/Profile;Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz v8, :cond_8

    iget-object p1, v8, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->i:Ljava/util/List;

    if-eqz p1, :cond_8

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/profile/Address;

    iget-boolean v3, v3, Lcom/vuitton/foundation/model/domain/model/profile/Address;->b:Z

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_7
    move-object v2, v4

    :goto_3
    check-cast v2, Lcom/vuitton/foundation/model/domain/model/profile/Address;

    goto :goto_4

    :cond_8
    move-object v2, v4

    :goto_4
    if-eqz v2, :cond_9

    iget-object p1, v2, Lcom/vuitton/foundation/model/domain/model/profile/Address;->y:Ljava/lang/String;

    if-eqz p1, :cond_9

    sget-object v3, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;->Companion:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type$Companion;->a(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;

    move-result-object p1

    goto :goto_5

    :cond_9
    sget-object p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;->MOBILE:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;

    :goto_5
    if-eqz v2, :cond_a

    iget-object v3, v2, Lcom/vuitton/foundation/model/domain/model/profile/Address;->w:Ljava/lang/String;

    if-eqz v3, :cond_a

    sget-object v5, Lcom/vuitton/android/presentation/helper/PhoneNumberHelper;->a:Ljava/util/Set;

    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->d()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v5

    :try_start_0
    const-string v7, ""

    invoke-virtual {v5, v3, v7}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->p(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v5

    iget-boolean v5, v5, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->b:Z
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    const/4 v5, 0x0

    :goto_6
    if-ne v5, v6, :cond_a

    invoke-static {v3}, Lcom/vuitton/android/presentation/helper/PhoneNumberHelper;->c(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v2

    iget-object v3, v2, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v2, v2, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    goto :goto_a

    :cond_a
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->e:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CountryUiModel;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CountryUiModel;->b:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v7, v2, Lcom/vuitton/foundation/model/domain/model/profile/Address;->x:Ljava/lang/String;

    goto :goto_7

    :cond_c
    move-object v7, v4

    :goto_7
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_8

    :cond_d
    move-object v5, v4

    :goto_8
    check-cast v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CountryUiModel;

    if-eqz v5, :cond_e

    iget-object v3, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CountryUiModel;->d:Ljava/lang/String;

    goto :goto_9

    :cond_e
    move-object v3, v4

    :goto_9
    if-eqz v2, :cond_f

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/profile/Address;->w:Ljava/lang/String;

    goto :goto_a

    :cond_f
    move-object v2, v4

    :goto_a
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->e:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CountryUiModel;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CountryUiModel;->d:Ljava/lang/String;

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    goto :goto_b

    :cond_11
    move-object v5, v4

    :goto_b
    check-cast v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CountryUiModel;

    if-eqz v5, :cond_12

    iget-object v1, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CountryUiModel;->b:Ljava/lang/String;

    goto :goto_c

    :cond_12
    move-object v1, v4

    :goto_c
    sget-object v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;->MOBILE:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;

    if-ne p1, v5, :cond_13

    move-object v4, v2

    :cond_13
    invoke-virtual {v0, v3, v1, v4}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;->V0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_15

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    const-string v0, "DistantRepairFormViewModelImpl"

    const-string v1, "Unable to retrieve profile"

    invoke-interface {p1, v0, v1, p0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
