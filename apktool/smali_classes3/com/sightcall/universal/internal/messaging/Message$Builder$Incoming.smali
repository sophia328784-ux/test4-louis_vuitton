.class public final Lcom/sightcall/universal/internal/messaging/Message$Builder$Incoming;
.super Lcom/sightcall/universal/internal/messaging/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/messaging/Message$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Incoming"
.end annotation


# instance fields
.field private read:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sightcall/universal/internal/messaging/Message$Builder;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/messaging/Message$Builder$Incoming;->read:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/sightcall/universal/internal/messaging/Message$Incoming;
    .locals 7

    new-instance v0, Lcom/sightcall/universal/internal/messaging/Message$Incoming;

    iget-wide v1, p0, Lcom/sightcall/universal/internal/messaging/Message$Builder;->timestamp:J

    iget-object v3, p0, Lcom/sightcall/universal/internal/messaging/Message$Builder;->uid:Ljava/lang/String;

    iget-object v4, p0, Lcom/sightcall/universal/internal/messaging/Message$Builder;->content:Ljava/lang/String;

    iget-object v5, p0, Lcom/sightcall/universal/internal/messaging/Message$Builder;->role:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/sightcall/universal/internal/messaging/Message$Incoming;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/messaging/Message$Builder$Incoming;->read:Z

    invoke-static {v0, p0}, Lcom/sightcall/universal/internal/messaging/Message$Incoming;->a(Lcom/sightcall/universal/internal/messaging/Message$Incoming;Z)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/sightcall/universal/internal/messaging/Message;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/sightcall/universal/internal/messaging/Message$Builder$Incoming;->build()Lcom/sightcall/universal/internal/messaging/Message$Incoming;

    move-result-object p0

    return-object p0
.end method

.method public content(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Builder$Incoming;
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/sightcall/universal/internal/messaging/Message$Builder;->content(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Builder;

    return-object p0
.end method

.method public bridge synthetic content(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/messaging/Message$Builder$Incoming;->content(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Builder$Incoming;

    move-result-object p0

    return-object p0
.end method

.method public read(Z)Lcom/sightcall/universal/internal/messaging/Message$Builder$Incoming;
    .locals 0

    iput-boolean p1, p0, Lcom/sightcall/universal/internal/messaging/Message$Builder$Incoming;->read:Z

    return-object p0
.end method

.method public role(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Builder$Incoming;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/sightcall/universal/internal/messaging/Message$Builder;->role:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic role(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/messaging/Message$Builder$Incoming;->role(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Builder$Incoming;

    move-result-object p0

    return-object p0
.end method

.method public timestamp(J)Lcom/sightcall/universal/internal/messaging/Message$Builder$Incoming;
    .locals 0

    .line 5
    invoke-super {p0, p1, p2}, Lcom/sightcall/universal/internal/messaging/Message$Builder;->timestamp(J)Lcom/sightcall/universal/internal/messaging/Message$Builder;

    return-object p0
.end method

.method public bridge synthetic timestamp(J)Lcom/sightcall/universal/internal/messaging/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/universal/internal/messaging/Message$Builder$Incoming;->timestamp(J)Lcom/sightcall/universal/internal/messaging/Message$Builder$Incoming;

    move-result-object p0

    return-object p0
.end method

.method public uid(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Builder$Incoming;
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/sightcall/universal/internal/messaging/Message$Builder;->uid(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Builder;

    return-object p0
.end method

.method public bridge synthetic uid(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/messaging/Message$Builder$Incoming;->uid(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Builder$Incoming;

    move-result-object p0

    return-object p0
.end method
