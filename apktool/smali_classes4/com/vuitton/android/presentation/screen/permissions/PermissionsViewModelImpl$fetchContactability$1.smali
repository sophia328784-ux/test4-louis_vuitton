.class final Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$fetchContactability$1;
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
    c = "com.vuitton.android.presentation.screen.permissions.PermissionsViewModelImpl$fetchContactability$1"
    f = "PermissionsViewModelImpl.kt"
    l = {
        0x11e
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$fetchContactability$1;->d:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$fetchContactability$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$fetchContactability$1;->d:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$fetchContactability$1;-><init>(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$fetchContactability$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$fetchContactability$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$fetchContactability$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$fetchContactability$1;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$fetchContactability$1;->b:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$fetchContactability$1;->d:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->p:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/account/notifications/GetContactabilityUseCase;

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$fetchContactability$1;->b:Ljava/lang/Object;

    iput v3, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$fetchContactability$1;->c:I

    iget-object p0, p1, Lcom/vuitton/android/domain/usecase/account/notifications/GetContactabilityUseCase;->a:Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;

    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;->b()Lcom/vuitton/foundation/model/domain/model/account/notifications/Contactability;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object p0, v1

    :goto_0
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/account/notifications/Contactability;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/feed/models/mappers/ContactabilityMapperKt$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v1, v4

    const/4 v5, 0x2

    packed-switch v4, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    return-object v2

    :pswitch_0
    new-instance v4, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v6, 0x7f14065e

    invoke-direct {v4, v6, v2, v5, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :pswitch_1
    new-instance v4, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v6, 0x7f14065b

    invoke-direct {v4, v6, v2, v5, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :pswitch_2
    new-instance v4, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v6, 0x7f140093

    invoke-direct {v4, v6, v2, v5, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v1, v6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-eq v6, v3, :cond_6

    if-eq v6, v5, :cond_5

    if-eq v6, v9, :cond_5

    if-eq v6, v8, :cond_4

    if-ne v6, v7, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lv40;->g()V

    return-object v2

    :cond_4
    :goto_2
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v10, 0x7f14065d

    invoke-direct {v6, v10, v2, v5, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    :cond_5
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v10, 0x7f14065a

    invoke-direct {v6, v10, v2, v5, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    :cond_6
    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v10, 0x7f140658

    invoke-direct {v6, v10, v2, v5, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v10, v1, v10

    if-eq v10, v3, :cond_a

    if-eq v10, v5, :cond_9

    if-eq v10, v9, :cond_9

    if-eq v10, v8, :cond_8

    if-ne v10, v7, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {}, Lv40;->g()V

    return-object v2

    :cond_8
    :goto_4
    new-instance v3, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v7, 0x7f14065c

    invoke-direct {v3, v7, v2, v5, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_5

    :cond_9
    new-instance v3, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v7, 0x7f140659

    invoke-direct {v3, v7, v2, v5, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_5

    :cond_a
    new-instance v3, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v7, 0x7f140657

    invoke-direct {v3, v7, v2, v5, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_1

    invoke-static {}, Lv40;->g()V

    return-object v2

    :pswitch_3
    sget-object p1, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityActionUIModel;->EVERYTHING:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityActionUIModel;

    goto :goto_6

    :pswitch_4
    sget-object p1, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityActionUIModel;->EVERYTHING:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityActionUIModel;

    goto :goto_6

    :pswitch_5
    sget-object p1, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityActionUIModel;->PERSONALIZATION:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityActionUIModel;

    goto :goto_6

    :pswitch_6
    sget-object p1, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityActionUIModel;->SYSTEM_NOTIFICATION:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityActionUIModel;

    goto :goto_6

    :pswitch_7
    sget-object p1, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityActionUIModel;->PREFERENCE_CENTER_WITH_NOTIFICATION:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityActionUIModel;

    goto :goto_6

    :pswitch_8
    sget-object p1, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityActionUIModel;->PREFERENCE_CENTER:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityActionUIModel;

    :goto_6
    invoke-direct {v0, v4, v6, v3, p1}, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityUiModel;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityActionUIModel;)V

    move-object v2, v0

    :pswitch_9
    invoke-interface {p0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
