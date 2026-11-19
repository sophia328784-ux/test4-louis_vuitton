.class public Lcom/sightcall/universal/guest/Invitation$Conference;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/guest/Invitation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Conference"
.end annotation


# instance fields
.field caseReportId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "case_id"
    .end annotation
.end field

.field expired:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "expired"
    .end annotation
.end field

.field hostId:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "host"
    .end annotation
.end field

.field id:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "id"
    .end annotation
.end field

.field mpi:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "mpi"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
