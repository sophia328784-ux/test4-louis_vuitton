.class final Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;-><init>(Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;Lcom/sightcall/livetranslation/domain/StartStopTranslation;Lcom/sightcall/livetranslation/domain/TextSizeSelector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$1<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$1;

    invoke-direct {v0}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$1;-><init>()V

    sput-object v0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$1;->INSTANCE:Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;)Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;

    invoke-virtual {p1}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->getDisplaySettings()Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;->getFontSize()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->getDisplaySettings()Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;->getShow()Z

    move-result v1

    invoke-virtual {p1}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->getDisplaySettings()Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;->getLanguage()Lcom/sightcall/livetranslation/domain/Language;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->getDisplaySettings()Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;->getTranscriptHistory()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;-><init>(Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;ZLcom/sightcall/livetranslation/domain/Language;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;)V

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p1, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;

    invoke-virtual {p0, p1}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$1;->apply(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;)Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;

    move-result-object p0

    return-object p0
.end method
