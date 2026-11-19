.class public final Lcom/sightcall/universal/ar/UniversalAr_MembersInjector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/sightcall/universal/ar/UniversalAr;",
        ">;"
    }
.end annotation


# instance fields
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
.method private constructor <init>(Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/capabilities/CapabilitiesRepository;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/ar/UniversalAr_MembersInjector;->capabilitiesRepositoryProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/capabilities/CapabilitiesRepository;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/sightcall/universal/ar/UniversalAr;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/universal/ar/UniversalAr_MembersInjector;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/ar/UniversalAr_MembersInjector;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static injectCapabilitiesRepository(Lcom/sightcall/universal/ar/UniversalAr;Lcom/sightcall/capabilities/CapabilitiesRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/ar/UniversalAr;->capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/sightcall/universal/ar/UniversalAr;)V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/ar/UniversalAr_MembersInjector;->capabilitiesRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/capabilities/CapabilitiesRepository;

    invoke-static {p1, p0}, Lcom/sightcall/universal/ar/UniversalAr_MembersInjector;->injectCapabilitiesRepository(Lcom/sightcall/universal/ar/UniversalAr;Lcom/sightcall/capabilities/CapabilitiesRepository;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/sightcall/universal/ar/UniversalAr;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/ar/UniversalAr_MembersInjector;->injectMembers(Lcom/sightcall/universal/ar/UniversalAr;)V

    return-void
.end method
