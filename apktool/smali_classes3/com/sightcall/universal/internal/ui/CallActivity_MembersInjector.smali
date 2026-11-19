.class public final Lcom/sightcall/universal/internal/ui/CallActivity_MembersInjector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/sightcall/universal/internal/ui/CallActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final advancedAnnotationsContainerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final advancedAnnotationsWrapperProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final callViewModelFactoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/universal/internal/ui/CallViewModel$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final capabilitiesRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/capabilities/CapabilitiesRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final coordinatorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/universal/CallCoordinatorImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Landroid/view/ViewGroup;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/universal/CallCoordinatorImpl;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/capabilities/CapabilitiesRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/universal/internal/ui/CallViewModel$Factory;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity_MembersInjector;->advancedAnnotationsContainerProvider:Ldagger/internal/Provider;

    iput-object p2, p0, Lcom/sightcall/universal/internal/ui/CallActivity_MembersInjector;->advancedAnnotationsWrapperProvider:Ldagger/internal/Provider;

    iput-object p3, p0, Lcom/sightcall/universal/internal/ui/CallActivity_MembersInjector;->coordinatorProvider:Ldagger/internal/Provider;

    iput-object p4, p0, Lcom/sightcall/universal/internal/ui/CallActivity_MembersInjector;->capabilitiesRepositoryProvider:Ldagger/internal/Provider;

    iput-object p5, p0, Lcom/sightcall/universal/internal/ui/CallActivity_MembersInjector;->callViewModelFactoryProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Ldagger/MembersInjector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Landroid/view/ViewGroup;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/universal/CallCoordinatorImpl;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/capabilities/CapabilitiesRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/universal/internal/ui/CallViewModel$Factory;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/sightcall/universal/internal/ui/CallActivity;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/universal/internal/ui/CallActivity_MembersInjector;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sightcall/universal/internal/ui/CallActivity_MembersInjector;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static injectAdvancedAnnotationsContainer(Lcom/sightcall/universal/internal/ui/CallActivity;Landroid/view/ViewGroup;)V
    .locals 0
    .annotation runtime Ljavax/inject/Named;
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->advancedAnnotationsContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public static injectAdvancedAnnotationsWrapper(Lcom/sightcall/universal/internal/ui/CallActivity;Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    return-void
.end method

.method public static injectCallViewModelFactory(Lcom/sightcall/universal/internal/ui/CallActivity;Lcom/sightcall/universal/internal/ui/CallViewModel$Factory;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModelFactory:Lcom/sightcall/universal/internal/ui/CallViewModel$Factory;

    return-void
.end method

.method public static injectCapabilitiesRepository(Lcom/sightcall/universal/internal/ui/CallActivity;Lcom/sightcall/capabilities/CapabilitiesRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;

    return-void
.end method

.method public static injectCoordinator(Lcom/sightcall/universal/internal/ui/CallActivity;Lcom/sightcall/universal/CallCoordinatorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->coordinator:Lcom/sightcall/universal/CallCoordinatorImpl;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/sightcall/universal/internal/ui/CallActivity;)V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity_MembersInjector;->advancedAnnotationsContainerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p1, v0}, Lcom/sightcall/universal/internal/ui/CallActivity_MembersInjector;->injectAdvancedAnnotationsContainer(Lcom/sightcall/universal/internal/ui/CallActivity;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity_MembersInjector;->advancedAnnotationsWrapperProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    invoke-static {p1, v0}, Lcom/sightcall/universal/internal/ui/CallActivity_MembersInjector;->injectAdvancedAnnotationsWrapper(Lcom/sightcall/universal/internal/ui/CallActivity;Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity_MembersInjector;->coordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/CallCoordinatorImpl;

    invoke-static {p1, v0}, Lcom/sightcall/universal/internal/ui/CallActivity_MembersInjector;->injectCoordinator(Lcom/sightcall/universal/internal/ui/CallActivity;Lcom/sightcall/universal/CallCoordinatorImpl;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity_MembersInjector;->capabilitiesRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/capabilities/CapabilitiesRepository;

    invoke-static {p1, v0}, Lcom/sightcall/universal/internal/ui/CallActivity_MembersInjector;->injectCapabilitiesRepository(Lcom/sightcall/universal/internal/ui/CallActivity;Lcom/sightcall/capabilities/CapabilitiesRepository;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity_MembersInjector;->callViewModelFactoryProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/internal/ui/CallViewModel$Factory;

    invoke-static {p1, p0}, Lcom/sightcall/universal/internal/ui/CallActivity_MembersInjector;->injectCallViewModelFactory(Lcom/sightcall/universal/internal/ui/CallActivity;Lcom/sightcall/universal/internal/ui/CallViewModel$Factory;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p1, Lcom/sightcall/universal/internal/ui/CallActivity;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity_MembersInjector;->injectMembers(Lcom/sightcall/universal/internal/ui/CallActivity;)V

    return-void
.end method
