.class public final Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/livetranslation/settings/SettingsPanelComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Module"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J#\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0001\u00a2\u0006\u0002\u0008\u000bJ\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0016\u0010\u0010\u001a\u00020\u00112\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013H\u0007J\u0016\u0010\u0015\u001a\u00020\u00162\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013H\u0007J%\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0001\u00a2\u0006\u0002\u0008\u001eJ\u001c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0013H\u0007J4\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\n0\u00132\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\t2\u0006\u0010!\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020\u00112\u0006\u0010#\u001a\u00020\u0016H\u0007\u00a8\u0006$"
    }
    d2 = {
        "Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;",
        "",
        "<init>",
        "()V",
        "provideViewHolder",
        "Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;",
        "rootView",
        "Landroid/view/ViewGroup;",
        "interactor",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;",
        "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;",
        "provideViewHolder$livetranslation_release",
        "provideCoordinator",
        "Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;",
        "coordinator",
        "Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinatorImpl;",
        "provideStartStopTranslation",
        "Lcom/sightcall/livetranslation/domain/StartStopTranslation;",
        "liveTranslationInteractor",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
        "provideTextSizeSelector",
        "Lcom/sightcall/livetranslation/domain/TextSizeSelector;",
        "provideCoordinatorImpl",
        "component",
        "Lcom/sightcall/livetranslation/settings/SettingsPanelComponent;",
        "closeFeature",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;",
        "openHistory",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;",
        "provideCoordinatorImpl$livetranslation_release",
        "provideInteractor",
        "provideInteractorImpl",
        "settingsPanelCoordinatorImpl",
        "startStopTranslation",
        "textSizeSelector",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideCoordinator(Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinatorImpl;)Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;
    .locals 0
    .annotation runtime Lcom/sightcall/livetranslation/settings/SettingsScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public final provideCoordinatorImpl$livetranslation_release(Lcom/sightcall/livetranslation/settings/SettingsPanelComponent;Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;)Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinatorImpl;
    .locals 0
    .annotation runtime Lcom/sightcall/livetranslation/settings/SettingsScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinatorImpl;

    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinatorImpl;-><init>(Lcom/sightcall/livetranslation/settings/SettingsPanelComponent;Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;)V

    return-object p0
.end method

.method public final provideInteractor(Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;)Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;
    .locals 0
    .annotation runtime Lcom/sightcall/livetranslation/settings/SettingsScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;",
            ">;)",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public final provideInteractorImpl(Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinatorImpl;Lcom/sightcall/livetranslation/domain/StartStopTranslation;Lcom/sightcall/livetranslation/domain/TextSizeSelector;)Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;
    .locals 0
    .annotation runtime Lcom/sightcall/livetranslation/settings/SettingsScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
            ">;",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinatorImpl;",
            "Lcom/sightcall/livetranslation/domain/StartStopTranslation;",
            "Lcom/sightcall/livetranslation/domain/TextSizeSelector;",
            ")",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;-><init>(Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;Lcom/sightcall/livetranslation/domain/StartStopTranslation;Lcom/sightcall/livetranslation/domain/TextSizeSelector;)V

    return-object p0
.end method

.method public final provideStartStopTranslation(Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;)Lcom/sightcall/livetranslation/domain/StartStopTranslation;
    .locals 0
    .annotation runtime Lcom/sightcall/livetranslation/settings/SettingsScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
            ">;)",
            "Lcom/sightcall/livetranslation/domain/StartStopTranslation;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/sightcall/livetranslation/domain/StartStopTranslation;

    return-object p1
.end method

.method public final provideTextSizeSelector(Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;)Lcom/sightcall/livetranslation/domain/TextSizeSelector;
    .locals 0
    .annotation runtime Lcom/sightcall/livetranslation/settings/SettingsScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
            ">;)",
            "Lcom/sightcall/livetranslation/domain/TextSizeSelector;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/sightcall/livetranslation/domain/TextSizeSelector;

    return-object p1
.end method

.method public final provideViewHolder$livetranslation_release(Landroid/view/ViewGroup;Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;
    .locals 0
    .annotation runtime Lcom/sightcall/livetranslation/settings/SettingsScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;",
            ">;)",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;

    invoke-direct {p0, p1, p2}, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)V

    return-object p0
.end method
