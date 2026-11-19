.class public final Lcom/sightcall/universal/internal/model/DataChannelParser$Messaging;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/model/DataChannelParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Messaging"
.end annotation


# instance fields
.field private final content:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "msg"
    .end annotation
.end field

.field private final role:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "role"
    .end annotation
.end field

.field private final uid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "from"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/model/DataChannelParser$Messaging;->content:Ljava/lang/String;

    iput-object p2, p0, Lcom/sightcall/universal/internal/model/DataChannelParser$Messaging;->uid:Ljava/lang/String;

    iput-object p3, p0, Lcom/sightcall/universal/internal/model/DataChannelParser$Messaging;->role:Ljava/lang/String;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Incoming;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-class v1, Lcom/sightcall/universal/internal/model/DataChannelParser$Messaging;

    invoke-static {v1, p0}, Lcom/sightcall/universal/model/Moshi;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/internal/model/DataChannelParser$Messaging;

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-static {}, Lcom/sightcall/universal/internal/messaging/Message;->newIncomingMessage()Lcom/sightcall/universal/internal/messaging/Message$Builder$Incoming;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/model/DataChannelParser$Messaging;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/internal/messaging/Message$Builder$Incoming;->content(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Builder$Incoming;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/model/DataChannelParser$Messaging;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/internal/messaging/Message$Builder$Incoming;->uid(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Builder$Incoming;

    move-result-object v0

    iget-object p0, p0, Lcom/sightcall/universal/internal/model/DataChannelParser$Messaging;->role:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/internal/messaging/Message$Builder$Incoming;->role(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Builder$Incoming;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/messaging/Message$Builder$Incoming;->build()Lcom/sightcall/universal/internal/messaging/Message$Incoming;

    move-result-object p0

    return-object p0
.end method

.method public static toJson(Lcom/sightcall/universal/internal/messaging/Message$Outgoing;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/sightcall/universal/internal/model/DataChannelParser$Messaging;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/messaging/Message;->content()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/messaging/Message;->uid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/messaging/Message;->role()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/sightcall/universal/internal/model/DataChannelParser$Messaging;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-class p0, Lcom/sightcall/universal/internal/model/DataChannelParser$Messaging;

    invoke-static {p0, v0}, Lcom/sightcall/universal/model/Moshi;->toJson(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
