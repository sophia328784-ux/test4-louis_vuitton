.class public final synthetic Law;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 11
    iput p3, p0, Law;->b:I

    iput-object p1, p0, Law;->d:Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;

    iput-object p2, p0, Law;->c:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Law;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Law;->c:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Law;->d:Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Law;->b:I

    iget-object v1, p0, Law;->c:Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Law;->d:Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$PrivacyPolicyClickEvent;->a:Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$PrivacyPolicyClickEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;->cc(Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel;)V

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$OpenProfileClickEvent;->a:Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$OpenProfileClickEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;->cc(Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;->v1()V

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
