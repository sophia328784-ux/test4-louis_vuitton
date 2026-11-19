.class final Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$loadDynamicForm$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.dynamicform.DynamicFormSupervisorImpl"
    f = "DynamicFormSupervisorImpl.kt"
    l = {
        0x37
    }
    m = "loadDynamicForm-LiYkppA"
    v = 0x2
.end annotation


# instance fields
.field public b:Lkotlin/jvm/functions/Function1;

.field public c:Lkotlin/jvm/functions/Function2;

.field public d:Lkotlin/jvm/functions/Function1;

.field public e:Lkotlin/jvm/functions/Function0;

.field public f:Lkotlin/jvm/functions/Function1;

.field public g:Lkotlin/jvm/functions/Function2;

.field public h:Lkotlin/jvm/functions/Function1;

.field public i:Lkotlin/jvm/functions/Function1;

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;

.field public l:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$loadDynamicForm$1;->k:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$loadDynamicForm$1;->j:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$loadDynamicForm$1;->l:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$loadDynamicForm$1;->l:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$loadDynamicForm$1;->k:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v10, p0

    invoke-virtual/range {v0 .. v10}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->b(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
