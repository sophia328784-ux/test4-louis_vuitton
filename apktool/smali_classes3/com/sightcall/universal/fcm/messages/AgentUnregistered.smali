.class public Lcom/sightcall/universal/fcm/messages/AgentUnregistered;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY:Ljava/lang/String; = "agent-unregistered"


# instance fields
.field private token:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "authorization-token"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public relatesTo(Lcom/sightcall/universal/agent/Agent;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/fcm/messages/AgentUnregistered;->token:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/Agent;->token()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public token()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/fcm/messages/AgentUnregistered;->token:Ljava/lang/String;

    return-object p0
.end method
