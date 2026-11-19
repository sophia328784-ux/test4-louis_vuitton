.class final Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1;
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
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;

.field public final synthetic c:Z

.field public final synthetic d:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;ZLkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1;->b:Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1;->c:Z

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1;->d:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method


# virtual methods
.method public final b(Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1;->b:Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    instance-of v5, v2, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1$emit$1;

    if-eqz v5, :cond_0

    move-object v5, v2

    check-cast v5, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1$emit$1;

    iget v6, v5, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1$emit$1;->g:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_0

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1$emit$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1$emit$1;

    invoke-direct {v5, v0, v2}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1$emit$1;-><init>(Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v5, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1$emit$1;->e:Ljava/lang/Object;

    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v7, v5, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1$emit$1;->g:I

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v7, :cond_3

    if-eq v7, v11, :cond_2

    if-ne v7, v10, :cond_1

    iget-object v1, v5, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1$emit$1;->d:Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;

    iget-object v6, v5, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1$emit$1;->c:Ljava/lang/Object;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1$emit$1;->b:Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v12

    :cond_2
    iget-object v1, v5, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1$emit$1;->b:Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/Result;

    iget-object v2, v2, Lkotlin/Result;->b:Ljava/lang/Object;

    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :goto_1
    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v2, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;->b:Landroidx/compose/runtime/MutableState;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    iget-object v7, v3, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/account/consent/PatchUserConsentsUseCase;

    new-instance v13, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;

    iget-object v14, v1, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;->a:Lcom/vuitton/android/presentation/screen/mylv/models/KisaUserConsentsUiModel;

    if-eqz v14, :cond_4

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;

    iget-object v10, v14, Lcom/vuitton/android/presentation/screen/mylv/models/KisaUserConsentsUiModel;->a:Ljava/lang/Boolean;

    iget-object v8, v14, Lcom/vuitton/android/presentation/screen/mylv/models/KisaUserConsentsUiModel;->b:Ljava/lang/Boolean;

    iget-object v12, v14, Lcom/vuitton/android/presentation/screen/mylv/models/KisaUserConsentsUiModel;->c:Ljava/lang/Boolean;

    iget-object v9, v14, Lcom/vuitton/android/presentation/screen/mylv/models/KisaUserConsentsUiModel;->d:Ljava/lang/Boolean;

    iget-object v11, v14, Lcom/vuitton/android/presentation/screen/mylv/models/KisaUserConsentsUiModel;->e:Ljava/lang/Boolean;

    move-object/from16 v17, v8

    iget-object v8, v14, Lcom/vuitton/android/presentation/screen/mylv/models/KisaUserConsentsUiModel;->f:Ljava/lang/Boolean;

    move-object/from16 v21, v8

    iget-object v8, v14, Lcom/vuitton/android/presentation/screen/mylv/models/KisaUserConsentsUiModel;->g:Ljava/lang/Boolean;

    iget-object v14, v14, Lcom/vuitton/android/presentation/screen/mylv/models/KisaUserConsentsUiModel;->h:Ljava/lang/Boolean;

    move-object/from16 v22, v8

    move-object/from16 v19, v9

    move-object/from16 v16, v10

    move-object/from16 v20, v11

    move-object/from16 v18, v12

    move-object/from16 v23, v14

    invoke-direct/range {v15 .. v23}, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    :goto_2
    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;->b:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v16, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;

    iget-boolean v8, v1, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->a:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    iget-boolean v8, v1, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->b:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    iget-boolean v8, v1, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->c:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    iget-boolean v8, v1, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->d:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->e:Ljava/lang/Boolean;

    iget-object v9, v1, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->f:Ljava/lang/Boolean;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->g:Ljava/lang/Boolean;

    move-object/from16 v23, v1

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    invoke-direct/range {v16 .. v23}, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    move-object/from16 v1, v16

    invoke-direct {v13, v15, v1}, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;-><init>(Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;)V

    iput-object v2, v5, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1$emit$1;->b:Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    const/4 v8, 0x1

    iput v8, v5, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1$emit$1;->g:I

    const/4 v9, 0x0

    invoke-virtual {v7, v13, v9, v5}, Lcom/vuitton/android/domain/usecase/account/consent/PatchUserConsentsUseCase;->a(Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_5

    goto/16 :goto_4

    :cond_5
    move-object/from16 v24, v2

    move-object v2, v1

    move-object/from16 v1, v24

    :goto_3
    sget-object v7, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v7, v2, Lkotlin/Result$Failure;

    if-nez v7, :cond_9

    move-object v7, v2

    check-cast v7, Lkotlin/Unit;

    iget-boolean v7, v0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1;->c:Z

    if-eqz v7, :cond_8

    iget-object v7, v3, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->e:Lcom/vuitton/android/presentation/screen/options/settings/SettingsTracker;

    iget-boolean v8, v1, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->b:Z

    iget-boolean v10, v1, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->d:Z

    iget-boolean v11, v1, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->a:Z

    iget-boolean v12, v1, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->c:Z

    iget-object v13, v1, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->g:Ljava/lang/Boolean;

    if-eqz v13, :cond_6

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    :cond_6
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    new-instance v13, Lkotlin/Pair;

    const-string v14, "phone"

    invoke-direct {v13, v14, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    new-instance v11, Lkotlin/Pair;

    const-string v14, "sms"

    invoke-direct {v11, v14, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    new-instance v10, Lkotlin/Pair;

    const-string v14, "mail"

    invoke-direct {v10, v14, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    new-instance v12, Lkotlin/Pair;

    const-string v14, "newsletter"

    invoke-direct {v12, v14, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    new-instance v9, Lkotlin/Pair;

    const-string v14, "email_tracking"

    invoke-direct {v9, v14, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v13, v11, v10, v12, v9}, [Lkotlin/Pair;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/Iterable;

    new-instance v13, Lav0;

    const/16 v8, 0xc

    invoke-direct {v13, v8}, Lav0;-><init>(I)V

    const/16 v14, 0x1e

    const-string v10, ","

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v8

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/options/settings/SettingsTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    invoke-static {v8}, Lo60;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x21

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v11, "LVPass/MyLV/Dashboard/mysettings/contactPreferences"

    const-string v12, "new_settings_saved"

    const-string v13, "MyLV"

    const-string v14, "response"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v7, v9}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-static {v3}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v7

    new-instance v8, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$retrieveConsents$1;

    const/4 v9, 0x0

    invoke-direct {v8, v3, v9}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$retrieveConsents$1;-><init>(Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x3

    invoke-static {v7, v9, v9, v8, v10}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object v7, v3, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->j:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v5, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1$emit$1;->b:Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    iput-object v2, v5, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1$emit$1;->c:Ljava/lang/Object;

    iput-object v3, v5, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1$emit$1;->d:Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;

    const/4 v10, 0x2

    iput v10, v5, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1$emit$1;->g:I

    invoke-interface {v7, v8, v5}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v6, :cond_7

    :goto_4
    return-object v6

    :cond_7
    move-object v5, v1

    move-object v6, v2

    move-object v1, v3

    :goto_5
    move-object v2, v6

    goto :goto_6

    :cond_8
    move-object v5, v1

    move-object v1, v3

    :goto_6
    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    const/4 v12, 0x0

    const/16 v13, 0x7f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v13}, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->a(Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;ZZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;I)Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    invoke-static {v14, v5}, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;->a(Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;Landroidx/compose/runtime/MutableState;)Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    move-result-object v5

    invoke-interface {v1, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_9
    invoke-static {v2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->v1()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Error patch consents: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vuitton/foundation/logger/LegacyLogger;->a:Lcom/vuitton/foundation/logger/LegacyLogger;

    const-string v5, "SettingsViewModelImpl"

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v1, v7}, Lcom/vuitton/foundation/logger/LegacyLogger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v3}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$showErrorNotification$1;

    invoke-direct {v2, v3, v7}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$showErrorNotification$1;-><init>(Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v11, 0x3

    invoke-static {v1, v7, v7, v2, v11}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_7

    :cond_a
    const/4 v7, 0x0

    :cond_b
    :goto_7
    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1;->d:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0, v7}, Lkotlinx/coroutines/CoroutineScopeKt;->c(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_c
    move v8, v11

    const/4 v9, 0x0

    const/4 v11, 0x3

    move v11, v8

    goto/16 :goto_1
.end method

.method public final bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1;->b(Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
