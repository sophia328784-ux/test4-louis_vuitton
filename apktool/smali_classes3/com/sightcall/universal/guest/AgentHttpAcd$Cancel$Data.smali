.class public Lcom/sightcall/universal/guest/AgentHttpAcd$Cancel$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/guest/AgentHttpAcd$Cancel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "id"
    .end annotation
.end field

.field status:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "attendee_cancel"

    iput-object v0, p0, Lcom/sightcall/universal/guest/AgentHttpAcd$Cancel$Data;->status:Ljava/lang/String;

    iput-object p1, p0, Lcom/sightcall/universal/guest/AgentHttpAcd$Cancel$Data;->id:Ljava/lang/String;

    return-void
.end method
