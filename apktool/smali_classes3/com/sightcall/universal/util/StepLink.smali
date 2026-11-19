.class public Lcom/sightcall/universal/util/StepLink;
.super Lcom/sightcall/universal/util/Deeplink;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0011\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\n\u0010\u0012\u001a\u0004\u0018\u00010\tH\u0014R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001d\u0010\u0008\u001a\u0004\u0018\u00010\t8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/sightcall/universal/util/StepLink;",
        "Lcom/sightcall/universal/util/Deeplink;",
        "config",
        "Lcom/sightcall/universal/model/Config;",
        "<init>",
        "(Lcom/sightcall/universal/model/Config;)V",
        "getConfig",
        "()Lcom/sightcall/universal/model/Config;",
        "step",
        "Lcom/sightcall/universal/scenario/Step;",
        "getStep",
        "()Lcom/sightcall/universal/scenario/Step;",
        "step$delegate",
        "Lkotlin/Lazy;",
        "execute",
        "",
        "context",
        "Landroid/content/Context;",
        "createStep",
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


# instance fields
.field private final config:Lcom/sightcall/universal/model/Config;

.field private final step$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/model/Config;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/sightcall/universal/util/Deeplink;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/util/StepLink;->config:Lcom/sightcall/universal/model/Config;

    new-instance p1, Lhv0;

    const/16 v0, 0x9

    invoke-direct {p1, p0, v0}, Lhv0;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/util/StepLink;->step$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a(Lcom/sightcall/universal/util/StepLink;)Lcom/sightcall/universal/scenario/Step;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/universal/util/StepLink;->step_delegate$lambda$0(Lcom/sightcall/universal/util/StepLink;)Lcom/sightcall/universal/scenario/Step;

    move-result-object p0

    return-object p0
.end method

.method private static final step_delegate$lambda$0(Lcom/sightcall/universal/util/StepLink;)Lcom/sightcall/universal/scenario/Step;
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/universal/util/StepLink;->createStep()Lcom/sightcall/universal/scenario/Step;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createStep()Lcom/sightcall/universal/scenario/Step;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public execute(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Lcom/sightcall/universal/util/Deeplink;->execute(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/util/StepLink;->getStep()Lcom/sightcall/universal/scenario/Step;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/universal/util/Deeplink;->getLogger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    const-string p1, "Step is null..."

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/sightcall/universal/scenario/Scenario;->with(Lcom/sightcall/universal/scenario/Step;)Lcom/sightcall/universal/scenario/Scenario;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/Universal;->start(Lcom/sightcall/universal/scenario/Scenario;)V

    return-void
.end method

.method public final getConfig()Lcom/sightcall/universal/model/Config;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/util/StepLink;->config:Lcom/sightcall/universal/model/Config;

    return-object p0
.end method

.method public final getStep()Lcom/sightcall/universal/scenario/Step;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/util/StepLink;->step$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/scenario/Step;

    return-object p0
.end method
