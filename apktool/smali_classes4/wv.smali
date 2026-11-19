.class public final synthetic Lwv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;I)V
    .locals 0

    iput p2, p0, Lwv;->b:I

    iput-object p1, p0, Lwv;->c:Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lwv;->b:I

    iget-object p0, p0, Lwv;->c:Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$GoogleCustomerMatchBottomSheetScreen;->a:Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$GoogleCustomerMatchBottomSheetScreen;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;->cc(Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ViaPartnersClickEvent;->a:Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ViaPartnersClickEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;->cc(Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$CloseMissingPhoneNumberBottomSheetEvent;->a:Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$CloseMissingPhoneNumberBottomSheetEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;->cc(Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$MissingPhoneNumberBottomSheetScreen;->a:Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$MissingPhoneNumberBottomSheetScreen;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;->cc(Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
