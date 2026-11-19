.class public final Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2;
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

.field public final synthetic c:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2;->b:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2;->c:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;

    iget v3, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->c:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->c:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;

    invoke-direct {v2, v0, v1}, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;-><init>(Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->b:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->c:I

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2;->c:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v4, :cond_6

    if-eq v4, v11, :cond_5

    if-eq v4, v10, :cond_4

    if-eq v4, v9, :cond_3

    if-eq v4, v8, :cond_2

    if-ne v4, v7, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v12

    :cond_2
    iget-boolean v0, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->k:Z

    iget-boolean v4, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->j:Z

    iget-boolean v5, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->i:Z

    iget-boolean v6, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->h:Z

    iget v8, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->e:I

    iget-object v9, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->d:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move/from16 v16, v0

    move v14, v5

    move/from16 v18, v6

    :goto_1
    move v15, v4

    goto/16 :goto_5

    :cond_3
    iget-boolean v0, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->j:Z

    iget-boolean v4, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->i:Z

    iget v9, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->g:I

    iget-boolean v10, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->h:Z

    iget v11, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->e:I

    iget-object v13, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->d:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move/from16 v19, v4

    move v4, v0

    move/from16 v0, v19

    move-object/from16 v19, v13

    move v13, v9

    move-object/from16 v9, v19

    goto/16 :goto_4

    :cond_4
    iget-boolean v0, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->i:Z

    iget v4, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->g:I

    iget-boolean v10, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->h:Z

    iget v11, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->e:I

    iget-object v13, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->d:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    iget v0, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->g:I

    iget-boolean v4, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->h:Z

    iget v11, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->e:I

    iget-object v13, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->d:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->ACCESSIBILITY_SIMPLIFY_NAVIGATION:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v4}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v4

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2;->b:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v0, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->d:Lkotlinx/coroutines/flow/FlowCollector;

    iput v6, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->e:I

    iput-boolean v1, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->h:Z

    iput v6, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->g:I

    iput v11, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->c:I

    invoke-virtual {v5, v4, v6, v2}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_7

    goto/16 :goto_6

    :cond_7
    move-object v11, v4

    move v4, v1

    move-object v1, v11

    move-object v13, v0

    move v0, v6

    move v11, v0

    :goto_2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v14, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->ACCESSIBILITY_DISABLE_AUTOPLAY:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v14}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v14

    iput-object v13, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->d:Lkotlinx/coroutines/flow/FlowCollector;

    iput v11, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->e:I

    iput-boolean v4, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->h:Z

    iput v0, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->g:I

    iput-boolean v1, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->i:Z

    iput v10, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->c:I

    invoke-virtual {v5, v14, v6, v2}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v3, :cond_8

    goto/16 :goto_6

    :cond_8
    move/from16 v19, v4

    move v4, v0

    move v0, v1

    move-object v1, v10

    move/from16 v10, v19

    :goto_3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v14, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->ACCESSIBILITY_ENHANCED_CONTRAST:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v14}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v14

    iput-object v13, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->d:Lkotlinx/coroutines/flow/FlowCollector;

    iput v11, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->e:I

    iput-boolean v10, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->h:Z

    iput v4, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->g:I

    iput-boolean v0, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->i:Z

    iput-boolean v1, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->j:Z

    iput v9, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->c:I

    invoke-virtual {v5, v14, v6, v2}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v3, :cond_9

    goto :goto_6

    :cond_9
    move/from16 v19, v4

    move v4, v1

    move-object v1, v9

    move-object v9, v13

    move/from16 v13, v19

    :goto_4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v14, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->ACCESSIBILITY_STATEMENT:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v14}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v14

    iput-object v9, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->d:Lkotlinx/coroutines/flow/FlowCollector;

    iput v11, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->e:I

    iput-boolean v10, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->h:Z

    iput v13, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->g:I

    iput-boolean v0, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->i:Z

    iput-boolean v4, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->j:Z

    iput-boolean v1, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->k:Z

    iput v8, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->c:I

    invoke-virtual {v5, v14, v6, v2}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_a

    goto :goto_6

    :cond_a
    move v14, v0

    move/from16 v16, v1

    move-object v1, v5

    move/from16 v18, v10

    move v8, v11

    goto/16 :goto_1

    :goto_5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    new-instance v13, Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesFeatureFlags;

    invoke-direct/range {v13 .. v18}, Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesFeatureFlags;-><init>(ZZZZZ)V

    iput-object v12, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->d:Lkotlinx/coroutines/flow/FlowCollector;

    iput v8, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->e:I

    iput v7, v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1;->c:I

    invoke-interface {v9, v13, v2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_b

    :goto_6
    return-object v3

    :cond_b
    :goto_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
