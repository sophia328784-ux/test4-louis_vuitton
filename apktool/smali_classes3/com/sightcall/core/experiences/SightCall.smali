.class public final Lcom/sightcall/core/experiences/SightCall;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u000e\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\u000b\u001a\u00020\u000cJ\u0010\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0010J\u0006\u0010\u0013\u001a\u00020\u0005J\u0006\u0010\u0014\u001a\u00020\u0005R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/sightcall/core/experiences/SightCall;",
        "",
        "<init>",
        "()V",
        "start",
        "",
        "uri",
        "Landroid/net/Uri;",
        "data",
        "",
        "startVisualAssistance",
        "isVisualAssistanceAvailable",
        "",
        "getExperience",
        "Landroidx/fragment/app/Fragment;",
        "digitalFlowActivityProvider",
        "Lcom/sightcall/core/experiences/wrapper/DigitalFlowActivityProvider;",
        "setDigitalFlowActivity",
        "provider",
        "moveCallActivityToBackground",
        "moveCallActivityToForeground",
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

.field public static final INSTANCE:Lcom/sightcall/core/experiences/SightCall;

.field private static digitalFlowActivityProvider:Lcom/sightcall/core/experiences/wrapper/DigitalFlowActivityProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/core/experiences/SightCall;

    invoke-direct {v0}, Lcom/sightcall/core/experiences/SightCall;-><init>()V

    sput-object v0, Lcom/sightcall/core/experiences/SightCall;->INSTANCE:Lcom/sightcall/core/experiences/SightCall;

    const/16 v0, 0x8

    sput v0, Lcom/sightcall/core/experiences/SightCall;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic start$default(Lcom/sightcall/core/experiences/SightCall;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sightcall/core/experiences/SightCallUnknownUrlException;
        }
    .end annotation

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sightcall/core/experiences/SightCall;->start(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getExperience(Landroid/net/Uri;)Landroidx/fragment/app/Fragment;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sightcall/core/experiences/SightCallUnknownUrlException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/core/InitSightcallKt;->getManager()Lcom/sightcall/core/experiences/Manager;

    move-result-object p0

    invoke-static {p1}, Lcom/sightcall/core/mapper/ExperienceMappersKt;->toExperience(Landroid/net/Uri;)Lcom/sightcall/core/experiences/Experience;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sightcall/core/experiences/Manager;->getExperience$core_release(Lcom/sightcall/core/experiences/Experience;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public final isVisualAssistanceAvailable()Z
    .locals 0

    invoke-static {}, Lcom/sightcall/core/experiences/SdkDiscoverKt;->initVisualAssistanceWrapper()Lcom/sightcall/core/experiences/wrapper/VisualAssistanceWrapper;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final moveCallActivityToBackground()V
    .locals 0

    sget-object p0, Lcom/sightcall/core/experiences/SightCall;->digitalFlowActivityProvider:Lcom/sightcall/core/experiences/wrapper/DigitalFlowActivityProvider;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sightcall/core/experiences/wrapper/DigitalFlowActivityProvider;->moveCallActivityToBackground()V

    :cond_0
    return-void
.end method

.method public final moveCallActivityToForeground()V
    .locals 0

    sget-object p0, Lcom/sightcall/core/experiences/SightCall;->digitalFlowActivityProvider:Lcom/sightcall/core/experiences/wrapper/DigitalFlowActivityProvider;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sightcall/core/experiences/wrapper/DigitalFlowActivityProvider;->moveCallActivityToForeground()V

    :cond_0
    return-void
.end method

.method public final setDigitalFlowActivity(Lcom/sightcall/core/experiences/wrapper/DigitalFlowActivityProvider;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object p1, Lcom/sightcall/core/experiences/SightCall;->digitalFlowActivityProvider:Lcom/sightcall/core/experiences/wrapper/DigitalFlowActivityProvider;

    return-void
.end method

.method public final start(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sightcall/core/experiences/SightCallUnknownUrlException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/core/InitSightcallKt;->getManager()Lcom/sightcall/core/experiences/Manager;

    move-result-object p0

    invoke-static {p1}, Lcom/sightcall/core/mapper/ExperienceMappersKt;->toExperience(Landroid/net/Uri;)Lcom/sightcall/core/experiences/Experience;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/core/experiences/Manager;->start$core_release(Lcom/sightcall/core/experiences/Experience;Ljava/lang/String;)V

    return-void
.end method

.method public final startVisualAssistance(Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sightcall/core/experiences/SightCallUnknownUrlException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/core/InitSightcallKt;->getManager()Lcom/sightcall/core/experiences/Manager;

    move-result-object p0

    invoke-static {p1}, Lcom/sightcall/core/mapper/ExperienceMappersKt;->toVisualAssistance(Landroid/net/Uri;)Lcom/sightcall/core/experiences/Experience$VisualAssistance;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/sightcall/core/experiences/Manager;->start$core_release$default(Lcom/sightcall/core/experiences/Manager;Lcom/sightcall/core/experiences/Experience;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
