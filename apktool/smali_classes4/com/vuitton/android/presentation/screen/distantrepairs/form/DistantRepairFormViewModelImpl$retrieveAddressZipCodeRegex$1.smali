.class final Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$retrieveAddressZipCodeRegex$1;
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
    c = "com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModelImpl$retrieveAddressZipCodeRegex$1"
    f = "DistantRepairFormViewModelImpl.kt"
    l = {
        0xcd
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

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$retrieveAddressZipCodeRegex$1;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$retrieveAddressZipCodeRegex$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$retrieveAddressZipCodeRegex$1;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;

    invoke-direct {p1, p2, p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$retrieveAddressZipCodeRegex$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$retrieveAddressZipCodeRegex$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$retrieveAddressZipCodeRegex$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$retrieveAddressZipCodeRegex$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$retrieveAddressZipCodeRegex$1;->b:I

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$retrieveAddressZipCodeRegex$1;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;->p:Lcom/vuitton/android/domain/usecase/forms/GetMainAddressFormUseCase;

    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;->s:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput v3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$retrieveAddressZipCodeRegex$1;->b:I

    invoke-virtual {p1, v1, v4, p0}, Lcom/vuitton/android/domain/usecase/forms/GetMainAddressFormUseCase;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_8

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/forms/Form;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/dynamicform/mapper/FormUiModelMapperKt;->f(Lcom/vuitton/foundation/model/domain/model/forms/Form;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-eqz p1, :cond_3

    move-object p0, v4

    :cond_3
    check-cast p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    if-eqz p0, :cond_6

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    if-eqz p0, :cond_6

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->POSTAL_CODE:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_5
    move-object p1, v4

    :goto_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;

    if-eqz p1, :cond_6

    check-cast p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    iget-object p0, p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->e:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;->a:Ljava/lang/String;

    :cond_6
    move-object v9, v4

    iget-object p0, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_7
    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    const/4 v10, 0x0

    const/16 v11, 0x77

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v11}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;Lcom/vuitton/foundation/model/domain/model/profile/Profile;Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
