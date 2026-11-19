.class public final Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B9\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModel;",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/domain/usecase/avatar/GetAllAvatarsUseCase;",
        "getAllAvatarsUseCase",
        "Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;",
        "getUserAvatarUseCase",
        "Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase;",
        "saveUserAvatarUseCase",
        "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;",
        "getProfileUseCase",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "analyticsTracker",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/avatar/GetAllAvatarsUseCase;Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V",
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


# instance fields
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/domain/usecase/avatar/GetAllAvatarsUseCase;

.field public final c:Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;

.field public final d:Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase;

.field public final e:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

.field public final f:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final g:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final h:Lkotlinx/coroutines/flow/StateFlow;

.field public final i:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final j:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/avatar/GetAllAvatarsUseCase;Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;->b:Lcom/vuitton/android/domain/usecase/avatar/GetAllAvatarsUseCase;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;->f:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object p1, Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState$Loading;->a:Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState$Loading;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;->h:Lkotlinx/coroutines/flow/StateFlow;

    const/4 p1, 0x0

    const/4 p2, 0x6

    const/4 p3, -0x2

    invoke-static {p3, p2, p1}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;->i:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;->j:Lkotlinx/coroutines/flow/Flow;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;->g5()V

    return-void
.end method


# virtual methods
.method public final Yb()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;->j:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;->h:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final d6(Lcom/vuitton/android/presentation/screen/account/editavatar/AvatarTrackingUiModel;)V
    .locals 11

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/account/editavatar/AvatarTrackingUiModel$EditAvatarScreen;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast p1, Lcom/vuitton/android/presentation/screen/account/editavatar/AvatarTrackingUiModel$EditAvatarScreen;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/account/editavatar/AvatarTrackingUiModel$EditAvatarScreen;->a:Ljava/lang/String;

    invoke-direct {v0, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "avatar_library"

    const/4 v4, 0x0

    const-string v5, "avatar"

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/account/editavatar/AvatarTrackingUiModel$SelectAvatar;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast p1, Lcom/vuitton/android/presentation/screen/account/editavatar/AvatarTrackingUiModel$SelectAvatar;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/account/editavatar/AvatarTrackingUiModel$SelectAvatar;->a:Ljava/lang/String;

    invoke-direct {v0, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/16 v9, 0x21

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "avatar_library"

    const-string v4, "select_avatar"

    const-string v5, "avatar"

    const-string v6, "click"

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/account/editavatar/AvatarTrackingUiModel$SaveEdit;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast p1, Lcom/vuitton/android/presentation/screen/account/editavatar/AvatarTrackingUiModel$SaveEdit;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/account/editavatar/AvatarTrackingUiModel$SaveEdit;->a:Ljava/lang/String;

    invoke-direct {v0, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/16 v9, 0x21

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "avatar_library"

    const-string v4, "save_avatar"

    const-string v5, "avatar"

    const-string v6, "click"

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/account/editavatar/AvatarTrackingUiModel$CloseEdit;->a:Lcom/vuitton/android/presentation/screen/account/editavatar/AvatarTrackingUiModel$CloseEdit;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v8, 0x61

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v2, "avatar_library"

    const-string v3, "close_library"

    const-string v4, "avatar"

    const-string v5, "click"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;->f:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_3
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final g5()V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState$Loading;->a:Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState$Loading;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;-><init>(Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final p4()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$onSaveAvatar$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$onSaveAvatar$1;-><init>(Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final p6(Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState;

    instance-of v4, v3, Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState$Success;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState$Success;

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState$Success;->a:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarSectionUiModel;

    iget-object v8, v7, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarSectionUiModel;->b:Ljava/util/List;

    check-cast v8, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v8, v6}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    iget-object v11, v10, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;->a:Ljava/lang/String;

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v17

    iget-object v13, v10, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;->a:Ljava/lang/String;

    iget-object v14, v10, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;->b:Ljava/lang/String;

    iget-object v15, v10, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;->c:Ljava/lang/String;

    iget-boolean v10, v10, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;->d:Z

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    move/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarSectionUiModel;->a:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarSectionUiModel;

    invoke-direct {v8, v7, v9}, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarSectionUiModel;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState$Success;->c:Ljava/lang/String;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState$Success;->b:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState$Success;

    const/4 v7, 0x1

    invoke-direct {v6, v5, v3, v4, v7}, Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState$Success;-><init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;Ljava/lang/String;Z)V

    invoke-interface {v2, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/account/editavatar/AvatarTrackingUiModel$SelectAvatar;

    invoke-direct {v2, v1}, Lcom/vuitton/android/presentation/screen/account/editavatar/AvatarTrackingUiModel$SelectAvatar;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;->d6(Lcom/vuitton/android/presentation/screen/account/editavatar/AvatarTrackingUiModel;)V

    :cond_2
    return-void
.end method
