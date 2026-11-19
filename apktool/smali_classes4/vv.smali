.class public final synthetic Lvv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;I)V
    .locals 0

    iput p2, p0, Lvv;->b:I

    iput-object p1, p0, Lvv;->c:Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lvv;->b:I

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$NewsletterToggleEvent;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$NewsletterToggleEvent;-><init>(Z)V

    iget-object p0, p0, Lvv;->c:Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;->cc(Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ContactByMailToggleEvent;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ContactByMailToggleEvent;-><init>(Z)V

    iget-object p0, p0, Lvv;->c:Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;->cc(Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    new-instance v0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ContactBySmsToggleEvent;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ContactBySmsToggleEvent;-><init>(Z)V

    iget-object p0, p0, Lvv;->c:Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;->cc(Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    new-instance v0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ContactByPhoneToggleEvent;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ContactByPhoneToggleEvent;-><init>(Z)V

    iget-object p0, p0, Lvv;->c:Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;->cc(Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    new-instance v0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$EmailTrackingToggleEvent;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$EmailTrackingToggleEvent;-><init>(Z)V

    iget-object p0, p0, Lvv;->c:Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;->cc(Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    new-instance v0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$SmsConsentToggleEvent;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$SmsConsentToggleEvent;-><init>(Z)V

    iget-object p0, p0, Lvv;->c:Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;->cc(Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
