.class final Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel$getFaqCategoryList$2;
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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
    c = "com.vuitton.android.presentation.screen.connectivity.faqcategory.FaqCategoriesViewModel$getFaqCategoryList$2"
    f = "FaqCategoriesViewModel.kt"
    l = {
        0x18,
        0x19
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel;

.field public final synthetic d:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategoryType;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel;Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategoryType;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel$getFaqCategoryList$2;->c:Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel$getFaqCategoryList$2;->d:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategoryType;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel$getFaqCategoryList$2;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel$getFaqCategoryList$2;->c:Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel$getFaqCategoryList$2;->d:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategoryType;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel$getFaqCategoryList$2;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel;Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategoryType;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel$getFaqCategoryList$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel$getFaqCategoryList$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel$getFaqCategoryList$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel$getFaqCategoryList$2;->b:I

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel$getFaqCategoryList$2;->c:Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v2, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel;->c:Lcom/vuitton/android/domain/usecase/connectivity/GetFaqCategoryListUseCase;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel$getFaqCategoryList$2;->b:I

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel$getFaqCategoryList$2;->d:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategoryType;

    invoke-virtual {p1, v1, p0}, Lcom/vuitton/android/domain/usecase/connectivity/GetFaqCategoryListUseCase;->a(Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategoryType;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    check-cast p1, Ljava/util/List;

    new-instance v1, Lud;

    const/4 v4, 0x3

    invoke-direct {v1, p1, v4}, Lud;-><init>(Ljava/util/List;I)V

    iput v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel$getFaqCategoryList$2;->b:I

    sget p1, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel;->e:I

    invoke-virtual {v2, p0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;->zc(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
