.class public final Lcom/sightcall/universal/internal/ui/CallViewModel_Factory_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/universal/internal/ui/CallViewModel$Factory;",
        ">;"
    }
.end annotation


# instance fields
.field private final gpsRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/gpslocation/GpsRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/session/SessionRepository;",
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
            "Lcom/sightcall/session/SessionRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/gpslocation/GpsRepository;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/CallViewModel_Factory_Factory;->sessionRepositoryProvider:Ldagger/internal/Provider;

    iput-object p2, p0, Lcom/sightcall/universal/internal/ui/CallViewModel_Factory_Factory;->gpsRepositoryProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/universal/internal/ui/CallViewModel_Factory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/session/SessionRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/gpslocation/GpsRepository;",
            ">;)",
            "Lcom/sightcall/universal/internal/ui/CallViewModel_Factory_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/universal/internal/ui/CallViewModel_Factory_Factory;

    invoke-direct {v0, p0, p1}, Lcom/sightcall/universal/internal/ui/CallViewModel_Factory_Factory;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/sightcall/session/SessionRepository;Lcom/sightcall/gpslocation/GpsRepository;)Lcom/sightcall/universal/internal/ui/CallViewModel$Factory;
    .locals 1

    new-instance v0, Lcom/sightcall/universal/internal/ui/CallViewModel$Factory;

    invoke-direct {v0, p0, p1}, Lcom/sightcall/universal/internal/ui/CallViewModel$Factory;-><init>(Lcom/sightcall/session/SessionRepository;Lcom/sightcall/gpslocation/GpsRepository;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/sightcall/universal/internal/ui/CallViewModel$Factory;
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel_Factory_Factory;->sessionRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/session/SessionRepository;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel_Factory_Factory;->gpsRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/gpslocation/GpsRepository;

    invoke-static {v0, p0}, Lcom/sightcall/universal/internal/ui/CallViewModel_Factory_Factory;->newInstance(Lcom/sightcall/session/SessionRepository;Lcom/sightcall/gpslocation/GpsRepository;)Lcom/sightcall/universal/internal/ui/CallViewModel$Factory;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallViewModel_Factory_Factory;->get()Lcom/sightcall/universal/internal/ui/CallViewModel$Factory;

    move-result-object p0

    return-object p0
.end method
