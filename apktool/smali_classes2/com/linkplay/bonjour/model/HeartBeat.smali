.class public Lcom/linkplay/bonjour/model/HeartBeat;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private heart:Ljava/lang/String;

.field private time:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/linkplay/bonjour/model/HeartBeat;->time:J

    const-string v0, "heart"

    iput-object v0, p0, Lcom/linkplay/bonjour/model/HeartBeat;->heart:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/linkplay/bonjour/model/HeartBeat;->time:J

    return-void
.end method


# virtual methods
.method public getHeart()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/HeartBeat;->heart:Ljava/lang/String;

    return-object p0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/linkplay/bonjour/model/HeartBeat;->time:J

    return-wide v0
.end method

.method public setHeart(Ljava/lang/String;)Lcom/linkplay/bonjour/model/HeartBeat;
    .locals 0

    iput-object p1, p0, Lcom/linkplay/bonjour/model/HeartBeat;->heart:Ljava/lang/String;

    return-object p0
.end method

.method public setTime(J)Lcom/linkplay/bonjour/model/HeartBeat;
    .locals 0

    iput-wide p1, p0, Lcom/linkplay/bonjour/model/HeartBeat;->time:J

    return-object p0
.end method
