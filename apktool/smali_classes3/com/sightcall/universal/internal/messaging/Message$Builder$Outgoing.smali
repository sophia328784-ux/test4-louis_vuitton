.class public final Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;
.super Lcom/sightcall/universal/internal/messaging/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/messaging/Message$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Outgoing"
.end annotation


# instance fields
.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/messaging/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/sightcall/universal/internal/messaging/Message$Outgoing;
    .locals 7

    new-instance v0, Lcom/sightcall/universal/internal/messaging/Message$Outgoing;

    iget-wide v1, p0, Lcom/sightcall/universal/internal/messaging/Message$Builder;->timestamp:J

    iget-object v3, p0, Lcom/sightcall/universal/internal/messaging/Message$Builder;->uid:Ljava/lang/String;

    iget-object v4, p0, Lcom/sightcall/universal/internal/messaging/Message$Builder;->content:Ljava/lang/String;

    iget-object v5, p0, Lcom/sightcall/universal/internal/messaging/Message$Builder;->role:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/sightcall/universal/internal/messaging/Message$Outgoing;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;->success:Z

    invoke-static {v0, p0}, Lcom/sightcall/universal/internal/messaging/Message$Outgoing;->a(Lcom/sightcall/universal/internal/messaging/Message$Outgoing;Z)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/sightcall/universal/internal/messaging/Message;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;->build()Lcom/sightcall/universal/internal/messaging/Message$Outgoing;

    move-result-object p0

    return-object p0
.end method

.method public content(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/sightcall/universal/internal/messaging/Message$Builder;->content(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Builder;

    return-object p0
.end method

.method public bridge synthetic content(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;->content(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;

    move-result-object p0

    return-object p0
.end method

.method public role(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/sightcall/universal/internal/messaging/Message$Builder;->role:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic role(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;->role(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;

    move-result-object p0

    return-object p0
.end method

.method public success(Z)Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;
    .locals 0

    iput-boolean p1, p0, Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;->success:Z

    return-object p0
.end method

.method public timestamp(J)Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;
    .locals 0

    .line 5
    invoke-super {p0, p1, p2}, Lcom/sightcall/universal/internal/messaging/Message$Builder;->timestamp(J)Lcom/sightcall/universal/internal/messaging/Message$Builder;

    return-object p0
.end method

.method public bridge synthetic timestamp(J)Lcom/sightcall/universal/internal/messaging/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;->timestamp(J)Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;

    move-result-object p0

    return-object p0
.end method

.method public uid(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/sightcall/universal/internal/messaging/Message$Builder;->uid(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Builder;

    return-object p0
.end method

.method public bridge synthetic uid(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;->uid(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;

    move-result-object p0

    return-object p0
.end method
