.class public final Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$Companion;,
        Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;",
        "Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;)V",
        "Companion",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic d:I


# instance fields
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final c:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    sget-object p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;->a()Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->c:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method

.method public static k(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;
    .locals 13

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;->g:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    if-eqz v2, :cond_3

    iget-object p0, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->e:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;

    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;

    if-eqz p1, :cond_2

    check-cast p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;

    const-string p1, ""

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;->g(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;

    move-result-object p0

    :cond_2
    move-object v5, p0

    const/4 v11, 0x0

    const/16 v12, 0x3f8

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p2

    invoke-static/range {v2 .. v12}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->c(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;ZLcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$WithoutTrailingAsterisk;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;Ljava/lang/String;ZZI)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->c:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final a0(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/PhoneType;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->h()Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v2, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$WhenMappings;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    if-eq p1, v2, :cond_8

    const/4 v2, 0x2

    const/16 v4, 0x11

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;->f()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_1
    sget-object p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER3:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_TYPE3:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_COUNTRY3:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    filled-new-array {p1, v1, v2}, [Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    move-result-object p1

    :cond_2
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    new-instance v3, Lck;

    invoke-direct {v3, p1, v4}, Lck;-><init>(Ljava/lang/Object;I)V

    invoke-static {v2, v3}, Lcom/vuitton/android/presentation/screen/dynamicform/model/ext/FormFieldGenericUiModelExtKt;->a(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v2

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a(Ljava/util/List;)Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_3
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_4
    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;->e()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;->f()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER2:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_TYPE2:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_COUNTRY2:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    filled-new-array {p1, v1, v2}, [Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    move-result-object p1

    :cond_6
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    new-instance v3, Lck;

    invoke-direct {v3, p1, v4}, Lck;-><init>(Ljava/lang/Object;I)V

    invoke-static {v2, v3}, Lcom/vuitton/android/presentation/screen/dynamicform/model/ext/FormFieldGenericUiModelExtKt;->a(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v2

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a(Ljava/util/List;)Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->i()V

    return-void

    :cond_7
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final b(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p10

    instance-of v2, v0, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$loadDynamicForm$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$loadDynamicForm$1;

    iget v3, v2, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$loadDynamicForm$1;->l:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$loadDynamicForm$1;->l:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$loadDynamicForm$1;

    invoke-direct {v2, v1, v0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$loadDynamicForm$1;-><init>(Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$loadDynamicForm$1;->j:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$loadDynamicForm$1;->l:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$loadDynamicForm$1;->i:Lkotlin/jvm/functions/Function1;

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$loadDynamicForm$1;->h:Lkotlin/jvm/functions/Function1;

    iget-object v6, v2, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$loadDynamicForm$1;->g:Lkotlin/jvm/functions/Function2;

    iget-object v7, v2, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$loadDynamicForm$1;->f:Lkotlin/jvm/functions/Function1;

    iget-object v8, v2, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$loadDynamicForm$1;->e:Lkotlin/jvm/functions/Function0;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    iget-object v9, v2, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$loadDynamicForm$1;->d:Lkotlin/jvm/functions/Function1;

    iget-object v10, v2, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$loadDynamicForm$1;->c:Lkotlin/jvm/functions/Function2;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$loadDynamicForm$1;->b:Lkotlin/jvm/functions/Function1;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v3

    move-object v3, v7

    move-object v7, v9

    move-object v9, v6

    move-object v6, v10

    move-object v10, v4

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v11, v3

    move-object v3, v7

    move-object v7, v9

    move-object v9, v6

    move-object v6, v10

    move-object v10, v4

    :goto_1
    move-object v4, v2

    goto/16 :goto_a

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    move-object/from16 v4, p2

    :try_start_2
    iput-object v4, v2, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$loadDynamicForm$1;->b:Lkotlin/jvm/functions/Function1;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    move-object/from16 v6, p3

    :try_start_3
    iput-object v6, v2, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$loadDynamicForm$1;->c:Lkotlin/jvm/functions/Function2;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    move-object/from16 v7, p4

    :try_start_4
    iput-object v7, v2, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$loadDynamicForm$1;->d:Lkotlin/jvm/functions/Function1;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    :try_start_5
    move-object/from16 v0, p5

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iput-object v0, v2, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$loadDynamicForm$1;->e:Lkotlin/jvm/functions/Function0;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    move-object/from16 v8, p6

    :try_start_6
    iput-object v8, v2, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$loadDynamicForm$1;->f:Lkotlin/jvm/functions/Function1;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move-object/from16 v9, p7

    :try_start_7
    iput-object v9, v2, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$loadDynamicForm$1;->g:Lkotlin/jvm/functions/Function2;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object/from16 v10, p8

    :try_start_8
    iput-object v10, v2, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$loadDynamicForm$1;->h:Lkotlin/jvm/functions/Function1;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object/from16 v11, p9

    :try_start_9
    iput-object v11, v2, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$loadDynamicForm$1;->i:Lkotlin/jvm/functions/Function1;

    iput v5, v2, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$loadDynamicForm$1;->l:I

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-ne v0, v3, :cond_3

    return-object v3

    :cond_3
    move-object v2, v4

    move-object v3, v8

    move-object/from16 v8, p5

    :goto_2
    :try_start_a
    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    new-instance v4, Lkotlin/Result;

    invoke-direct {v4, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v4}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_b

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    :goto_3
    move-object v3, v8

    move-object/from16 v8, p5

    goto :goto_a

    :catchall_3
    move-exception v0

    :goto_4
    move-object/from16 v11, p9

    goto :goto_3

    :catchall_4
    move-exception v0

    :goto_5
    move-object/from16 v10, p8

    goto :goto_4

    :catchall_5
    move-exception v0

    :goto_6
    move-object/from16 v9, p7

    goto :goto_5

    :catchall_6
    move-exception v0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    goto :goto_4

    :catchall_7
    move-exception v0

    :goto_7
    move-object/from16 v8, p6

    goto :goto_6

    :catchall_8
    move-exception v0

    :goto_8
    move-object/from16 v7, p4

    goto :goto_7

    :catchall_9
    move-exception v0

    :goto_9
    move-object/from16 v6, p3

    goto :goto_8

    :catchall_a
    move-exception v0

    move-object/from16 v4, p2

    goto :goto_9

    :goto_a
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v2

    move-object v2, v4

    :goto_b
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_c

    :cond_4
    instance-of v0, v4, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_1d

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, v4}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v4, Lkotlin/Result;

    invoke-direct {v4, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v0, v4

    :goto_c
    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_d

    :cond_5
    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, v4}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v4, Lkotlin/Result;

    invoke-direct {v4, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v0, v4

    :goto_d
    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-nez v4, :cond_6

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/forms/Form;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/mapper/FormUiModelMapperKt;->f(Lcom/vuitton/foundation/model/domain/model/forms/Form;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_e

    :cond_6
    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, v4}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_e
    instance-of v4, v0, Lkotlin/Result$Failure;

    iget-object v12, v1, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    if-nez v4, :cond_8

    move-object v13, v0

    check-cast v13, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    :cond_7
    invoke-interface {v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-interface {v12, v14, v13}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    :cond_8
    if-nez v4, :cond_c

    :try_start_b
    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/ExtraPhoneField;

    sget-object v4, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    if-eq v0, v5, :cond_b

    const/4 v4, 0x2

    if-eq v0, v4, :cond_a

    const/4 v4, 0x3

    if-ne v0, v4, :cond_9

    sget-object v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/PhoneType;->SECOND_PHONE:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/PhoneType;

    invoke-virtual {v1, v0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->e0(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/PhoneType;)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/PhoneType;->THIRD_PHONE:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/PhoneType;

    invoke-virtual {v1, v0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->e0(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/PhoneType;)V

    goto :goto_f

    :cond_9
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_a
    sget-object v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/PhoneType;->SECOND_PHONE:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/PhoneType;

    invoke-virtual {v1, v0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->e0(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/PhoneType;)V

    :cond_b
    :goto_f
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    goto :goto_10

    :catchall_b
    move-exception v0

    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v4, Lkotlin/Result$Failure;

    invoke-direct {v4, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v4

    :cond_c
    :goto_10
    instance-of v4, v0, Lkotlin/Result$Failure;

    if-nez v4, :cond_16

    :try_start_c
    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    check-cast v0, Lkotlin/Unit;

    :goto_11
    invoke-interface {v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v13, v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_10

    iget-object v13, v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    check-cast v13, Ljava/lang/Iterable;

    instance-of v14, v13, Ljava/util/Collection;

    if-eqz v14, :cond_d

    move-object v14, v13

    check-cast v14, Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_d

    goto :goto_12

    :catchall_c
    move-exception v0

    goto/16 :goto_17

    :cond_d
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;

    invoke-virtual {v14}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;->b()Z

    move-result v14

    if-nez v14, :cond_e

    goto :goto_13

    :cond_f
    :goto_12
    move v13, v5

    goto :goto_14

    :cond_10
    :goto_13
    const/4 v13, 0x0

    :goto_14
    iget-object v14, v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    check-cast v14, Ljava/lang/Iterable;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_15
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_12

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eqz v16, :cond_11

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    const/4 v5, 0x1

    goto :goto_15

    :cond_12
    new-instance v5, Ljava/util/ArrayList;

    const/16 v14, 0xa

    invoke-static {v15, v14}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v5, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_16
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_14

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;

    invoke-interface {v6, v4, v15}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v16

    check-cast v17, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;

    invoke-virtual/range {v17 .. v17}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;->a()Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    move-result-object v8

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;->a()Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    move-result-object v15

    if-ne v8, v15, :cond_13

    move-object/from16 v8, v16

    check-cast v8, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_13
    const-string v0, "Section type mismatch during swap!"

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_14
    new-instance v4, Lmv;

    const/4 v8, 0x0

    invoke-direct {v4, v10, v13, v8}, Lmv;-><init>(Lkotlin/jvm/functions/Function1;ZI)V

    invoke-static {v5, v4}, Lcom/vuitton/android/presentation/screen/dynamicform/model/ext/FormFieldGenericUiModelExtKt;->a(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v4

    invoke-static {v4}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a(Ljava/util/List;)Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    move-result-object v4

    invoke-interface {v12, v0, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    goto :goto_18

    :cond_15
    const/4 v5, 0x1

    goto/16 :goto_11

    :goto_17
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v2

    :cond_16
    :goto_18
    instance-of v2, v0, Lkotlin/Result$Failure;

    if-nez v2, :cond_17

    :try_start_d
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    check-cast v0, Lkotlin/Unit;

    new-instance v0, Ln0;

    const/16 v2, 0x19

    invoke-direct {v0, v3, v1, v9, v2}, Ln0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v12, v0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModelKt;->a(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    goto :goto_19

    :catchall_d
    move-exception v0

    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v2

    :cond_17
    :goto_19
    instance-of v2, v0, Lkotlin/Result$Failure;

    if-nez v2, :cond_18

    :try_start_e
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    check-cast v0, Lkotlin/Unit;

    new-instance v0, Lnv;

    const/4 v8, 0x0

    invoke-direct {v0, v11, v1, v8}, Lnv;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;I)V

    invoke-static {v12, v0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModelKt;->a(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    goto :goto_1a

    :catchall_e
    move-exception v0

    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v2

    :cond_18
    :goto_1a
    instance-of v2, v0, Lkotlin/Result$Failure;

    if-nez v2, :cond_19

    :try_start_f
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    check-cast v0, Lkotlin/Unit;

    new-instance v0, Lnv;

    const/4 v2, 0x1

    invoke-direct {v0, v7, v1, v2}, Lnv;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;I)V

    invoke-static {v12, v0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModelKt;->a(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    goto :goto_1b

    :catchall_f
    move-exception v0

    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v2

    :cond_19
    :goto_1b
    instance-of v2, v0, Lkotlin/Result$Failure;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    if-nez v2, :cond_1a

    move-object v2, v0

    check-cast v2, Lkotlin/Unit;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->c:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1a
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1c

    :cond_1b
    invoke-interface {v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;->a()Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    move-result-object v4

    invoke-interface {v12, v2, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string v2, "DynamicFormSupervisor"

    const-string v4, "\u274c Form loading failed"

    invoke-interface {v3, v2, v4, v1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1c
    return-object v0

    :cond_1d
    throw v4
.end method

.method public final d(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/util/List;)V
    .locals 12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->c:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v0, p1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->c(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->e:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldDependentRemoteEnumUiModel;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldDependentRemoteEnumUiModel;

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    if-nez p1, :cond_2

    :goto_1
    return-void

    :cond_2
    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldDependentRemoteEnumUiModel;->c:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    check-cast p2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p2, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    invoke-direct {v6, v5, v5}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_5
    invoke-static {v5}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_6
    move-object v4, v2

    :cond_7
    :goto_3
    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_8

    move-object v2, v0

    :cond_8
    const/4 p2, 0x1

    invoke-static {p1, v3, v2, p2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldDependentRemoteEnumUiModel;->g(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldDependentRemoteEnumUiModel;Ljava/util/ArrayList;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;I)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldDependentRemoteEnumUiModel;

    move-result-object v4

    const/4 v10, 0x0

    const/16 v11, 0x3fb

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v1 .. v11}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->c(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;ZLcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$WithoutTrailingAsterisk;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;Ljava/lang/String;ZZI)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->m(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;)V

    return-void
.end method

.method public final e0(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/PhoneType;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->h()Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$WhenMappings;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    if-eq p1, v1, :cond_7

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_TYPE3:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_COUNTRY3:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER3:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->l(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_3
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_4
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;->d()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;->e()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    sget-object p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_TYPE2:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_COUNTRY2:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER2:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->l(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)V

    :goto_1
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->i()V

    return-void

    :cond_6
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final f(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;Lrq;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->m(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;)V

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    new-instance v0, Ln0;

    const/16 v1, 0x18

    invoke-direct {v0, p1, p0, p2, v1}, Ln0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModelKt;->a(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final g(Lre;)V
    .locals 5

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    new-instance v3, Lck;

    const/16 v4, 0xf

    invoke-direct {v3, p1, v4}, Lck;-><init>(Ljava/lang/Object;I)V

    invoke-static {v2, v3}, Lcom/vuitton/android/presentation/screen/dynamicform/model/ext/FormFieldGenericUiModelExtKt;->a(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v2

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a(Ljava/util/List;)Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->i()V

    return-void
.end method

.method public final h(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)V
    .locals 12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->c:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v0, p1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->c(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v10, 0x0

    const/16 v11, 0x3fe

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v2, p2

    invoke-static/range {v1 .. v11}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->c(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;ZLcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$WithoutTrailingAsterisk;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;Ljava/lang/String;ZZI)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->m(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;)V

    return-void
.end method

.method public final i()V
    .locals 6

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    new-instance v4, Ljv;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5}, Ljv;-><init>(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;I)V

    invoke-static {v3, v4}, Lcom/vuitton/android/presentation/screen/dynamicform/model/ext/FormFieldGenericUiModelExtKt;->a(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v2

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a(Ljava/util/List;)Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final j(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->c:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v0, p1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->c(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->n(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V

    new-instance p2, Ln0;

    const/16 v0, 0x18

    invoke-direct {p2, p1, p0, p3, v0}, Ln0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p0, p2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModelKt;->a(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final l(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)V
    .locals 7

    sget-object v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_TYPE1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-static {p1, v0, p2}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->k(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-result-object p2

    sget-object v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_COUNTRY1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-static {p1, v0, p3}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->k(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-result-object p3

    sget-object v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-static {p1, v0, p4}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->k(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-result-object p4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    iget-object v1, p4, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->e:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;

    instance-of v1, v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p4, v0

    :goto_0
    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;

    instance-of v5, v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;

    if-eqz v5, :cond_2

    check-cast v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;->g:Ljava/util/List;

    check-cast v6, Ljava/util/Collection;

    invoke-virtual {v5, v6}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    filled-new-array {p2, p3, p4}, [Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-virtual {v5, v6}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;->c(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;Ljava/util/AbstractList;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;

    move-result-object v4

    :cond_2
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-direct {v2, v3}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_4
    return-void
.end method

.method public final m(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;)V
    .locals 5

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    new-instance v3, Lck;

    const/16 v4, 0x10

    invoke-direct {v3, p1, v4}, Lck;-><init>(Ljava/lang/Object;I)V

    invoke-static {v2, v3}, Lcom/vuitton/android/presentation/screen/dynamicform/model/ext/FormFieldGenericUiModelExtKt;->a(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v2

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a(Ljava/util/List;)Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->i()V

    return-void
.end method

.method public final n(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V
    .locals 12

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->c:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v0, p1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->c(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object p1, v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->e:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel$EnumBasedFormField;

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel$EnumBasedFormField;

    instance-of v3, p2, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    new-instance v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, v4, p2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_2

    new-instance v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    check-cast p2, Ljava/lang/String;

    invoke-direct {v3, p2, p2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v3, p2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    if-eqz v3, :cond_3

    move-object v3, p2

    check-cast v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    goto :goto_0

    :cond_3
    move-object v3, v2

    :goto_0
    if-nez v3, :cond_4

    move-object v3, v2

    :cond_4
    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel$EnumBasedFormField;->a()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    invoke-static {v5, v3}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModelKt;->a(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_6
    move-object v4, v2

    :goto_1
    check-cast v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    if-nez v4, :cond_7

    if-eqz v3, :cond_16

    instance-of p2, v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldReadOnlyEnumUiModel;

    if-eqz p2, :cond_16

    move-object v2, v3

    goto/16 :goto_6

    :cond_7
    move-object v2, v4

    goto/16 :goto_6

    :cond_8
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldBooleanUiModel;

    if-eqz v0, :cond_f

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    check-cast p2, Ljava/lang/Boolean;

    goto :goto_3

    :cond_9
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_a

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_3

    :cond_a
    instance-of v0, p2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    if-eqz v0, :cond_d

    check-cast p2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    iget-object v0, p2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;->b:Ljava/lang/String;

    if-eqz v0, :cond_c

    invoke-static {v0}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_2

    :cond_b
    move-object p2, v0

    goto :goto_3

    :cond_c
    :goto_2
    iget-object p2, p2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;->a:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_3

    :cond_d
    move-object p2, v2

    :goto_3
    if-nez p2, :cond_e

    goto :goto_6

    :cond_e
    move-object v2, p2

    goto :goto_6

    :cond_f
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;

    if-nez v0, :cond_11

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldReadOnlyUiModel;

    if-eqz v0, :cond_10

    goto :goto_4

    :cond_10
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_11
    :goto_4
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_12

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    :cond_12
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_13

    check-cast p2, Ljava/lang/String;

    goto :goto_5

    :cond_13
    instance-of v0, p2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    if-eqz v0, :cond_15

    check-cast p2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    iget-object v0, p2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    iget-object p2, p2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;->a:Ljava/lang/String;

    invoke-static {p2}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    :cond_14
    move-object p2, v0

    goto :goto_5

    :cond_15
    move-object p2, v2

    :goto_5
    if-nez p2, :cond_e

    :cond_16
    :goto_6
    if-nez v2, :cond_17

    goto :goto_7

    :cond_17
    invoke-interface {p1, v2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;->f(Ljava/lang/Object;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;

    move-result-object v4

    if-nez v4, :cond_18

    :goto_7
    return-void

    :cond_18
    const/4 v10, 0x0

    const/16 v11, 0x3fb

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v1 .. v11}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->c(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;ZLcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$WithoutTrailingAsterisk;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;Ljava/lang/String;ZZI)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->m(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;)V

    return-void
.end method
