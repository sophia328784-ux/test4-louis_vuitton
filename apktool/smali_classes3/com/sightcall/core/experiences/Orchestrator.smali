.class public final Lcom/sightcall/core/experiences/Orchestrator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0011J\u0016\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014J\u0016\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0017J\u0016\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000b\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/sightcall/core/experiences/Orchestrator;",
        "",
        "<init>",
        "()V",
        "createDigitalFlow",
        "",
        "uri",
        "Landroid/net/Uri;",
        "data",
        "",
        "digitalFlowWrapper",
        "Lcom/sightcall/core/experiences/wrapper/DigitalFlowWrapper;",
        "createVisualAssistance",
        "visualAssistanceWrapper",
        "Lcom/sightcall/core/experiences/wrapper/VisualAssistanceWrapper;",
        "createSchemeStart",
        "featureWrapper",
        "Lcom/sightcall/core/experiences/wrapper/FeatureWrapper;",
        "createDebug",
        "debugWrapper",
        "Lcom/sightcall/core/experiences/wrapper/DebugWrapper;",
        "createLogin",
        "loginWrapper",
        "Lcom/sightcall/core/experiences/wrapper/LoginWrapper;",
        "getDigitalFlow",
        "Landroidx/fragment/app/Fragment;",
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
.field public static final $stable:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Intent;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/core/experiences/Orchestrator;->createDebug$lambda$0(Landroid/content/Intent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/content/Intent;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/core/experiences/Orchestrator;->createDigitalFlow$lambda$0(Landroid/content/Intent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/content/Intent;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/core/experiences/Orchestrator;->createSchemeStart$lambda$0(Landroid/content/Intent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final createDebug$lambda$0(Landroid/content/Intent;)Lkotlin/Unit;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/core/InitSightcallKt;->getSightCallComponent()Lcom/sightcall/core/di/SightCallComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/core/di/SightCallComponent;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic createDigitalFlow$default(Lcom/sightcall/core/experiences/Orchestrator;Landroid/net/Uri;Ljava/lang/String;Lcom/sightcall/core/experiences/wrapper/DigitalFlowWrapper;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sightcall/core/experiences/Orchestrator;->createDigitalFlow(Landroid/net/Uri;Ljava/lang/String;Lcom/sightcall/core/experiences/wrapper/DigitalFlowWrapper;)V

    return-void
.end method

.method private static final createDigitalFlow$lambda$0(Landroid/content/Intent;)Lkotlin/Unit;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/core/InitSightcallKt;->getSightCallComponent()Lcom/sightcall/core/di/SightCallComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/core/di/SightCallComponent;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final createLogin$lambda$0(Landroid/content/Intent;)Lkotlin/Unit;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/core/InitSightcallKt;->getSightCallComponent()Lcom/sightcall/core/di/SightCallComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/core/di/SightCallComponent;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final createSchemeStart$lambda$0(Landroid/content/Intent;)Lkotlin/Unit;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/core/InitSightcallKt;->getSightCallComponent()Lcom/sightcall/core/di/SightCallComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/core/di/SightCallComponent;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic d(Landroid/content/Intent;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/core/experiences/Orchestrator;->createLogin$lambda$0(Landroid/content/Intent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createDebug(Landroid/net/Uri;Lcom/sightcall/core/experiences/wrapper/DebugWrapper;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lch0;

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lch0;-><init>(I)V

    invoke-interface {p2, p1, p0}, Lcom/sightcall/core/experiences/wrapper/DebugWrapper;->startWithIntent(Landroid/net/Uri;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final createDigitalFlow(Landroid/net/Uri;Ljava/lang/String;Lcom/sightcall/core/experiences/wrapper/DigitalFlowWrapper;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lch0;

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lch0;-><init>(I)V

    invoke-interface {p3, p1, p2, p0}, Lcom/sightcall/core/experiences/wrapper/DigitalFlowWrapper;->startWithIntent(Landroid/net/Uri;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final createLogin(Landroid/net/Uri;Lcom/sightcall/core/experiences/wrapper/LoginWrapper;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lch0;

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lch0;-><init>(I)V

    invoke-interface {p2, p1, p0}, Lcom/sightcall/core/experiences/wrapper/LoginWrapper;->startWithIntent(Landroid/net/Uri;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final createSchemeStart(Landroid/net/Uri;Lcom/sightcall/core/experiences/wrapper/FeatureWrapper;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lch0;

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lch0;-><init>(I)V

    invoke-interface {p2, p1, p0}, Lcom/sightcall/core/experiences/wrapper/FeatureWrapper;->startWithIntent(Landroid/net/Uri;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final createVisualAssistance(Landroid/net/Uri;Lcom/sightcall/core/experiences/wrapper/VisualAssistanceWrapper;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, p1}, Lcom/sightcall/core/experiences/wrapper/VisualAssistanceWrapper;->start(Landroid/net/Uri;)V

    return-void
.end method

.method public final getDigitalFlow(Landroid/net/Uri;Lcom/sightcall/core/experiences/wrapper/DigitalFlowWrapper;)Landroidx/fragment/app/Fragment;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, p1}, Lcom/sightcall/core/experiences/wrapper/DigitalFlowWrapper;->startWithFragment(Landroid/net/Uri;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method
