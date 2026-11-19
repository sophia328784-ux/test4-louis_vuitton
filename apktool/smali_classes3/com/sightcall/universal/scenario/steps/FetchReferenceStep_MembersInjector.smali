.class public final Lcom/sightcall/universal/scenario/steps/FetchReferenceStep_MembersInjector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;",
        ">;"
    }
.end annotation


# instance fields
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
.method private constructor <init>(Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/session/SessionRepository;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep_MembersInjector;->sessionRepositoryProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/session/SessionRepository;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep_MembersInjector;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep_MembersInjector;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static injectSessionRepository(Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;Lcom/sightcall/session/SessionRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;->sessionRepository:Lcom/sightcall/session/SessionRepository;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;)V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep_MembersInjector;->sessionRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/session/SessionRepository;

    invoke-static {p1, p0}, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep_MembersInjector;->injectSessionRepository(Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;Lcom/sightcall/session/SessionRepository;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep_MembersInjector;->injectMembers(Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;)V

    return-void
.end method
