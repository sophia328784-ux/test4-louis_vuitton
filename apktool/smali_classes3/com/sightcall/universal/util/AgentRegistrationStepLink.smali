.class public final Lcom/sightcall/universal/util/AgentRegistrationStepLink;
.super Lcom/sightcall/universal/util/StepLink;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/util/AgentRegistrationStepLink$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB!\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\n\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/sightcall/universal/util/AgentRegistrationStepLink;",
        "Lcom/sightcall/universal/util/StepLink;",
        "config",
        "Lcom/sightcall/universal/model/Config;",
        "temporaryToken",
        "",
        "startWithOldLogin",
        "",
        "<init>",
        "(Lcom/sightcall/universal/model/Config;Ljava/lang/String;Z)V",
        "createStep",
        "Lcom/sightcall/universal/scenario/Step;",
        "Companion",
        "sdk_installedRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/sightcall/universal/util/AgentRegistrationStepLink$Companion;


# instance fields
.field private final startWithOldLogin:Z

.field private final temporaryToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sightcall/universal/util/AgentRegistrationStepLink$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/universal/util/AgentRegistrationStepLink$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sightcall/universal/util/AgentRegistrationStepLink;->Companion:Lcom/sightcall/universal/util/AgentRegistrationStepLink$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/sightcall/universal/model/Config;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/util/StepLink;-><init>(Lcom/sightcall/universal/model/Config;)V

    iput-object p2, p0, Lcom/sightcall/universal/util/AgentRegistrationStepLink;->temporaryToken:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sightcall/universal/util/AgentRegistrationStepLink;->startWithOldLogin:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sightcall/universal/model/Config;Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/universal/util/AgentRegistrationStepLink;-><init>(Lcom/sightcall/universal/model/Config;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public createStep()Lcom/sightcall/universal/scenario/Step;
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/util/AgentRegistrationStepLink;->temporaryToken:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sightcall/universal/util/StepLink;->getConfig()Lcom/sightcall/universal/model/Config;

    move-result-object v1

    iget-boolean p0, p0, Lcom/sightcall/universal/util/AgentRegistrationStepLink;->startWithOldLogin:Z

    invoke-static {v0, v1, p0}, Lcom/sightcall/universal/scenario/steps/AgentRegistrationStep;->with(Ljava/lang/String;Lcom/sightcall/universal/model/Config;Z)Lcom/sightcall/universal/scenario/steps/AgentRegistrationStep;

    move-result-object p0

    return-object p0
.end method
