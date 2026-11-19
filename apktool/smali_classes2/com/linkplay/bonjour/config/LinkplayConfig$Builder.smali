.class public Lcom/linkplay/bonjour/config/LinkplayConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linkplay/bonjour/config/LinkplayConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private resolveFromCache:Z

.field private serviceByConnection:Z

.field private wifiChangedListening:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/linkplay/bonjour/config/LinkplayConfig$Builder;->serviceByConnection:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/linkplay/bonjour/config/LinkplayConfig$Builder;->wifiChangedListening:Z

    iput-boolean v0, p0, Lcom/linkplay/bonjour/config/LinkplayConfig$Builder;->resolveFromCache:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/linkplay/bonjour/config/LinkplayConfig;
    .locals 4

    new-instance v0, Lcom/linkplay/bonjour/config/LinkplayConfig;

    iget-boolean v1, p0, Lcom/linkplay/bonjour/config/LinkplayConfig$Builder;->serviceByConnection:Z

    iget-boolean v2, p0, Lcom/linkplay/bonjour/config/LinkplayConfig$Builder;->wifiChangedListening:Z

    iget-boolean p0, p0, Lcom/linkplay/bonjour/config/LinkplayConfig$Builder;->resolveFromCache:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/linkplay/bonjour/config/LinkplayConfig;-><init>(ZZZLcom/linkplay/bonjour/config/LinkplayConfig$1;)V

    return-object v0
.end method

.method public setResolveFromCache(Z)Lcom/linkplay/bonjour/config/LinkplayConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/linkplay/bonjour/config/LinkplayConfig$Builder;->resolveFromCache:Z

    return-object p0
.end method

.method public setServiceByConnection(Z)Lcom/linkplay/bonjour/config/LinkplayConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/linkplay/bonjour/config/LinkplayConfig$Builder;->serviceByConnection:Z

    return-object p0
.end method

.method public setWifiChangedListening(Z)Lcom/linkplay/bonjour/config/LinkplayConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/linkplay/bonjour/config/LinkplayConfig$Builder;->wifiChangedListening:Z

    return-object p0
.end method
