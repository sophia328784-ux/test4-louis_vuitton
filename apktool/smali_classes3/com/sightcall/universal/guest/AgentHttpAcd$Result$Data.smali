.class public Lcom/sightcall/universal/guest/AgentHttpAcd$Result$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/guest/AgentHttpAcd$Result;
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

.field public estimatedTime:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "waiting_time"
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "id"
    .end annotation
.end field

.field public partner:Ljava/lang/String;
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

.field public status:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "status"
    .end annotation
.end field

.field uid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "uid"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
