.class public Lcom/linkplay/bonjour/config/LinkplayConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkplay/bonjour/config/LinkplayConfig$Builder;
    }
.end annotation


# static fields
.field public static bResolveFromCache:Z = false

.field public static bServiceAddByConnectSetup:Z = false

.field public static bWifiChangeProcess:Z = true


# instance fields
.field private resolveFromCache:Z

.field private serviceByConnection:Z

.field private wifiChangedListening:Z


# direct methods
.method private constructor <init>(ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/linkplay/bonjour/config/LinkplayConfig;->serviceByConnection:Z

    iput-boolean p2, p0, Lcom/linkplay/bonjour/config/LinkplayConfig;->wifiChangedListening:Z

    iput-boolean p3, p0, Lcom/linkplay/bonjour/config/LinkplayConfig;->resolveFromCache:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZZLcom/linkplay/bonjour/config/LinkplayConfig$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/linkplay/bonjour/config/LinkplayConfig;-><init>(ZZZ)V

    return-void
.end method


# virtual methods
.method public isResolveFromCache()Z
    .locals 0

    iget-boolean p0, p0, Lcom/linkplay/bonjour/config/LinkplayConfig;->resolveFromCache:Z

    return p0
.end method

.method public isServiceByConnection()Z
    .locals 0

    iget-boolean p0, p0, Lcom/linkplay/bonjour/config/LinkplayConfig;->serviceByConnection:Z

    return p0
.end method

.method public isWifiChangedListening()Z
    .locals 0

    iget-boolean p0, p0, Lcom/linkplay/bonjour/config/LinkplayConfig;->wifiChangedListening:Z

    return p0
.end method
