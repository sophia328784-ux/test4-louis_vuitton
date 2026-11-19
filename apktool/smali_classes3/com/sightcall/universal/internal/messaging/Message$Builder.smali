.class public abstract Lcom/sightcall/universal/internal/messaging/Message$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/messaging/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;,
        Lcom/sightcall/universal/internal/messaging/Message$Builder$Incoming;
    }
.end annotation


# instance fields
.field protected content:Ljava/lang/String;

.field protected role:Ljava/lang/String;

.field protected timestamp:J

.field protected uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sightcall/universal/internal/messaging/Message$Builder;->timestamp:J

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/sightcall/universal/internal/messaging/Message;
.end method

.method public content(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/messaging/Message$Builder;->content:Ljava/lang/String;

    return-object p0
.end method

.method public role(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/messaging/Message$Builder;->role:Ljava/lang/String;

    return-object p0
.end method

.method public timestamp(J)Lcom/sightcall/universal/internal/messaging/Message$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/sightcall/universal/internal/messaging/Message$Builder;->timestamp:J

    return-object p0
.end method

.method public uid(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/messaging/Message$Builder;->uid:Ljava/lang/String;

    return-object p0
.end method
