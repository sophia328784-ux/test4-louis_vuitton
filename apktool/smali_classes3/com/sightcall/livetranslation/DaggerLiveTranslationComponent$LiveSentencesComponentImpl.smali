.class final Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/livetranslation/live/LiveSentencesComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LiveSentencesComponentImpl"
.end annotation


# instance fields
.field private final liveSentencesComponentImpl:Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentImpl;

.field liveSentencesComponentProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/live/LiveSentencesComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final liveTranslationComponentImpl:Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;

.field provideCoordinatorImplProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/live/LiveSentencesCoordinatorImpl;",
            ">;"
        }
    .end annotation
.end field

.field provideInteractorImplProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
            "Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;",
            ">;>;"
        }
    .end annotation
.end field

.field provideInteractorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
            "Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;",
            ">;>;"
        }
    .end annotation
.end field

.field provideViewHolderProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/live/LiveSentencesViewHolder;",
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

.field settingsProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Module;Landroid/view/ViewGroup;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentImpl;->liveSentencesComponentImpl:Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentImpl;

    iput-object p1, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentImpl;->liveTranslationComponentImpl:Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;

    invoke-direct {p0, p2, p3, p4}, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentImpl;->initialize(Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Module;Landroid/view/ViewGroup;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;)V

    return-void
.end method

.method private initialize(Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Module;Landroid/view/ViewGroup;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;)V
    .locals 0

    invoke-static {p2}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentImpl;->rootViewProvider:Ldagger/internal/Provider;

    invoke-static {p3}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentImpl;->settingsProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentImpl;->liveTranslationComponentImpl:Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;

    iget-object p3, p3, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;->provideInteractorProvider:Ldagger/internal/Provider;

    invoke-static {p1, p3, p2}, Lcom/sightcall/livetranslation/live/LiveSentencesComponent_Module_ProvideInteractorImplFactory;->create(Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/livetranslation/live/LiveSentencesComponent_Module_ProvideInteractorImplFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentImpl;->provideInteractorImplProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/sightcall/livetranslation/live/LiveSentencesComponent_Module_ProvideInteractorFactory;->create(Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Module;Ldagger/internal/Provider;)Lcom/sightcall/livetranslation/live/LiveSentencesComponent_Module_ProvideInteractorFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentImpl;->provideInteractorProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentImpl;->rootViewProvider:Ldagger/internal/Provider;

    invoke-static {p1, p3, p2}, Lcom/sightcall/livetranslation/live/LiveSentencesComponent_Module_ProvideViewHolderFactory;->create(Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/livetranslation/live/LiveSentencesComponent_Module_ProvideViewHolderFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentImpl;->provideViewHolderProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentImpl;->liveSentencesComponentImpl:Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentImpl;

    invoke-static {p2}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentImpl;->liveSentencesComponentProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/sightcall/livetranslation/live/LiveSentencesComponent_Module_ProvideCoordinatorImplFactory;->create(Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Module;Ldagger/internal/Provider;)Lcom/sightcall/livetranslation/live/LiveSentencesComponent_Module_ProvideCoordinatorImplFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentImpl;->provideCoordinatorImplProvider:Ldagger/internal/Provider;

    return-void
.end method


# virtual methods
.method public getCoordinator()Lcom/sightcall/livetranslation/live/LiveSentencesCoordinatorImpl;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentImpl;->provideCoordinatorImplProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/livetranslation/live/LiveSentencesCoordinatorImpl;

    return-object p0
.end method

.method public getInteractor()Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
            "Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentImpl;->provideInteractorImplProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;

    return-object p0
.end method

.method public getViewHolder()Lcom/sightcall/livetranslation/live/LiveSentencesViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentImpl;->provideViewHolderProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/livetranslation/live/LiveSentencesViewHolder;

    return-object p0
.end method
