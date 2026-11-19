.class public final synthetic Lqg0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    iput p3, p0, Lqg0;->b:I

    iput-object p1, p0, Lqg0;->c:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;

    iput-object p2, p0, Lqg0;->d:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lqg0;->b:I

    iget-object v1, p0, Lqg0;->d:Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Lqg0;->c:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;

    packed-switch v0, :pswitch_data_0

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet;

    sget-object v1, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$SystemNotificationDisabled;->e:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$SystemNotificationDisabled;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel$OnCloseNotificationsDisabledPopin;->a:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel$OnCloseNotificationsDisabledPopin;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;->K3(Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$NoOptInCustomization;->e:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$NoOptInCustomization;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel$OnClosePersonalizationPopin;->a:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel$OnClosePersonalizationPopin;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;->K3(Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesTrackingUiModel;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$None;->e:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$None;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;->h5()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;->c:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$NoOptInCustomization;->e:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$NoOptInCustomization;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;->m3(Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet;)V

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;->b:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$SystemNotificationDisabled;->e:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$SystemNotificationDisabled;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;->m3(Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet;)V

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;->z9()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
