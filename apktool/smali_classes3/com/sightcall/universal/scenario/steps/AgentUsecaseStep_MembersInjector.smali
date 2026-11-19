.class public final Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep_MembersInjector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;",
        ">;"
    }
.end annotation


# instance fields
.field private final analyticsAgentSessionRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/analyticsagentsession/AnalyticsAgentSessionRepository;",
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
            "Lcom/sightcall/analyticsagentsession/AnalyticsAgentSessionRepository;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep_MembersInjector;->analyticsAgentSessionRepositoryProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/analyticsagentsession/AnalyticsAgentSessionRepository;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep_MembersInjector;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep_MembersInjector;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static injectAnalyticsAgentSessionRepository(Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;Lcom/sightcall/analyticsagentsession/AnalyticsAgentSessionRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;->analyticsAgentSessionRepository:Lcom/sightcall/analyticsagentsession/AnalyticsAgentSessionRepository;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;)V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep_MembersInjector;->analyticsAgentSessionRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/analyticsagentsession/AnalyticsAgentSessionRepository;

    invoke-static {p1, p0}, Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep_MembersInjector;->injectAnalyticsAgentSessionRepository(Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;Lcom/sightcall/analyticsagentsession/AnalyticsAgentSessionRepository;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep_MembersInjector;->injectMembers(Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;)V

    return-void
.end method
