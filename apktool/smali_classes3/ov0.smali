.class public final synthetic Lov0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;I)V
    .locals 0

    iput p2, p0, Lov0;->b:I

    iput-object p1, p0, Lov0;->c:Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lov0;->b:I

    iget-object p0, p0, Lov0;->c:Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;->k(Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;->i(Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;->h(Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p0}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;->d(Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p0}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;->j(Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
