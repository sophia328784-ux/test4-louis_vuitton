.class public final synthetic Lnv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;


# direct methods
.method public synthetic constructor <init>(Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;I)V
    .locals 0

    iput p2, p0, Lnv0;->b:I

    iput-object p1, p0, Lnv0;->c:Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lnv0;->b:I

    iget-object p0, p0, Lnv0;->c:Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;->e(Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;->g(Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
