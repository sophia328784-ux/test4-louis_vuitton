.class final Lcom/sightcall/universal/internal/ui/CallViewModel$onRoleSwitch$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/ui/CallViewModel$onRoleSwitch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
    c = "com.sightcall.universal.internal.ui.CallViewModel$onRoleSwitch$1$1"
    f = "CallViewModel.kt"
    l = {
        0x5f,
        0x62,
        0x6a
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field final synthetic $extra:Ljava/lang/String;

.field final synthetic $onRoleSwitchCompleted:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/sightcall/universal/internal/ui/CallViewModel;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/ui/CallViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/internal/ui/CallViewModel;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/universal/internal/ui/CallViewModel$onRoleSwitch$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/CallViewModel$onRoleSwitch$1$1;->this$0:Lcom/sightcall/universal/internal/ui/CallViewModel;

    iput-object p2, p0, Lcom/sightcall/universal/internal/ui/CallViewModel$onRoleSwitch$1$1;->$extra:Ljava/lang/String;

    iput-object p3, p0, Lcom/sightcall/universal/internal/ui/CallViewModel$onRoleSwitch$1$1;->$onRoleSwitchCompleted:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/sightcall/universal/internal/ui/CallViewModel$onRoleSwitch$1$1;

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel$onRoleSwitch$1$1;->this$0:Lcom/sightcall/universal/internal/ui/CallViewModel;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallViewModel$onRoleSwitch$1$1;->$extra:Ljava/lang/String;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel$onRoleSwitch$1$1;->$onRoleSwitchCompleted:Lkotlin/jvm/functions/Function0;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/sightcall/universal/internal/ui/CallViewModel$onRoleSwitch$1$1;-><init>(Lcom/sightcall/universal/internal/ui/CallViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/universal/internal/ui/CallViewModel$onRoleSwitch$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/universal/internal/ui/CallViewModel$onRoleSwitch$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/internal/ui/CallViewModel$onRoleSwitch$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/ui/CallViewModel$onRoleSwitch$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/sightcall/universal/internal/ui/CallViewModel$onRoleSwitch$1$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel$onRoleSwitch$1$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/sightcall/pratik/Result;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallViewModel$onRoleSwitch$1$1;->this$0:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getSession()Lcom/sightcall/universal/model/Session;

    move-result-object p1

    iget-object p1, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p1

    sget-object v1, Lcom/sightcall/universal/model/Session$Role;->GUEST:Lcom/sightcall/universal/model/Session$Role;

    iget-object v6, p0, Lcom/sightcall/universal/internal/ui/CallViewModel$onRoleSwitch$1$1;->this$0:Lcom/sightcall/universal/internal/ui/CallViewModel;

    if-ne p1, v1, :cond_5

    invoke-virtual {v6}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getSession()Lcom/sightcall/universal/model/Session;

    move-result-object p1

    iget-object p1, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    iget-object p1, p1, Lcom/sightcall/universal/model/Config;->authorizationToken:Lcom/sightcall/httpclient/AuthorizationToken;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v4, p0, Lcom/sightcall/universal/internal/ui/CallViewModel$onRoleSwitch$1$1;->label:I

    invoke-static {v6, p1, p0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->access$switchToAttendee(Lcom/sightcall/universal/internal/ui/CallViewModel;Lcom/sightcall/httpclient/AuthorizationToken;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_3

    :cond_4
    :goto_0
    check-cast p1, Lcom/sightcall/pratik/Result;

    goto :goto_2

    :cond_5
    invoke-virtual {v6}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getSession()Lcom/sightcall/universal/model/Session;

    move-result-object p1

    iget-object p1, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p1

    sget-object v1, Lcom/sightcall/universal/model/Session$Role;->ATTENDEE:Lcom/sightcall/universal/model/Session$Role;

    if-ne p1, v1, :cond_7

    invoke-static {}, Lcom/sightcall/capabilities/SwitchRequest;->getInstance()Lcom/sightcall/capabilities/SwitchRequest;

    move-result-object p1

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallViewModel$onRoleSwitch$1$1;->$extra:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/sightcall/capabilities/SwitchRequest;->isSameId(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallViewModel$onRoleSwitch$1$1;->this$0:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getSession()Lcom/sightcall/universal/model/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    iget-object v1, v1, Lcom/sightcall/universal/model/Config;->authorizationToken:Lcom/sightcall/httpclient/AuthorizationToken;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v3, p0, Lcom/sightcall/universal/internal/ui/CallViewModel$onRoleSwitch$1$1;->label:I

    invoke-static {p1, v1, p0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->access$switchToGuest(Lcom/sightcall/universal/internal/ui/CallViewModel;Lcom/sightcall/httpclient/AuthorizationToken;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    goto :goto_3

    :cond_6
    :goto_1
    check-cast p1, Lcom/sightcall/pratik/Result;

    goto :goto_2

    :cond_7
    move-object p1, v5

    :goto_2
    instance-of v1, p1, Lcom/sightcall/pratik/Result$Error;

    if-nez v1, :cond_a

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    instance-of v1, p1, Lcom/sightcall/pratik/Result$Success;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallViewModel$onRoleSwitch$1$1;->this$0:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getSession()Lcom/sightcall/universal/model/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    check-cast p1, Lcom/sightcall/pratik/Result$Success;

    invoke-virtual {p1}, Lcom/sightcall/pratik/Result$Success;->getSuccess()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sightcall/session/ReferenceUpdate;

    invoke-virtual {v1, p1}, Lcom/sightcall/universal/agent/Usecase;->updateRole(Lcom/sightcall/session/ReferenceUpdate;)V

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->a:Lkotlinx/coroutines/MainCoroutineDispatcher;

    new-instance v1, Lcom/sightcall/universal/internal/ui/CallViewModel$onRoleSwitch$1$1$1;

    iget-object v3, p0, Lcom/sightcall/universal/internal/ui/CallViewModel$onRoleSwitch$1$1;->$onRoleSwitchCompleted:Lkotlin/jvm/functions/Function0;

    invoke-direct {v1, v3, v5}, Lcom/sightcall/universal/internal/ui/CallViewModel$onRoleSwitch$1$1$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    iput-object v5, p0, Lcom/sightcall/universal/internal/ui/CallViewModel$onRoleSwitch$1$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/sightcall/universal/internal/ui/CallViewModel$onRoleSwitch$1$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_b

    :goto_3
    return-object v0

    :cond_9
    invoke-static {}, Lv40;->g()V

    return-object v5

    :cond_a
    :goto_4
    invoke-static {}, Lcom/sightcall/pratik/misc/DoNothingKt;->doNothing()V

    :cond_b
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
