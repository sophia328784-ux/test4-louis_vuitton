.class public Lcom/sightcall/universal/guest/AgentHttpAcd$Request$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/guest/AgentHttpAcd$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field caseId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "case"
    .end annotation
.end field

.field clientMode:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "clientMode"
    .end annotation
.end field

.field device:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "device"
    .end annotation
.end field

.field os:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "os"
    .end annotation
.end field

.field partner:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "partner"
    .end annotation
.end field

.field productId:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "product"
    .end annotation
.end field

.field reference:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "reference"
    .end annotation
.end field

.field status:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "status"
    .end annotation
.end field

.field uid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "uid"
    .end annotation
.end field

.field usecaseId:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "usecase"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "attendee_request"

    iput-object v0, p0, Lcom/sightcall/universal/guest/AgentHttpAcd$Request$Data;->status:Ljava/lang/String;

    const-string v0, "mobileApp"

    iput-object v0, p0, Lcom/sightcall/universal/guest/AgentHttpAcd$Request$Data;->clientMode:Ljava/lang/String;

    const-string v0, "android"

    iput-object v0, p0, Lcom/sightcall/universal/guest/AgentHttpAcd$Request$Data;->os:Ljava/lang/String;

    iput-object p2, p0, Lcom/sightcall/universal/guest/AgentHttpAcd$Request$Data;->partner:Ljava/lang/String;

    iput-object p3, p0, Lcom/sightcall/universal/guest/AgentHttpAcd$Request$Data;->uid:Ljava/lang/String;

    iput p4, p0, Lcom/sightcall/universal/guest/AgentHttpAcd$Request$Data;->usecaseId:I

    iput p5, p0, Lcom/sightcall/universal/guest/AgentHttpAcd$Request$Data;->productId:I

    iput-object p6, p0, Lcom/sightcall/universal/guest/AgentHttpAcd$Request$Data;->reference:Ljava/lang/String;

    iput-object p7, p0, Lcom/sightcall/universal/guest/AgentHttpAcd$Request$Data;->caseId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 p2, 0x258

    if-lt p1, p2, :cond_0

    const-string p1, "tablet"

    goto :goto_0

    :cond_0
    const-string p1, "mobile"

    :goto_0
    iput-object p1, p0, Lcom/sightcall/universal/guest/AgentHttpAcd$Request$Data;->device:Ljava/lang/String;

    return-void
.end method
