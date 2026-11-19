.class Lcom/sightcall/universal/media/PictureGroup$Request$Data$Attributes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/media/PictureGroup$Request$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attributes"
.end annotation


# instance fields
.field final caseReportId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "case-id"
    .end annotation
.end field

.field final count:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "count"
    .end annotation
.end field

.field final reference:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "reference"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/media/Metadata;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/sightcall/universal/media/Metadata;->reference:Ljava/lang/String;

    iput-object v0, p0, Lcom/sightcall/universal/media/PictureGroup$Request$Data$Attributes;->reference:Ljava/lang/String;

    iget-object p1, p1, Lcom/sightcall/universal/media/Metadata;->caseReportId:Ljava/lang/String;

    iput-object p1, p0, Lcom/sightcall/universal/media/PictureGroup$Request$Data$Attributes;->caseReportId:Ljava/lang/String;

    iput p2, p0, Lcom/sightcall/universal/media/PictureGroup$Request$Data$Attributes;->count:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{count:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sightcall/universal/media/PictureGroup$Request$Data$Attributes;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "case-id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sightcall/universal/media/PictureGroup$Request$Data$Attributes;->caseReportId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "reference:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sightcall/universal/media/PictureGroup$Request$Data$Attributes;->reference:Ljava/lang/String;

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Lfc;->l(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
