.class public final synthetic Lyv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    iput p3, p0, Lyv;->b:I

    iput-object p1, p0, Lyv;->c:Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;

    iput-object p2, p0, Lyv;->d:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lyv;->b:I

    iget-object v1, p0, Lyv;->d:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lyv;->c:Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;

    packed-switch v0, :pswitch_data_0

    move-object v9, p1

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->c:Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;->b:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    const/4 v8, 0x0

    const/16 v10, 0x3f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v10}, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->a(Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;ZZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;I)Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {v1, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->c:Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;->b:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    const/4 v9, 0x0

    const/16 v10, 0x7d

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->a(Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;ZZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;I)Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->c:Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;->b:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    const/4 v9, 0x0

    const/16 v10, 0x77

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->a(Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;ZZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;I)Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->c:Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;->b:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    const/4 v9, 0x0

    const/16 v10, 0x7e

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->a(Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;ZZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;I)Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

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
