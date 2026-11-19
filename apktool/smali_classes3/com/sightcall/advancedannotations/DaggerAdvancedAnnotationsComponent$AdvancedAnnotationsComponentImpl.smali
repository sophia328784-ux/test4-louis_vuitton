.class final Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdvancedAnnotationsComponentImpl"
.end annotation


# instance fields
.field private final advancedAnnotationsComponentImpl:Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;

.field contextProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field initialSenderColorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;",
            ">;"
        }
    .end annotation
.end field

.field mainSchedulerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field messageSenderProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;",
            ">;"
        }
    .end annotation
.end field

.field networkConnectorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/libraries/network/NetworkConnector;",
            ">;"
        }
    .end annotation
.end field

.field provideAPI$advancedannotations_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/data/API;",
            ">;"
        }
    .end annotation
.end field

.field provideAdvancedAnnotationAPI$advancedannotations_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;",
            ">;"
        }
    .end annotation
.end field

.field provideContainer$advancedannotations_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field provideDrawer$advancedannotations_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawer;",
            ">;"
        }
    .end annotation
.end field

.field provideDrawingModeSelector$advancedannotations_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;",
            ">;"
        }
    .end annotation
.end field

.field provideEventInterpreter$advancedannotations_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/event/EventInterpreter;",
            ">;"
        }
    .end annotation
.end field

.field provideEventInterpreterImpl$advancedannotations_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;",
            ">;"
        }
    .end annotation
.end field

.field provideEventInterpreterOut$advancedannotations_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/event/EventInterpreter$Out;",
            ">;"
        }
    .end annotation
.end field

.field provideParserImpl$advancedannotations_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;",
            ">;"
        }
    .end annotation
.end field

.field provideParserOut$advancedannotations_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParser$Out;",
            ">;"
        }
    .end annotation
.end field

.field provideRepository$advancedannotations_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/AdvancedAnnotationsRepository;",
            ">;"
        }
    .end annotation
.end field

.field provideSettingsInteractor$advancedannotations_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;",
            ">;"
        }
    .end annotation
.end field

.field senderIdGetterProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;",
            ">;"
        }
    .end annotation
.end field

.field stateHandlerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;",
            ">;"
        }
    .end annotation
.end field

.field urlProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Landroid/content/Context;Lio/reactivex/rxjava3/core/Scheduler;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;Lcom/sightcall/libraries/network/NetworkConnector;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->advancedAnnotationsComponentImpl:Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;

    invoke-direct/range {p0 .. p9}, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->initialize(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Landroid/content/Context;Lio/reactivex/rxjava3/core/Scheduler;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;Lcom/sightcall/libraries/network/NetworkConnector;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;)V

    return-void
.end method

.method private initialize(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Landroid/content/Context;Lio/reactivex/rxjava3/core/Scheduler;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;Lcom/sightcall/libraries/network/NetworkConnector;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;)V
    .locals 9

    invoke-static {p2}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->contextProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideContainer$advancedannotations_releaseFactory;->create(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Ldagger/internal/Provider;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideContainer$advancedannotations_releaseFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->provideContainer$advancedannotations_releaseProvider:Ldagger/internal/Provider;

    invoke-static {p5}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->networkConnectorProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideAPI$advancedannotations_releaseFactory;->create(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Ldagger/internal/Provider;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideAPI$advancedannotations_releaseFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->provideAPI$advancedannotations_releaseProvider:Ldagger/internal/Provider;

    invoke-static {p4}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->urlProvider:Ldagger/internal/Provider;

    iget-object p4, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->provideAPI$advancedannotations_releaseProvider:Ldagger/internal/Provider;

    iget-object p5, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->contextProvider:Ldagger/internal/Provider;

    invoke-static {p1, p4, p2, p5}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideRepository$advancedannotations_releaseFactory;->create(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideRepository$advancedannotations_releaseFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->provideRepository$advancedannotations_releaseProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideSettingsInteractor$advancedannotations_releaseFactory;->create(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Ldagger/internal/Provider;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideSettingsInteractor$advancedannotations_releaseFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->provideSettingsInteractor$advancedannotations_releaseProvider:Ldagger/internal/Provider;

    invoke-static/range {p9 .. p9}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->initialSenderColorProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideDrawingModeSelector$advancedannotations_releaseFactory;->create(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Ldagger/internal/Provider;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideDrawingModeSelector$advancedannotations_releaseFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->provideDrawingModeSelector$advancedannotations_releaseProvider:Ldagger/internal/Provider;

    invoke-static {p3}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->mainSchedulerProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->provideContainer$advancedannotations_releaseProvider:Ldagger/internal/Provider;

    iget-object p4, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->provideDrawingModeSelector$advancedannotations_releaseProvider:Ldagger/internal/Provider;

    iget-object p5, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->provideSettingsInteractor$advancedannotations_releaseProvider:Ldagger/internal/Provider;

    invoke-static {p1, p3, p4, p5, p2}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideEventInterpreterImpl$advancedannotations_releaseFactory;->create(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideEventInterpreterImpl$advancedannotations_releaseFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->provideEventInterpreterImpl$advancedannotations_releaseProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideEventInterpreterOut$advancedannotations_releaseFactory;->create(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Ldagger/internal/Provider;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideEventInterpreterOut$advancedannotations_releaseFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->provideEventInterpreterOut$advancedannotations_releaseProvider:Ldagger/internal/Provider;

    invoke-static/range {p8 .. p8}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->senderIdGetterProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->provideEventInterpreterOut$advancedannotations_releaseProvider:Ldagger/internal/Provider;

    invoke-static {p1, p3, p2}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideParserImpl$advancedannotations_releaseFactory;->create(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideParserImpl$advancedannotations_releaseFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->provideParserImpl$advancedannotations_releaseProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideParserOut$advancedannotations_releaseFactory;->create(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Ldagger/internal/Provider;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideParserOut$advancedannotations_releaseFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v3

    iput-object v3, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->provideParserOut$advancedannotations_releaseProvider:Ldagger/internal/Provider;

    iget-object v1, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->provideContainer$advancedannotations_releaseProvider:Ldagger/internal/Provider;

    iget-object v2, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->provideSettingsInteractor$advancedannotations_releaseProvider:Ldagger/internal/Provider;

    iget-object v4, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->provideEventInterpreterOut$advancedannotations_releaseProvider:Ldagger/internal/Provider;

    iget-object v5, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->provideDrawingModeSelector$advancedannotations_releaseProvider:Ldagger/internal/Provider;

    iget-object v6, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->mainSchedulerProvider:Ldagger/internal/Provider;

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideDrawer$advancedannotations_releaseFactory;->create(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideDrawer$advancedannotations_releaseFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->provideDrawer$advancedannotations_releaseProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->provideEventInterpreterImpl$advancedannotations_releaseProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideEventInterpreter$advancedannotations_releaseFactory;->create(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Ldagger/internal/Provider;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideEventInterpreter$advancedannotations_releaseFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->provideEventInterpreter$advancedannotations_releaseProvider:Ldagger/internal/Provider;

    invoke-static {p6}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->messageSenderProvider:Ldagger/internal/Provider;

    invoke-static/range {p7 .. p7}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object v8

    iput-object v8, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->stateHandlerProvider:Ldagger/internal/Provider;

    iget-object v1, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->provideContainer$advancedannotations_releaseProvider:Ldagger/internal/Provider;

    iget-object v2, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->provideSettingsInteractor$advancedannotations_releaseProvider:Ldagger/internal/Provider;

    iget-object v3, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->provideDrawingModeSelector$advancedannotations_releaseProvider:Ldagger/internal/Provider;

    iget-object v4, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->provideDrawer$advancedannotations_releaseProvider:Ldagger/internal/Provider;

    iget-object v5, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->provideEventInterpreter$advancedannotations_releaseProvider:Ldagger/internal/Provider;

    iget-object v6, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->provideParserImpl$advancedannotations_releaseProvider:Ldagger/internal/Provider;

    iget-object v7, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->messageSenderProvider:Ldagger/internal/Provider;

    invoke-static/range {v0 .. v8}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideAdvancedAnnotationAPI$advancedannotations_releaseFactory;->create(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideAdvancedAnnotationAPI$advancedannotations_releaseFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->provideAdvancedAnnotationAPI$advancedannotations_releaseProvider:Ldagger/internal/Provider;

    return-void
.end method


# virtual methods
.method public getApi()Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;->provideAdvancedAnnotationAPI$advancedannotations_releaseProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;

    return-object p0
.end method
