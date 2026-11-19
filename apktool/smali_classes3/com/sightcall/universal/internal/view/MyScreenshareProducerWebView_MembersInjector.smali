.class public final Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView_MembersInjector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;",
        ">;"
    }
.end annotation


# instance fields
.field private final advancedAnnotationsWrapperProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;",
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


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/capabilities/CapabilitiesRepository;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView_MembersInjector;->advancedAnnotationsWrapperProvider:Ldagger/internal/Provider;

    iput-object p2, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView_MembersInjector;->capabilitiesRepositoryProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/capabilities/CapabilitiesRepository;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView_MembersInjector;

    invoke-direct {v0, p0, p1}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView_MembersInjector;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static injectAdvancedAnnotationsWrapper(Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    return-void
.end method

.method public static injectCapabilitiesRepository(Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;Lcom/sightcall/capabilities/CapabilitiesRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;)V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView_MembersInjector;->advancedAnnotationsWrapperProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    invoke-static {p1, v0}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView_MembersInjector;->injectAdvancedAnnotationsWrapper(Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView_MembersInjector;->capabilitiesRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/capabilities/CapabilitiesRepository;

    invoke-static {p1, p0}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView_MembersInjector;->injectCapabilitiesRepository(Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;Lcom/sightcall/capabilities/CapabilitiesRepository;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView_MembersInjector;->injectMembers(Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;)V

    return-void
.end method
