.class public final Lcom/sightcall/core/experiences/Manager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010%H\u0000\u00a2\u0006\u0002\u0008&J\u0017\u0010\'\u001a\u0004\u0018\u00010(2\u0006\u0010\"\u001a\u00020#H\u0000\u00a2\u0006\u0002\u0008)R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0006\u001a\u0004\u0018\u00010\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u001d\u0010\u000c\u001a\u0004\u0018\u00010\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u000b\u001a\u0004\u0008\u000e\u0010\u000fR\u001d\u0010\u0011\u001a\u0004\u0018\u00010\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u000b\u001a\u0004\u0008\u0013\u0010\u0014R\u001d\u0010\u0016\u001a\u0004\u0018\u00010\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u000b\u001a\u0004\u0008\u0018\u0010\u0019R\u001d\u0010\u001b\u001a\u0004\u0018\u00010\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010\u000b\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006*"
    }
    d2 = {
        "Lcom/sightcall/core/experiences/Manager;",
        "",
        "orchestrator",
        "Lcom/sightcall/core/experiences/Orchestrator;",
        "<init>",
        "(Lcom/sightcall/core/experiences/Orchestrator;)V",
        "digitalFlowWrapper",
        "Lcom/sightcall/core/experiences/wrapper/DigitalFlowWrapper;",
        "getDigitalFlowWrapper",
        "()Lcom/sightcall/core/experiences/wrapper/DigitalFlowWrapper;",
        "digitalFlowWrapper$delegate",
        "Lkotlin/Lazy;",
        "visualAssistanceWrapper",
        "Lcom/sightcall/core/experiences/wrapper/VisualAssistanceWrapper;",
        "getVisualAssistanceWrapper",
        "()Lcom/sightcall/core/experiences/wrapper/VisualAssistanceWrapper;",
        "visualAssistanceWrapper$delegate",
        "debugWrapper",
        "Lcom/sightcall/core/experiences/wrapper/DebugWrapper;",
        "getDebugWrapper",
        "()Lcom/sightcall/core/experiences/wrapper/DebugWrapper;",
        "debugWrapper$delegate",
        "featureWrapper",
        "Lcom/sightcall/core/experiences/wrapper/FeatureWrapper;",
        "getFeatureWrapper",
        "()Lcom/sightcall/core/experiences/wrapper/FeatureWrapper;",
        "featureWrapper$delegate",
        "loginWrapper",
        "Lcom/sightcall/core/experiences/wrapper/LoginWrapper;",
        "getLoginWrapper",
        "()Lcom/sightcall/core/experiences/wrapper/LoginWrapper;",
        "loginWrapper$delegate",
        "start",
        "",
        "experience",
        "Lcom/sightcall/core/experiences/Experience;",
        "data",
        "",
        "start$core_release",
        "getExperience",
        "Landroidx/fragment/app/Fragment;",
        "getExperience$core_release",
        "core_release"
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
.field public static final $stable:I = 0x8


# instance fields
.field private final debugWrapper$delegate:Lkotlin/Lazy;

.field private final digitalFlowWrapper$delegate:Lkotlin/Lazy;

.field private final featureWrapper$delegate:Lkotlin/Lazy;

.field private final loginWrapper$delegate:Lkotlin/Lazy;

.field private final orchestrator:Lcom/sightcall/core/experiences/Orchestrator;

.field private final visualAssistanceWrapper$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lcom/sightcall/core/experiences/Orchestrator;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/core/experiences/Manager;->orchestrator:Lcom/sightcall/core/experiences/Orchestrator;

    new-instance p1, Lfa0;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lfa0;-><init>(I)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/core/experiences/Manager;->digitalFlowWrapper$delegate:Lkotlin/Lazy;

    new-instance p1, Lfa0;

    const/16 v0, 0xb

    invoke-direct {p1, v0}, Lfa0;-><init>(I)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/core/experiences/Manager;->visualAssistanceWrapper$delegate:Lkotlin/Lazy;

    new-instance p1, Lfa0;

    const/16 v0, 0xc

    invoke-direct {p1, v0}, Lfa0;-><init>(I)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/core/experiences/Manager;->debugWrapper$delegate:Lkotlin/Lazy;

    new-instance p1, Lfa0;

    const/16 v0, 0xd

    invoke-direct {p1, v0}, Lfa0;-><init>(I)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/core/experiences/Manager;->featureWrapper$delegate:Lkotlin/Lazy;

    new-instance p1, Lfa0;

    const/16 v0, 0xe

    invoke-direct {p1, v0}, Lfa0;-><init>(I)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/core/experiences/Manager;->loginWrapper$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a()Lcom/sightcall/core/experiences/wrapper/FeatureWrapper;
    .locals 1

    invoke-static {}, Lcom/sightcall/core/experiences/Manager;->featureWrapper_delegate$lambda$0()Lcom/sightcall/core/experiences/wrapper/FeatureWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()Lcom/sightcall/core/experiences/wrapper/LoginWrapper;
    .locals 1

    invoke-static {}, Lcom/sightcall/core/experiences/Manager;->loginWrapper_delegate$lambda$0()Lcom/sightcall/core/experiences/wrapper/LoginWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Lcom/sightcall/core/experiences/wrapper/DigitalFlowWrapper;
    .locals 1

    invoke-static {}, Lcom/sightcall/core/experiences/Manager;->digitalFlowWrapper_delegate$lambda$0()Lcom/sightcall/core/experiences/wrapper/DigitalFlowWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()Lcom/sightcall/core/experiences/wrapper/VisualAssistanceWrapper;
    .locals 1

    invoke-static {}, Lcom/sightcall/core/experiences/Manager;->visualAssistanceWrapper_delegate$lambda$0()Lcom/sightcall/core/experiences/wrapper/VisualAssistanceWrapper;

    move-result-object v0

    return-object v0
.end method

.method private static final debugWrapper_delegate$lambda$0()Lcom/sightcall/core/experiences/wrapper/DebugWrapper;
    .locals 1

    invoke-static {}, Lcom/sightcall/core/experiences/SdkDiscoverKt;->initDebugWrapper()Lcom/sightcall/core/experiences/wrapper/DebugWrapper;

    move-result-object v0

    return-object v0
.end method

.method private static final digitalFlowWrapper_delegate$lambda$0()Lcom/sightcall/core/experiences/wrapper/DigitalFlowWrapper;
    .locals 1

    invoke-static {}, Lcom/sightcall/core/experiences/SdkDiscoverKt;->initDigitalFlow()Lcom/sightcall/core/experiences/wrapper/DigitalFlowWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e()Lcom/sightcall/core/experiences/wrapper/DebugWrapper;
    .locals 1

    invoke-static {}, Lcom/sightcall/core/experiences/Manager;->debugWrapper_delegate$lambda$0()Lcom/sightcall/core/experiences/wrapper/DebugWrapper;

    move-result-object v0

    return-object v0
.end method

.method private static final featureWrapper_delegate$lambda$0()Lcom/sightcall/core/experiences/wrapper/FeatureWrapper;
    .locals 1

    invoke-static {}, Lcom/sightcall/core/experiences/SdkDiscoverKt;->initFeatureWrapper()Lcom/sightcall/core/experiences/wrapper/FeatureWrapper;

    move-result-object v0

    return-object v0
.end method

.method private final getDebugWrapper()Lcom/sightcall/core/experiences/wrapper/DebugWrapper;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/core/experiences/Manager;->debugWrapper$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/core/experiences/wrapper/DebugWrapper;

    return-object p0
.end method

.method private final getDigitalFlowWrapper()Lcom/sightcall/core/experiences/wrapper/DigitalFlowWrapper;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/core/experiences/Manager;->digitalFlowWrapper$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/core/experiences/wrapper/DigitalFlowWrapper;

    return-object p0
.end method

.method private final getFeatureWrapper()Lcom/sightcall/core/experiences/wrapper/FeatureWrapper;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/core/experiences/Manager;->featureWrapper$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/core/experiences/wrapper/FeatureWrapper;

    return-object p0
.end method

.method private final getLoginWrapper()Lcom/sightcall/core/experiences/wrapper/LoginWrapper;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/core/experiences/Manager;->loginWrapper$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/core/experiences/wrapper/LoginWrapper;

    return-object p0
.end method

.method private final getVisualAssistanceWrapper()Lcom/sightcall/core/experiences/wrapper/VisualAssistanceWrapper;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/core/experiences/Manager;->visualAssistanceWrapper$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/core/experiences/wrapper/VisualAssistanceWrapper;

    return-object p0
.end method

.method private static final loginWrapper_delegate$lambda$0()Lcom/sightcall/core/experiences/wrapper/LoginWrapper;
    .locals 1

    invoke-static {}, Lcom/sightcall/core/experiences/SdkDiscoverKt;->initLoginWrapper()Lcom/sightcall/core/experiences/wrapper/LoginWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic start$core_release$default(Lcom/sightcall/core/experiences/Manager;Lcom/sightcall/core/experiences/Experience;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sightcall/core/experiences/Manager;->start$core_release(Lcom/sightcall/core/experiences/Experience;Ljava/lang/String;)V

    return-void
.end method

.method private static final visualAssistanceWrapper_delegate$lambda$0()Lcom/sightcall/core/experiences/wrapper/VisualAssistanceWrapper;
    .locals 1

    invoke-static {}, Lcom/sightcall/core/experiences/SdkDiscoverKt;->initVisualAssistanceWrapper()Lcom/sightcall/core/experiences/wrapper/VisualAssistanceWrapper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getExperience$core_release(Lcom/sightcall/core/experiences/Experience;)Landroidx/fragment/app/Fragment;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/sightcall/core/experiences/Experience$DigitalFlow;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sightcall/core/experiences/Manager;->getDigitalFlowWrapper()Lcom/sightcall/core/experiences/wrapper/DigitalFlowWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/core/experiences/Manager;->orchestrator:Lcom/sightcall/core/experiences/Orchestrator;

    check-cast p1, Lcom/sightcall/core/experiences/Experience$DigitalFlow;

    invoke-virtual {p1}, Lcom/sightcall/core/experiences/Experience$DigitalFlow;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/sightcall/core/experiences/Orchestrator;->getDigitalFlow(Landroid/net/Uri;Lcom/sightcall/core/experiences/wrapper/DigitalFlowWrapper;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1

    :cond_1
    new-instance p0, Lcom/sightcall/core/experiences/SightCallUnknownExperienceException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "UnknownExperience "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/sightcall/core/experiences/SightCallUnknownExperienceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method

.method public final start$core_release(Lcom/sightcall/core/experiences/Experience;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/sightcall/core/experiences/Experience$DigitalFlow;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sightcall/core/experiences/Manager;->getDigitalFlowWrapper()Lcom/sightcall/core/experiences/wrapper/DigitalFlowWrapper;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/sightcall/core/experiences/Manager;->orchestrator:Lcom/sightcall/core/experiences/Orchestrator;

    check-cast p1, Lcom/sightcall/core/experiences/Experience$DigitalFlow;

    invoke-virtual {p1}, Lcom/sightcall/core/experiences/Experience$DigitalFlow;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/sightcall/core/experiences/Orchestrator;->createDigitalFlow(Landroid/net/Uri;Ljava/lang/String;Lcom/sightcall/core/experiences/wrapper/DigitalFlowWrapper;)V

    return-void

    :cond_0
    instance-of p2, p1, Lcom/sightcall/core/experiences/Experience$VisualAssistance;

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/sightcall/core/experiences/Manager;->getVisualAssistanceWrapper()Lcom/sightcall/core/experiences/wrapper/VisualAssistanceWrapper;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/sightcall/core/experiences/Manager;->orchestrator:Lcom/sightcall/core/experiences/Orchestrator;

    check-cast p1, Lcom/sightcall/core/experiences/Experience$VisualAssistance;

    invoke-virtual {p1}, Lcom/sightcall/core/experiences/Experience$VisualAssistance;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/core/experiences/Orchestrator;->createVisualAssistance(Landroid/net/Uri;Lcom/sightcall/core/experiences/wrapper/VisualAssistanceWrapper;)V

    return-void

    :cond_1
    instance-of p2, p1, Lcom/sightcall/core/experiences/Experience$Feature;

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/sightcall/core/experiences/Manager;->getFeatureWrapper()Lcom/sightcall/core/experiences/wrapper/FeatureWrapper;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/sightcall/core/experiences/Manager;->orchestrator:Lcom/sightcall/core/experiences/Orchestrator;

    check-cast p1, Lcom/sightcall/core/experiences/Experience$Feature;

    invoke-virtual {p1}, Lcom/sightcall/core/experiences/Experience$Feature;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/core/experiences/Orchestrator;->createSchemeStart(Landroid/net/Uri;Lcom/sightcall/core/experiences/wrapper/FeatureWrapper;)V

    return-void

    :cond_2
    instance-of p2, p1, Lcom/sightcall/core/experiences/Experience$DeveloperMod;

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/sightcall/core/experiences/Manager;->getDebugWrapper()Lcom/sightcall/core/experiences/wrapper/DebugWrapper;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/sightcall/core/experiences/Manager;->orchestrator:Lcom/sightcall/core/experiences/Orchestrator;

    check-cast p1, Lcom/sightcall/core/experiences/Experience$DeveloperMod;

    invoke-virtual {p1}, Lcom/sightcall/core/experiences/Experience$DeveloperMod;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/core/experiences/Orchestrator;->createDebug(Landroid/net/Uri;Lcom/sightcall/core/experiences/wrapper/DebugWrapper;)V

    return-void

    :cond_3
    instance-of p2, p1, Lcom/sightcall/core/experiences/Experience$Login;

    if-eqz p2, :cond_5

    invoke-direct {p0}, Lcom/sightcall/core/experiences/Manager;->getLoginWrapper()Lcom/sightcall/core/experiences/wrapper/LoginWrapper;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/sightcall/core/experiences/Manager;->orchestrator:Lcom/sightcall/core/experiences/Orchestrator;

    check-cast p1, Lcom/sightcall/core/experiences/Experience$Login;

    invoke-virtual {p1}, Lcom/sightcall/core/experiences/Experience$Login;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/core/experiences/Orchestrator;->createLogin(Landroid/net/Uri;Lcom/sightcall/core/experiences/wrapper/LoginWrapper;)V

    :cond_4
    return-void

    :cond_5
    invoke-static {}, Lv40;->g()V

    return-void
.end method
