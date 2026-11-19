.class public final Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinatorImpl;
.super Lcom/sightcall/libraries/archi/coordinator/Coordinator;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sightcall/libraries/archi/coordinator/Coordinator<",
        "Lcom/sightcall/livetranslation/settings/SettingsPanelComponent;",
        ">;",
        "Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0008\u0010\u000b\u001a\u00020\u000cH\u0014J\u0008\u0010\r\u001a\u00020\u000cH\u0014J\u0008\u0010\u000e\u001a\u00020\u000cH\u0016J\u0008\u0010\u000f\u001a\u00020\u000cH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinatorImpl;",
        "Lcom/sightcall/libraries/archi/coordinator/Coordinator;",
        "Lcom/sightcall/livetranslation/settings/SettingsPanelComponent;",
        "Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;",
        "component",
        "closeFeature",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;",
        "openHistory",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;",
        "<init>",
        "(Lcom/sightcall/livetranslation/settings/SettingsPanelComponent;Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;)V",
        "onStart",
        "",
        "onRelease",
        "close",
        "openTranscript",
        "livetranslation_release"
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
.field private final closeFeature:Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;

.field private final openHistory:Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;


# direct methods
.method public constructor <init>(Lcom/sightcall/livetranslation/settings/SettingsPanelComponent;Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinatorImpl;->closeFeature:Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;

    iput-object p3, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinatorImpl;->openHistory:Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinatorImpl;->closeFeature:Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;

    invoke-virtual {p0}, Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;->invoke()V

    return-void
.end method

.method public onRelease()V
    .locals 1

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->getComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent;

    invoke-interface {v0}, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent;->getViewHolder()Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->removeFromRootView()Lcom/sightcall/libraries/archi/nucleus/ViewHolder;

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->getComponent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent;

    invoke-interface {p0}, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent;->getInteractor()Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->clear()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->getComponent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent;

    invoke-interface {p0}, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent;->getViewHolder()Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->addOnRootView()Lcom/sightcall/libraries/archi/nucleus/ViewHolder;

    return-void
.end method

.method public openTranscript()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinatorImpl;->openHistory:Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;

    invoke-virtual {p0}, Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;->invoke()V

    return-void
.end method
