.class final Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/foundation/model/domain/model/profile/Profile;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "profile",
        "Lcom/vuitton/foundation/model/domain/model/profile/Profile;"
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
    c = "com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$listenToProfile$1$1"
    f = "MyLvViewModelImpl.kt"
    l = {
        0xf8,
        0xf8,
        0xfa
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public c:I

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

.field public final synthetic f:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1$1;->e:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1$1;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1$1;->e:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1$1;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0, v1, p0, p2}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1$1;-><init>(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1$1;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 66

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1$1;->e:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->L:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1$1;->d:Ljava/lang/Object;

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1$1;->c:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_3

    if-eq v5, v8, :cond_2

    if-eq v5, v7, :cond_1

    if-ne v5, v6, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v9

    :cond_1
    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v7, p1

    check-cast v7, Lkotlin/Result;

    iget-object v7, v7, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v8, p1

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-nez v3, :cond_4

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->U:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz v4, :cond_9

    new-instance v5, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$LoadUsernameError;

    new-instance v6, Lcom/vuitton/android/presentation/screen/mylv/models/NoProfileFoundException;

    invoke-direct {v6}, Lcom/vuitton/android/presentation/screen/mylv/models/NoProfileFoundException;-><init>()V

    invoke-direct {v5, v6}, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$LoadUsernameError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v4, v5}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    goto :goto_4

    :cond_4
    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->N:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v10, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1$1;->d:Ljava/lang/Object;

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput v8, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1$1;->c:I

    invoke-virtual {v10, v0}, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v4, :cond_5

    goto :goto_3

    :cond_5
    :goto_0
    check-cast v8, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1$1;->d:Ljava/lang/Object;

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput v7, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1$1;->c:I

    invoke-interface {v8, v0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_6

    goto :goto_3

    :cond_6
    :goto_1
    sget-object v8, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v8, v7, Lkotlin/Result$Failure;

    if-eqz v8, :cond_7

    move-object v7, v9

    :cond_7
    check-cast v7, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    if-eqz v7, :cond_8

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->r:Ljava/lang/String;

    goto :goto_2

    :cond_8
    move-object v7, v9

    :goto_2
    invoke-interface {v5, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->c:Lcom/vuitton/android/core/events/LVEventSender;

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1$1;->d:Ljava/lang/Object;

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput v6, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1$1;->c:I

    sget-object v6, Lcom/vuitton/android/core/events/AppEvent$RefreshUserAvatar;->a:Lcom/vuitton/android/core/events/AppEvent$RefreshUserAvatar;

    invoke-virtual {v5, v6, v0}, Lcom/vuitton/android/core/events/LVEventSender;->a(Lcom/vuitton/android/core/events/AppEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_9

    :goto_3
    return-object v4

    :cond_9
    :goto_4
    if-eqz v3, :cond_c

    new-instance v10, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;

    iget-object v11, v3, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->a:Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;

    iget-object v12, v3, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->b:Ljava/lang/String;

    iget-object v13, v3, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->c:Ljava/lang/String;

    iget-object v14, v3, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->d:Ljava/lang/String;

    iget-object v15, v3, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->e:Ljava/lang/String;

    iget-object v4, v3, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->f:Ljava/lang/String;

    iget-object v5, v3, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->g:Ljava/lang/String;

    iget-object v6, v3, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->h:Ljava/lang/String;

    iget-object v7, v3, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->i:Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v7, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v7, v9}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v29, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    move-object/from16 v16, v4

    iget-object v4, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->a:Ljava/lang/String;

    move-object/from16 v30, v4

    iget-boolean v4, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->b:Z

    move/from16 v31, v4

    iget-object v4, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->c:Ljava/lang/String;

    move-object/from16 v32, v4

    iget-object v4, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->d:Ljava/lang/String;

    move-object/from16 v33, v4

    iget-object v4, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->e:Ljava/lang/String;

    move-object/from16 v34, v4

    iget-object v4, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->f:Ljava/lang/String;

    move-object/from16 v35, v4

    iget-object v4, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->g:Ljava/lang/String;

    move-object/from16 v36, v4

    iget-object v4, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->h:Ljava/lang/String;

    move-object/from16 v37, v4

    iget-object v4, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->i:Ljava/lang/String;

    move-object/from16 v38, v4

    iget-object v4, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->j:Ljava/lang/String;

    move-object/from16 v39, v4

    iget-object v4, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->k:Ljava/lang/String;

    move-object/from16 v40, v4

    iget-object v4, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->l:Ljava/lang/String;

    move-object/from16 v41, v4

    iget-object v4, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->m:Ljava/lang/String;

    move-object/from16 v42, v4

    iget-object v4, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->n:Ljava/lang/String;

    move-object/from16 v43, v4

    iget-object v4, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->o:Ljava/lang/String;

    move-object/from16 v44, v4

    iget-object v4, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->p:Ljava/lang/String;

    move-object/from16 v45, v4

    iget-object v4, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->q:Ljava/lang/String;

    move-object/from16 v46, v4

    iget-object v4, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->r:Ljava/lang/String;

    move-object/from16 v47, v4

    iget-object v4, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->s:Ljava/lang/String;

    move-object/from16 v48, v4

    iget-object v4, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->t:Ljava/lang/String;

    move-object/from16 v49, v4

    iget-object v4, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->v:Ljava/lang/String;

    move-object/from16 v50, v4

    iget-object v4, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->w:Ljava/lang/String;

    move-object/from16 v51, v4

    iget-object v4, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->x:Ljava/lang/String;

    move-object/from16 v52, v4

    iget-object v4, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->y:Ljava/lang/String;

    move-object/from16 v53, v4

    iget-object v4, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->z:Ljava/lang/String;

    move-object/from16 v54, v4

    iget-object v4, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->A:Ljava/lang/String;

    move-object/from16 v55, v4

    iget-object v4, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->B:Ljava/lang/String;

    move-object/from16 v56, v4

    iget-object v4, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->C:Ljava/lang/String;

    move-object/from16 v57, v4

    iget-object v4, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->D:Ljava/lang/String;

    move-object/from16 v58, v4

    iget-object v4, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->E:Ljava/lang/String;

    move-object/from16 v59, v4

    iget-object v4, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->F:Ljava/lang/String;

    move-object/from16 v60, v4

    iget-object v4, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->G:Ljava/lang/String;

    move-object/from16 v61, v4

    iget-object v4, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->H:Ljava/lang/String;

    move-object/from16 v62, v4

    iget-object v4, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->I:Ljava/lang/String;

    move-object/from16 v63, v4

    iget-object v4, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->J:Ljava/lang/String;

    iget-object v9, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->K:Ljava/lang/String;

    move-object/from16 v64, v4

    move-object/from16 v65, v9

    invoke-direct/range {v29 .. v65}, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v29

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v16

    goto/16 :goto_5

    :cond_a
    move-object/from16 v16, v4

    iget-object v4, v3, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->j:Ljava/lang/String;

    iget-object v7, v3, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->k:Ljava/lang/String;

    iget-object v9, v3, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->l:Ljava/lang/String;

    move-object/from16 v20, v4

    iget-object v4, v3, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->m:Ljava/lang/String;

    move-object/from16 v23, v4

    iget-object v4, v3, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->n:Ljava/lang/String;

    move-object/from16 v24, v4

    iget-object v4, v3, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->q:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;

    if-eqz v4, :cond_b

    invoke-static {v4}, Lcom/vuitton/android/presentation/profile/mappers/PhoneNumbersMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;)Lcom/vuitton/android/presentation/profile/models/PhoneNumberUiModel;

    move-result-object v4

    move-object/from16 v25, v4

    goto :goto_6

    :cond_b
    const/16 v25, 0x0

    :goto_6
    iget-object v4, v3, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->r:Ljava/lang/String;

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->s:Ljava/lang/String;

    const/16 v28, 0x0

    move-object/from16 v27, v3

    move-object/from16 v26, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v21, v7

    move-object/from16 v19, v8

    move-object/from16 v22, v9

    invoke-direct/range {v10 .. v28}, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;-><init>(Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/profile/models/PhoneNumberUiModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_7

    :cond_c
    const/4 v10, 0x0

    :goto_7
    invoke-interface {v2, v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->M:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;

    if-eqz v2, :cond_d

    iget-object v2, v2, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->q:Ljava/lang/String;

    goto :goto_8

    :cond_d
    const/4 v2, 0x0

    :goto_8
    if-nez v2, :cond_e

    const-string v2, ""

    :cond_e
    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$listenToProfile$1$1;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v1, Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    const/4 v1, 0x0

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    :cond_f
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
