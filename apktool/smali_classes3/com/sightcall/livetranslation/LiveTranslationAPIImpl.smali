.class public final Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/livetranslation/LiveTranslationAPI;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B+\u0012\u0012\u0010\u0002\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u0017H\u0016J\u0010\u00103\u001a\u00020\u00172\u0006\u00104\u001a\u00020\u001fH\u0016J\u0016\u00105\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u0001062\u0006\u00107\u001a\u000208H\u0016J$\u00109\u001a\u0006\u0012\u0002\u0008\u0003062\u0006\u00107\u001a\u0002082\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020=H\u0016J\u001c\u0010>\u001a\u0006\u0012\u0002\u0008\u0003062\u0006\u00107\u001a\u0002082\u0006\u0010:\u001a\u00020?H\u0016J\u0010\u0010@\u001a\u00020\u00172\u0006\u0010A\u001a\u00020\u0013H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u000eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u0014\u0010\"\u001a\u00020\u0013X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0014\u0010%\u001a\u00020&X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R\u001a\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010\u0015R\u0016\u0010*\u001a\u0004\u0018\u00010+X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010-R\u0016\u0010.\u001a\u0004\u0018\u00010\u001f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008/\u00100R\u0014\u00101\u001a\u00020\u0013X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010$\u00a8\u0006B"
    }
    d2 = {
        "Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI;",
        "interactorProvider",
        "Ljavax/inject/Provider;",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
        "settings",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;",
        "component",
        "Lcom/sightcall/livetranslation/LiveTranslationComponent;",
        "<init>",
        "(Ljavax/inject/Provider;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;Lcom/sightcall/livetranslation/LiveTranslationComponent;)V",
        "interactor",
        "defaultLanguage",
        "",
        "getDefaultLanguage",
        "()Ljava/lang/String;",
        "visible",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "getVisible",
        "()Lio/reactivex/rxjava3/core/Observable;",
        "onNewMessage",
        "",
        "message",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;",
        "pid",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;",
        "clear",
        "languages",
        "",
        "Lcom/sightcall/livetranslation/domain/Language;",
        "getLanguages",
        "()Ljava/util/List;",
        "enabled",
        "getEnabled",
        "()Z",
        "autoTranslate",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranslationAutoStartValue;",
        "getAutoTranslate",
        "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranslationAutoStartValue;",
        "isReady",
        "initialSelectedLanguage",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;",
        "getInitialSelectedLanguage",
        "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;",
        "selectedLanguage",
        "getSelectedLanguage",
        "()Lcom/sightcall/livetranslation/domain/Language;",
        "shouldConfirmLanguage",
        "getShouldConfirmLanguage",
        "selectLanguage",
        "language",
        "createLiveSentencesCoordinator",
        "Lcom/sightcall/libraries/archi/coordinator/Coordinator;",
        "rootView",
        "Landroid/view/ViewGroup;",
        "createSettingsPanelCoordinator",
        "closeFeature",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;",
        "openHistory",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;",
        "createHistoryCoordinator",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;",
        "enableLiveTranslation",
        "isEnabled",
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
.field private final autoTranslate:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranslationAutoStartValue;

.field private final component:Lcom/sightcall/livetranslation/LiveTranslationComponent;

.field private final defaultLanguage:Ljava/lang/String;

.field private final enabled:Z

.field private final initialSelectedLanguage:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;

.field private final interactor:Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
            ">;"
        }
    .end annotation
.end field

.field private final settings:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;

.field private final shouldConfirmLanguage:Z


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;Lcom/sightcall/livetranslation/LiveTranslationComponent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
            ">;>;",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;",
            "Lcom/sightcall/livetranslation/LiveTranslationComponent;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;->settings:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;

    iput-object p3, p0, Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;->component:Lcom/sightcall/livetranslation/LiveTranslationComponent;

    instance-of p3, p2, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;->interactor:Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Let;

    const/16 v2, 0x13

    invoke-direct {v1, p0, v2}, Let;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/sightcall/livetranslation/domain/LanguagesKt;->getDefaultSelectedLanguage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;->defaultLanguage:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;->enabled:Z

    sget-object p1, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Disabled;->INSTANCE:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Disabled;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranslationAutoStartValue;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranslationAutoStartValue;-><init>(Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_7

    move-object v1, p2

    check-cast v1, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;

    invoke-virtual {v1}, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;->getTranslationAutoStartMode()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranslationAutoStartValue;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;->autoTranslate:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranslationAutoStartValue;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_6

    move-object v1, p2

    check-cast v1, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;

    invoke-virtual {v1}, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;->getLanguage()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;->initialSelectedLanguage:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    if-eqz p3, :cond_5

    check-cast p2, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;

    invoke-virtual {p2}, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;->getLanguageMode()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageMode;

    move-result-object p1

    sget-object p2, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageMode;->Confirmation:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageMode;

    if-ne p1, p2, :cond_4

    const/4 v1, 0x1

    :cond_4
    :goto_3
    iput-boolean v1, p0, Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;->shouldConfirmLanguage:Z

    return-void

    :cond_5
    invoke-static {}, Lv40;->g()V

    throw v0

    :cond_6
    invoke-static {}, Lv40;->g()V

    throw v0

    :cond_7
    invoke-static {}, Lv40;->g()V

    throw v0
.end method

.method private static final _init_$lambda$0(Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;)V
    .locals 1

    iget-object p0, p0, Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;->interactor:Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->getActions()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$GetLanguageList;->INSTANCE:Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$GetLanguageList;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;)V
    .locals 0

    invoke-static {p0}, Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;->_init_$lambda$0(Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;->interactor:Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->clear()V

    :cond_0
    return-void
.end method

.method public createHistoryCoordinator(Landroid/view/ViewGroup;Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;)Lcom/sightcall/libraries/archi/coordinator/Coordinator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;",
            ")",
            "Lcom/sightcall/libraries/archi/coordinator/Coordinator<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;->component:Lcom/sightcall/livetranslation/LiveTranslationComponent;

    invoke-interface {p0}, Lcom/sightcall/livetranslation/LiveTranslationComponent;->history()Lcom/sightcall/livetranslation/history/HistoryComponent$Builder;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sightcall/livetranslation/history/HistoryComponent$Builder;->rootView(Landroid/view/ViewGroup;)Lcom/sightcall/livetranslation/history/HistoryComponent$Builder;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/sightcall/livetranslation/history/HistoryComponent$Builder;->closeFeature(Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;)Lcom/sightcall/livetranslation/history/HistoryComponent$Builder;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/livetranslation/history/HistoryComponent$Builder;->build()Lcom/sightcall/livetranslation/history/HistoryComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/livetranslation/history/HistoryComponent;->getCoordinator()Lcom/sightcall/livetranslation/history/HistoryCoordinatorImpl;

    move-result-object p0

    return-object p0
.end method

.method public createLiveSentencesCoordinator(Landroid/view/ViewGroup;)Lcom/sightcall/libraries/archi/coordinator/Coordinator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lcom/sightcall/libraries/archi/coordinator/Coordinator<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;->settings:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;

    instance-of v1, v0, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;->component:Lcom/sightcall/livetranslation/LiveTranslationComponent;

    invoke-interface {v0}, Lcom/sightcall/livetranslation/LiveTranslationComponent;->liveSentences()Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Builder;->rootView(Landroid/view/ViewGroup;)Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;->settings:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;

    check-cast p0, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;

    invoke-interface {p1, p0}, Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Builder;->settings(Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;)Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Builder;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Builder;->build()Lcom/sightcall/livetranslation/live/LiveSentencesComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/livetranslation/live/LiveSentencesComponent;->getCoordinator()Lcom/sightcall/livetranslation/live/LiveSentencesCoordinatorImpl;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Disabled;->INSTANCE:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Disabled;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public createSettingsPanelCoordinator(Landroid/view/ViewGroup;Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;)Lcom/sightcall/libraries/archi/coordinator/Coordinator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;",
            ")",
            "Lcom/sightcall/libraries/archi/coordinator/Coordinator<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;->component:Lcom/sightcall/livetranslation/LiveTranslationComponent;

    invoke-interface {p0}, Lcom/sightcall/livetranslation/LiveTranslationComponent;->settingsPanel()Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Builder;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Builder;->rootView(Landroid/view/ViewGroup;)Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Builder;

    move-result-object p0

    invoke-interface {p0, p3}, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Builder;->openHistory(Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;)Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Builder;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Builder;->closeFeature(Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;)Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Builder;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Builder;->build()Lcom/sightcall/livetranslation/settings/SettingsPanelComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent;->getCoordinator()Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinatorImpl;

    move-result-object p0

    return-object p0
.end method

.method public enableLiveTranslation(Z)V
    .locals 1

    iget-object p0, p0, Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;->interactor:Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->getActions()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$Enable;

    invoke-direct {v0, p1}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$Enable;-><init>(Z)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getAutoTranslate()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranslationAutoStartValue;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;->autoTranslate:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranslationAutoStartValue;

    return-object p0
.end method

.method public getDefaultLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;->defaultLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public getEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;->enabled:Z

    return p0
.end method

.method public getInitialSelectedLanguage()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;->initialSelectedLanguage:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;

    return-object p0
.end method

.method public getLanguages()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sightcall/livetranslation/domain/Language;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;->interactor:Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->getState()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->blockingFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->getLanguages()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSelectedLanguage()Lcom/sightcall/livetranslation/domain/Language;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;->interactor:Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->getState()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->blockingFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->getDisplaySettings()Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;->getLanguage()Lcom/sightcall/livetranslation/domain/Language;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getShouldConfirmLanguage()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;->shouldConfirmLanguage:Z

    return p0
.end method

.method public getVisible()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;->interactor:Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->getState()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v0, Lcom/sightcall/livetranslation/LiveTranslationAPIImpl$visible$1;->INSTANCE:Lcom/sightcall/livetranslation/LiveTranslationAPIImpl$visible$1;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public isReady()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;->interactor:Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->getState()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v0, Lcom/sightcall/livetranslation/LiveTranslationAPIImpl$isReady$1;->INSTANCE:Lcom/sightcall/livetranslation/LiveTranslationAPIImpl$isReady$1;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public onNewMessage(Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;->interactor:Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->getActions()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;

    invoke-direct {v0, p1, p2}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;-><init>(Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public selectLanguage(Lcom/sightcall/livetranslation/domain/Language;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;->interactor:Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->getActions()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$SelectLanguage;

    invoke-direct {v0, p1}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$SelectLanguage;-><init>(Lcom/sightcall/livetranslation/domain/Language;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
