.class final Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function4;


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
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "T3:",
        "Ljava/lang/Object;",
        "T4:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function4;"
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
.field public static final INSTANCE:Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$6<",
            "TT1;TT2;TT3;TT4;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$6;

    invoke-direct {v0}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$6;-><init>()V

    sput-object v0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$6;->INSTANCE:Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;Ljava/lang/Boolean;Lcom/sightcall/libraries/rx/Optional;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;)Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;",
            "Ljava/lang/Boolean;",
            "Lcom/sightcall/libraries/rx/Optional<",
            "Lcom/sightcall/livetranslation/domain/Language;",
            ">;",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;",
            ")",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p3}, Lcom/sightcall/libraries/rx/Optional;->orNull()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sightcall/livetranslation/domain/Language;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;-><init>(Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;ZLcom/sightcall/livetranslation/domain/Language;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;)V

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    check-cast p2, Ljava/lang/Boolean;

    check-cast p3, Lcom/sightcall/libraries/rx/Optional;

    check-cast p4, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$6;->apply(Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;Ljava/lang/Boolean;Lcom/sightcall/libraries/rx/Optional;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;)Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;

    move-result-object p0

    return-object p0
.end method
