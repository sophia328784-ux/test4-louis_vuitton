.class final Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$onContinueWithLineClicked$1;
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
    c = "com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModelImpl$onContinueWithLineClicked$1"
    f = "SocialLoginViewModelImpl.kt"
    l = {
        0xd1,
        0xdd,
        0xe5,
        0xf8
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;

.field public final synthetic d:Landroidx/activity/ComponentActivity;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

.field public final synthetic f:Z

.field public final synthetic g:Lcom/vuitton/android/domain/monitoring/MonitorAction;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;Landroidx/activity/ComponentActivity;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;ZLcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$onContinueWithLineClicked$1;->c:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$onContinueWithLineClicked$1;->d:Landroidx/activity/ComponentActivity;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$onContinueWithLineClicked$1;->e:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$onContinueWithLineClicked$1;->f:Z

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$onContinueWithLineClicked$1;->g:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$onContinueWithLineClicked$1;

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$onContinueWithLineClicked$1;->f:Z

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$onContinueWithLineClicked$1;->g:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$onContinueWithLineClicked$1;->c:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$onContinueWithLineClicked$1;->d:Landroidx/activity/ComponentActivity;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$onContinueWithLineClicked$1;->e:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$onContinueWithLineClicked$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;Landroidx/activity/ComponentActivity;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;ZLcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$onContinueWithLineClicked$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$onContinueWithLineClicked$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$onContinueWithLineClicked$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$onContinueWithLineClicked$1;->c:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->B:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$onContinueWithLineClicked$1;->b:I

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$onContinueWithLineClicked$1;->e:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x1

    iget-boolean v9, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$onContinueWithLineClicked$1;->f:Z

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v8, :cond_2

    if-eq v4, v10, :cond_1

    if-eq v4, v7, :cond_1

    if-ne v4, v6, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v11

    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    goto :goto_2

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->d:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManager;

    sget-object v12, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->Companion:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v9, :cond_4

    sget-object v12, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->SIGN_UP:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    goto :goto_1

    :cond_4
    sget-object v12, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->LOG_IN:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    :goto_1
    iput v8, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$onContinueWithLineClicked$1;->b:I

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$onContinueWithLineClicked$1;->d:Landroidx/activity/ComponentActivity;

    invoke-interface {v4, v8, v5, v12, v0}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManager;->a(Landroidx/activity/ComponentActivity;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_5

    goto/16 :goto_3

    :cond_5
    :goto_2
    check-cast v4, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineCredentialResult;

    instance-of v8, v4, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineCredentialResult$Success;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$onContinueWithLineClicked$1;->g:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz v8, :cond_9

    check-cast v4, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineCredentialResult$Success;

    iget-object v8, v4, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineCredentialResult$Success;->a:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;

    iget-object v13, v1, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_6
    invoke-interface {v13}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;

    invoke-interface {v13, v4, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v8, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_7

    invoke-interface {v12}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    iget-object v13, v1, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->g:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v14, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v1, 0x7f140d75

    invoke-direct {v14, v1, v11, v10, v11}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v17, 0x0

    const/16 v18, 0x3c

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v1

    iput v10, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$onContinueWithLineClicked$1;->b:I

    invoke-interface {v2, v1, v0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_b

    goto :goto_3

    :cond_7
    iget-boolean v2, v1, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->o:Z

    if-eqz v2, :cond_8

    invoke-interface {v12}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->t:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;->LINE:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    new-instance v4, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetType$SocialSignInDebug;

    invoke-direct {v4, v9, v2}, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetType$SocialSignInDebug;-><init>(ZLcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)V

    iput v7, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$onContinueWithLineClicked$1;->b:I

    invoke-interface {v1, v4, v0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_b

    goto :goto_3

    :cond_8
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;->LINE:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    invoke-virtual {v1, v0, v9, v5, v12}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->yc(Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;ZLcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/domain/monitoring/MonitorAction;)V

    goto :goto_4

    :cond_9
    instance-of v5, v4, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineCredentialResult$Cancelled;

    if-eqz v5, :cond_a

    invoke-interface {v12}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    goto :goto_4

    :cond_a
    instance-of v4, v4, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineCredentialResult$Failure;

    if-eqz v4, :cond_c

    invoke-interface {v12}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    iget-object v13, v1, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->g:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v14, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v1, 0x7f140d4c

    invoke-direct {v14, v1, v11, v10, v11}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v17, 0x0

    const/16 v18, 0x3c

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v1

    iput v6, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$onContinueWithLineClicked$1;->b:I

    invoke-interface {v2, v1, v0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_b

    :goto_3
    return-object v3

    :cond_b
    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_c
    invoke-static {}, Lv40;->g()V

    return-object v11
.end method
