.class public final synthetic Lcom/vuitton/android/presentation/screen/portal/components/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModel;

.field public final synthetic c:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic d:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Landroidx/compose/runtime/State;

.field public final synthetic h:Landroidx/compose/material3/SnackbarHostState;

.field public final synthetic i:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final synthetic j:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModel;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/portal/components/b;->b:Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/portal/components/b;->c:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/portal/components/b;->d:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/portal/components/b;->e:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/portal/components/b;->f:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/portal/components/b;->g:Landroidx/compose/runtime/State;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/portal/components/b;->h:Landroidx/compose/material3/SnackbarHostState;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/portal/components/b;->i:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/portal/components/b;->j:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel$OnHitCtaPortalEvent;->a:Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel$OnHitCtaPortalEvent;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/portal/components/b;->b:Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModel;

    invoke-interface {v1, v0}, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModel;->bc(Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel;)V

    instance-of v0, p1, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$PushNotification;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/portal/components/b;->g:Landroidx/compose/runtime/State;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->c:Z

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->d:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel$OnNotifyMeAlreadyNotifiedEvent;->a:Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel$OnNotifyMeAlreadyNotifiedEvent;

    invoke-interface {v1, p1}, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModel;->bc(Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel;)V

    new-instance p1, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComposableKt$PortalSliderComposable$6$1$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/portal/components/b;->h:Landroidx/compose/material3/SnackbarHostState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/portal/components/b;->i:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/portal/components/b;->j:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {p1, v0, v1, v3, v4}, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComposableKt$PortalSliderComposable$6$1$1;-><init>(Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/portal/components/b;->c:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0, v4, v4, p1, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p1, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->a:I

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/portal/components/b;->d:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->a(I)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel$OnNotifyMeClickEvent;->a:Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel$OnNotifyMeClickEvent;

    invoke-interface {v1, p1}, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModel;->bc(Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/portal/components/b;->e:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;

    invoke-static {p0, v2}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;->V6(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/portal/components/b;->f:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
