.class public final Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001Bi\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;",
        "",
        "Lcom/vuitton/android/domain/usecase/app/ResetAppDataUseCase;",
        "resetAppDataUseCase",
        "Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;",
        "disableStoreModeUseCase",
        "Lcom/vuitton/android/domain/usecase/locale/ShouldResetGdprPreferencesUseCase;",
        "shouldResetGdprPreferencesUseCase",
        "Lcom/vuitton/android/domain/usecase/privacy/consent/ResetConsentsUseCase;",
        "resetConsentsUseCase",
        "Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;",
        "getUserInAppDispatchOrNullUseCase",
        "Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase;",
        "saveUserInAppDispatchUseCase",
        "Lcom/vuitton/android/domain/usecase/privacy/consent/SetPiplCbdtAgreementUseCase;",
        "setPiplCbdtAgreementUseCase",
        "Lcom/vuitton/android/domain/usecase/analytics/AreAnalyticsInitializedUseCase;",
        "areAnalyticsInitializedUseCase",
        "Lcom/vuitton/android/domain/usecase/analytics/DisableAnalyticsUseCase;",
        "disableAnalyticsUseCase",
        "Lcom/vuitton/android/domain/repository/CatalogRepository;",
        "catalogRepository",
        "Lcom/vuitton/android/domain/usecase/avatar/PreloadAvatarsCacheUseCase;",
        "preloadAvatarsCacheUseCase",
        "Lcom/vuitton/android/domain/usecase/dynamicyield/SetDynamicYieldLocaleUseCase;",
        "setDynamicYieldLocaleUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/app/ResetAppDataUseCase;Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;Lcom/vuitton/android/domain/usecase/locale/ShouldResetGdprPreferencesUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/ResetConsentsUseCase;Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/SetPiplCbdtAgreementUseCase;Lcom/vuitton/android/domain/usecase/analytics/AreAnalyticsInitializedUseCase;Lcom/vuitton/android/domain/usecase/analytics/DisableAnalyticsUseCase;Lcom/vuitton/android/domain/repository/CatalogRepository;Lcom/vuitton/android/domain/usecase/avatar/PreloadAvatarsCacheUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/SetDynamicYieldLocaleUseCase;)V",
        "domain"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/vuitton/android/domain/usecase/app/ResetAppDataUseCase;

.field public final b:Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;

.field public final c:Lcom/vuitton/android/domain/usecase/locale/ShouldResetGdprPreferencesUseCase;

.field public final d:Lcom/vuitton/android/domain/usecase/privacy/consent/ResetConsentsUseCase;

.field public final e:Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;

.field public final f:Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase;

.field public final g:Lcom/vuitton/android/domain/usecase/privacy/consent/SetPiplCbdtAgreementUseCase;

.field public final h:Lcom/vuitton/android/domain/usecase/analytics/AreAnalyticsInitializedUseCase;

.field public final i:Lcom/vuitton/android/domain/usecase/analytics/DisableAnalyticsUseCase;

.field public final j:Lcom/vuitton/android/domain/repository/CatalogRepository;

.field public final k:Lcom/vuitton/android/domain/usecase/avatar/PreloadAvatarsCacheUseCase;

.field public final l:Lcom/vuitton/android/domain/usecase/dynamicyield/SetDynamicYieldLocaleUseCase;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/app/ResetAppDataUseCase;Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;Lcom/vuitton/android/domain/usecase/locale/ShouldResetGdprPreferencesUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/ResetConsentsUseCase;Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/SetPiplCbdtAgreementUseCase;Lcom/vuitton/android/domain/usecase/analytics/AreAnalyticsInitializedUseCase;Lcom/vuitton/android/domain/usecase/analytics/DisableAnalyticsUseCase;Lcom/vuitton/android/domain/repository/CatalogRepository;Lcom/vuitton/android/domain/usecase/avatar/PreloadAvatarsCacheUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/SetDynamicYieldLocaleUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;->a:Lcom/vuitton/android/domain/usecase/app/ResetAppDataUseCase;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;->b:Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;

    iput-object p3, p0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;->c:Lcom/vuitton/android/domain/usecase/locale/ShouldResetGdprPreferencesUseCase;

    iput-object p4, p0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;->d:Lcom/vuitton/android/domain/usecase/privacy/consent/ResetConsentsUseCase;

    iput-object p5, p0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;->e:Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;

    iput-object p6, p0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;->f:Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase;

    iput-object p7, p0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;->g:Lcom/vuitton/android/domain/usecase/privacy/consent/SetPiplCbdtAgreementUseCase;

    iput-object p8, p0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;->h:Lcom/vuitton/android/domain/usecase/analytics/AreAnalyticsInitializedUseCase;

    iput-object p9, p0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;->i:Lcom/vuitton/android/domain/usecase/analytics/DisableAnalyticsUseCase;

    iput-object p10, p0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;->j:Lcom/vuitton/android/domain/repository/CatalogRepository;

    iput-object p11, p0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;->k:Lcom/vuitton/android/domain/usecase/avatar/PreloadAvatarsCacheUseCase;

    iput-object p12, p0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;->l:Lcom/vuitton/android/domain/usecase/dynamicyield/SetDynamicYieldLocaleUseCase;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->e:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->g:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :pswitch_0
    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    iget-object p0, p3, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_b

    :pswitch_1
    iget-boolean p1, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->d:Z

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_2
    iget-boolean p1, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->d:Z

    iget-object p2, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_3
    iget-boolean p1, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->d:Z

    iget-object p2, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_4
    iget-boolean p1, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->d:Z

    iget-object p2, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_6

    :pswitch_5
    iget-boolean p1, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->d:Z

    iget-object p2, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v4, p2

    move p2, p1

    move-object p1, v4

    goto/16 :goto_5

    :pswitch_6
    iget-boolean p2, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->d:Z

    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v2, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_7
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;->e:Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;

    invoke-virtual {p3}, Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;->a()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object p3

    if-eqz p3, :cond_7

    iget-object v2, p0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;->c:Lcom/vuitton/android/domain/usecase/locale/ShouldResetGdprPreferencesUseCase;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lcom/vuitton/android/domain/usecase/locale/ShouldResetGdprPreferencesUseCase;->a:Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;

    invoke-virtual {v2}, Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;->a()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    invoke-static {v2}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->f(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->f(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_2
    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-object p3, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-boolean p2, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->d:Z

    const/4 v2, 0x1

    iput v2, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->g:I

    iget-object v2, p0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;->d:Lcom/vuitton/android/domain/usecase/privacy/consent/ResetConsentsUseCase;

    iget-object v2, v2, Lcom/vuitton/android/domain/usecase/privacy/consent/ResetConsentsUseCase;->a:Lcom/vuitton/android/domain/repository/ConsentRepository;

    invoke-interface {v2, v0}, Lcom/vuitton/android/domain/repository/ConsentRepository;->e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    goto :goto_1

    :cond_3
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_1
    if-ne v2, v1, :cond_4

    goto/16 :goto_a

    :cond_4
    move-object v2, p1

    move-object p1, p3

    :goto_2
    move-object p3, p1

    move-object p1, v2

    :cond_5
    :goto_3
    invoke-static {p3}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->c(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result p3

    if-nez p3, :cond_7

    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-object v3, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-boolean p2, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->d:Z

    const/4 p3, 0x2

    iput p3, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->g:I

    iget-object p3, p0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;->g:Lcom/vuitton/android/domain/usecase/privacy/consent/SetPiplCbdtAgreementUseCase;

    iget-object p3, p3, Lcom/vuitton/android/domain/usecase/privacy/consent/SetPiplCbdtAgreementUseCase;->a:Lcom/vuitton/android/domain/repository/ConsentRepository;

    const/4 v2, 0x0

    invoke-interface {p3, v2, v0}, Lcom/vuitton/android/domain/repository/ConsentRepository;->b(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    goto :goto_4

    :cond_6
    sget-object p3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_4
    if-ne p3, v1, :cond_7

    goto/16 :goto_a

    :cond_7
    :goto_5
    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-object v3, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-boolean p2, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->d:Z

    const/4 p3, 0x3

    iput p3, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->g:I

    iget-object p3, p0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;->f:Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase;

    invoke-virtual {p3, p1, v0}, Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_8

    goto :goto_a

    :cond_8
    move v4, p2

    move-object p2, p1

    move p1, v4

    :goto_6
    iput-object p2, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-object v3, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-boolean p1, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->d:Z

    const/4 p3, 0x4

    iput p3, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->g:I

    iget-object p3, p0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;->a:Lcom/vuitton/android/domain/usecase/app/ResetAppDataUseCase;

    invoke-virtual {p3, p1, v0}, Lcom/vuitton/android/domain/usecase/app/ResetAppDataUseCase;->a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_9

    goto :goto_a

    :cond_9
    :goto_7
    iput-object p2, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-object v3, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-boolean p1, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->d:Z

    const/4 p3, 0x5

    iput p3, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->g:I

    iget-object p3, p0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;->j:Lcom/vuitton/android/domain/repository/CatalogRepository;

    invoke-interface {p3}, Lcom/vuitton/android/domain/repository/CatalogRepository;->d()Lkotlin/Unit;

    move-result-object p3

    if-ne p3, v1, :cond_a

    goto :goto_a

    :cond_a
    :goto_8
    iget-object p3, p0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;->h:Lcom/vuitton/android/domain/usecase/analytics/AreAnalyticsInitializedUseCase;

    iget-object p3, p3, Lcom/vuitton/android/domain/usecase/analytics/AreAnalyticsInitializedUseCase;->a:Ldagger/Lazy;

    invoke-interface {p3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;

    invoke-interface {p3}, Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;->a()Z

    move-result p3

    if-eqz p3, :cond_b

    iget-object p3, p0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;->i:Lcom/vuitton/android/domain/usecase/analytics/DisableAnalyticsUseCase;

    iget-object p3, p3, Lcom/vuitton/android/domain/usecase/analytics/DisableAnalyticsUseCase;->a:Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;

    invoke-interface {p3}, Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;->c()V

    :cond_b
    iget-object p3, p0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;->b:Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;

    invoke-virtual {p3}, Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;->a()V

    iput-object v3, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-object v3, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-boolean p1, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->d:Z

    const/4 p3, 0x6

    iput p3, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->g:I

    iget-object p3, p0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;->l:Lcom/vuitton/android/domain/usecase/dynamicyield/SetDynamicYieldLocaleUseCase;

    invoke-virtual {p3, p2, v0}, Lcom/vuitton/android/domain/usecase/dynamicyield/SetDynamicYieldLocaleUseCase;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_c

    goto :goto_a

    :cond_c
    :goto_9
    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;->k:Lcom/vuitton/android/domain/usecase/avatar/PreloadAvatarsCacheUseCase;

    iput-object v3, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-object v3, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-boolean p1, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->d:Z

    const/4 p1, 0x7

    iput p1, v0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->g:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/domain/usecase/avatar/PreloadAvatarsCacheUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_d

    :goto_a
    return-object v1

    :cond_d
    :goto_b
    new-instance p0, Lkotlin/Result;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_c

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_c
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
