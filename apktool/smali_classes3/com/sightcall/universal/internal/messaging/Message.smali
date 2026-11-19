.class public abstract Lcom/sightcall/universal/internal/messaging/Message;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/messaging/Message$Builder;,
        Lcom/sightcall/universal/internal/messaging/Message$Outgoing;,
        Lcom/sightcall/universal/internal/messaging/Message$Incoming;
    }
.end annotation


# instance fields
.field protected final content:Ljava/lang/String;

.field protected final role:Ljava/lang/String;

.field protected final timestamp:J

.field protected final uid:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sightcall/universal/internal/messaging/Message;->timestamp:J

    iput-object p3, p0, Lcom/sightcall/universal/internal/messaging/Message;->uid:Ljava/lang/String;

    iput-object p4, p0, Lcom/sightcall/universal/internal/messaging/Message;->content:Ljava/lang/String;

    iput-object p5, p0, Lcom/sightcall/universal/internal/messaging/Message;->role:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 12
    invoke-direct/range {p0 .. p5}, Lcom/sightcall/universal/internal/messaging/Message;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static newIncomingMessage()Lcom/sightcall/universal/internal/messaging/Message$Builder$Incoming;
    .locals 1

    new-instance v0, Lcom/sightcall/universal/internal/messaging/Message$Builder$Incoming;

    invoke-direct {v0}, Lcom/sightcall/universal/internal/messaging/Message$Builder$Incoming;-><init>()V

    return-object v0
.end method

.method public static newOutgoingMessage()Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;
    .locals 1

    new-instance v0, Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;

    invoke-direct {v0}, Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;-><init>()V

    return-object v0
.end method


# virtual methods
.method public content()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/Message;->content:Ljava/lang/String;

    return-object p0
.end method

.method public role()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/Message;->role:Ljava/lang/String;

    return-object p0
.end method

.method public timestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/sightcall/universal/internal/messaging/Message;->timestamp:J

    return-wide v0
.end method

.method public uid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/Message;->uid:Ljava/lang/String;

    return-object p0
.end method
