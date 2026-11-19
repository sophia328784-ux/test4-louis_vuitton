.class Lcom/sightcall/universal/guest/AgentHttpAcd$Cancel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/guest/AgentHttpAcd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cancel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/guest/AgentHttpAcd$Cancel$Data;
    }
.end annotation


# instance fields
.field private final data:Lcom/sightcall/universal/guest/AgentHttpAcd$Cancel$Data;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "agent_request"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sightcall/universal/guest/AgentHttpAcd$Cancel$Data;

    invoke-direct {v0, p1}, Lcom/sightcall/universal/guest/AgentHttpAcd$Cancel$Data;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sightcall/universal/guest/AgentHttpAcd$Cancel;->data:Lcom/sightcall/universal/guest/AgentHttpAcd$Cancel$Data;

    return-void
.end method
