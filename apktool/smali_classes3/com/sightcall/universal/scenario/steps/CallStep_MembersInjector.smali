.class public final Lcom/sightcall/universal/scenario/steps/CallStep_MembersInjector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/sightcall/universal/scenario/steps/CallStep;",
        ">;"
    }
.end annotation


# instance fields
.field private final advancedAnnotationsAPIProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;",
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

.field private final gpsRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/gpslocation/GpsRepository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/capabilities/CapabilitiesRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/gpslocation/GpsRepository;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/scenario/steps/CallStep_MembersInjector;->advancedAnnotationsAPIProvider:Ldagger/internal/Provider;

    iput-object p2, p0, Lcom/sightcall/universal/scenario/steps/CallStep_MembersInjector;->capabilitiesRepositoryProvider:Ldagger/internal/Provider;

    iput-object p3, p0, Lcom/sightcall/universal/scenario/steps/CallStep_MembersInjector;->gpsRepositoryProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/capabilities/CapabilitiesRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/gpslocation/GpsRepository;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/sightcall/universal/scenario/steps/CallStep;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/universal/scenario/steps/CallStep_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lcom/sightcall/universal/scenario/steps/CallStep_MembersInjector;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static injectAdvancedAnnotationsAPI(Lcom/sightcall/universal/scenario/steps/CallStep;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->advancedAnnotationsAPI:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;

    return-void
.end method

.method public static injectCapabilitiesRepository(Lcom/sightcall/universal/scenario/steps/CallStep;Lcom/sightcall/capabilities/CapabilitiesRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;

    return-void
.end method

.method public static injectGpsRepository(Lcom/sightcall/universal/scenario/steps/CallStep;Lcom/sightcall/gpslocation/GpsRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->gpsRepository:Lcom/sightcall/gpslocation/GpsRepository;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/sightcall/universal/scenario/steps/CallStep;)V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep_MembersInjector;->advancedAnnotationsAPIProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;

    invoke-static {p1, v0}, Lcom/sightcall/universal/scenario/steps/CallStep_MembersInjector;->injectAdvancedAnnotationsAPI(Lcom/sightcall/universal/scenario/steps/CallStep;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;)V

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep_MembersInjector;->capabilitiesRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/capabilities/CapabilitiesRepository;

    invoke-static {p1, v0}, Lcom/sightcall/universal/scenario/steps/CallStep_MembersInjector;->injectCapabilitiesRepository(Lcom/sightcall/universal/scenario/steps/CallStep;Lcom/sightcall/capabilities/CapabilitiesRepository;)V

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep_MembersInjector;->gpsRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/gpslocation/GpsRepository;

    invoke-static {p1, p0}, Lcom/sightcall/universal/scenario/steps/CallStep_MembersInjector;->injectGpsRepository(Lcom/sightcall/universal/scenario/steps/CallStep;Lcom/sightcall/gpslocation/GpsRepository;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Lcom/sightcall/universal/scenario/steps/CallStep;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/steps/CallStep_MembersInjector;->injectMembers(Lcom/sightcall/universal/scenario/steps/CallStep;)V

    return-void
.end method
