.class public Lcom/networkbench/agent/impl/harvest/ScreenNameManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static currentActivityName:Ljava/lang/String; = ""

.field private static currentFragmentName:Ljava/lang/String; = ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCurrentFragmentName()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->currentFragmentName:Ljava/lang/String;

    return-void
.end method

.method public static getCurrentActivityName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->currentActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentFragmentName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->currentFragmentName:Ljava/lang/String;

    return-object v0
.end method

.method public static final getCurrentScreenName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->currentFragmentName:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->currentActivityName:Ljava/lang/String;

    return-object v0

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->currentFragmentName:Ljava/lang/String;

    return-object v0
.end method

.method public static setCurrentActivityName(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    if-nez p0, :cond_0

    move-object p0, v0

    :cond_0
    sput-object p0, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->currentActivityName:Ljava/lang/String;

    sput-object v0, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->currentFragmentName:Ljava/lang/String;

    return-void
.end method

.method public static setCurrentFragmentName(Ljava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    sput-object p0, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->currentFragmentName:Ljava/lang/String;

    return-void
.end method
