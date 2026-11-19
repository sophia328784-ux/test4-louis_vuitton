.class final Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/livetranslation/history/HistoryComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryComponentImpl"
.end annotation


# instance fields
.field closeFeatureProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;",
            ">;"
        }
    .end annotation
.end field

.field private final historyComponentImpl:Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentImpl;

.field historyComponentProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/history/HistoryComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final liveTranslationComponentImpl:Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;

.field provideCoordinator$livetranslation_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/history/HistoryCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field provideCoordinatorImpl$livetranslation_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/history/HistoryCoordinatorImpl;",
            ">;"
        }
    .end annotation
.end field

.field provideInteractorImplProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
            "Lcom/sightcall/livetranslation/history/HistoryInteractor$State;",
            ">;>;"
        }
    .end annotation
.end field

.field provideInteractorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
            "Lcom/sightcall/livetranslation/history/HistoryInteractor$State;",
            ">;>;"
        }
    .end annotation
.end field

.field provideViewHolder$livetranslation_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/history/HistoryViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field rootViewProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;Lcom/sightcall/livetranslation/history/HistoryComponent$Module;Landroid/view/ViewGroup;Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentImpl;->historyComponentImpl:Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentImpl;

    iput-object p1, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentImpl;->liveTranslationComponentImpl:Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;

    invoke-direct {p0, p2, p3, p4}, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentImpl;->initialize(Lcom/sightcall/livetranslation/history/HistoryComponent$Module;Landroid/view/ViewGroup;Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;)V

    return-void
.end method

.method private initialize(Lcom/sightcall/livetranslation/history/HistoryComponent$Module;Landroid/view/ViewGroup;Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;)V
    .locals 0

    invoke-static {p2}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentImpl;->rootViewProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentImpl;->historyComponentImpl:Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentImpl;

    invoke-static {p2}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentImpl;->historyComponentProvider:Ldagger/internal/Provider;

    invoke-static {p3}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentImpl;->closeFeatureProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentImpl;->historyComponentProvider:Ldagger/internal/Provider;

    invoke-static {p1, p3, p2}, Lcom/sightcall/livetranslation/history/HistoryComponent_Module_ProvideCoordinatorImpl$livetranslation_releaseFactory;->create(Lcom/sightcall/livetranslation/history/HistoryComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/livetranslation/history/HistoryComponent_Module_ProvideCoordinatorImpl$livetranslation_releaseFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentImpl;->provideCoordinatorImpl$livetranslation_releaseProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/sightcall/livetranslation/history/HistoryComponent_Module_ProvideCoordinator$livetranslation_releaseFactory;->create(Lcom/sightcall/livetranslation/history/HistoryComponent$Module;Ldagger/internal/Provider;)Lcom/sightcall/livetranslation/history/HistoryComponent_Module_ProvideCoordinator$livetranslation_releaseFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentImpl;->provideCoordinator$livetranslation_releaseProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentImpl;->liveTranslationComponentImpl:Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;

    iget-object p3, p3, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;->provideInteractorProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2, p3}, Lcom/sightcall/livetranslation/history/HistoryComponent_Module_ProvideInteractorImplFactory;->create(Lcom/sightcall/livetranslation/history/HistoryComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/livetranslation/history/HistoryComponent_Module_ProvideInteractorImplFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentImpl;->provideInteractorImplProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/sightcall/livetranslation/history/HistoryComponent_Module_ProvideInteractorFactory;->create(Lcom/sightcall/livetranslation/history/HistoryComponent$Module;Ldagger/internal/Provider;)Lcom/sightcall/livetranslation/history/HistoryComponent_Module_ProvideInteractorFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentImpl;->provideInteractorProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentImpl;->rootViewProvider:Ldagger/internal/Provider;

    invoke-static {p1, p3, p2}, Lcom/sightcall/livetranslation/history/HistoryComponent_Module_ProvideViewHolder$livetranslation_releaseFactory;->create(Lcom/sightcall/livetranslation/history/HistoryComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/livetranslation/history/HistoryComponent_Module_ProvideViewHolder$livetranslation_releaseFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentImpl;->provideViewHolder$livetranslation_releaseProvider:Ldagger/internal/Provider;

    return-void
.end method


# virtual methods
.method public getCoordinator()Lcom/sightcall/livetranslation/history/HistoryCoordinatorImpl;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentImpl;->provideCoordinatorImpl$livetranslation_releaseProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/livetranslation/history/HistoryCoordinatorImpl;

    return-object p0
.end method

.method public getInteractor()Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
            "Lcom/sightcall/livetranslation/history/HistoryInteractor$State;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentImpl;->provideInteractorImplProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;

    return-object p0
.end method

.method public getViewHolder()Lcom/sightcall/livetranslation/history/HistoryViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentImpl;->provideViewHolder$livetranslation_releaseProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/livetranslation/history/HistoryViewHolder;

    return-object p0
.end method
