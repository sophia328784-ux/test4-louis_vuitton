.class public final synthetic Liv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

.field public final synthetic d:Z

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;ZZ)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Liv0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liv0;->c:Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    iput-boolean p2, p0, Liv0;->d:Z

    iput-boolean p3, p0, Liv0;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;ZZI)V
    .locals 0

    .line 13
    const/4 p4, 0x1

    iput p4, p0, Liv0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liv0;->c:Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    iput-boolean p2, p0, Liv0;->d:Z

    iput-boolean p3, p0, Liv0;->e:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Liv0;->b:I

    const/4 v1, 0x1

    iget-boolean v2, p0, Liv0;->e:Z

    iget-boolean v3, p0, Liv0;->d:Z

    iget-object p0, p0, Liv0;->c:Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    invoke-static {p0, v3, v2, p1, p2}, Lcom/vuitton/android/presentation/screen/options/settings/components/SettingsComposableKt;->c(Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;ZZLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0x3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    and-int/2addr p1, v1

    invoke-interface {v7, p1, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string p1, "contactPrivacySettings_contactPhone_text"

    const-string p2, "ProfileCard$lambda$0"

    invoke-static {p2, p1}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const p1, 0x7f140dd1

    invoke-static {v7, p1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;->b:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->a:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/vuitton/android/presentation/screen/options/settings/components/ProfileSettingRowKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/Boolean;Landroidx/compose/runtime/Composer;II)V

    const-string p1, "contactPrivacySettings_contactSMS_text"

    invoke-static {p2, p1}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const p1, 0x7f140dd2

    invoke-static {v7, p1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->d:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static/range {v4 .. v9}, Lcom/vuitton/android/presentation/screen/options/settings/components/ProfileSettingRowKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/Boolean;Landroidx/compose/runtime/Composer;II)V

    const-string p1, "contactPrivacySettings_contactMail_text"

    invoke-static {p2, p1}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const p1, 0x7f140dd0

    invoke-static {v7, p1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->b:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static/range {v4 .. v9}, Lcom/vuitton/android/presentation/screen/options/settings/components/ProfileSettingRowKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/Boolean;Landroidx/compose/runtime/Composer;II)V

    const-string p1, "contactPrivacySettings_newsletter_text"

    invoke-static {p2, p1}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const p1, 0x7f140de4

    invoke-static {v7, p1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->c:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static/range {v4 .. v9}, Lcom/vuitton/android/presentation/screen/options/settings/components/ProfileSettingRowKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/Boolean;Landroidx/compose/runtime/Composer;II)V

    if-eqz v3, :cond_1

    const p1, -0x6bd9c4b3

    invoke-interface {v7, p1}, Landroidx/compose/runtime/Composer;->L(I)V

    new-instance p1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {p1, p2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v0, "editContactPrivacySettings_contactByMarketingSms_text"

    invoke-static {p1, v0}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const p1, 0x7f140e69

    invoke-static {v7, p1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    iget-object v5, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->e:Ljava/lang/Boolean;

    move-object v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/vuitton/android/presentation/screen/options/settings/components/ProfileSettingRowKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/Boolean;Landroidx/compose/runtime/Composer;II)V

    move-object v7, v6

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_1

    :cond_1
    const p1, -0x6bd51af5

    invoke-interface {v7, p1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    :goto_1
    if-eqz v2, :cond_2

    const p1, -0x6bd44a50

    invoke-interface {v7, p1}, Landroidx/compose/runtime/Composer;->L(I)V

    new-instance p1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {p1, p2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string p2, "editContactPrivacySettings_contactByEmailTracking_text"

    invoke-static {p1, p2}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const p1, 0x7f1405e8

    invoke-static {v7, p1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->g:Ljava/lang/Boolean;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v7

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/options/settings/components/ProfileSettingRowKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/Boolean;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_2

    :cond_2
    const p0, -0x6bcfabd5

    invoke-interface {v7, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_2

    :cond_3
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
