.class Lcom/sightcall/universal/ar/ArPictureUpload$Attributes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/ar/ArPictureUpload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attributes"
.end annotation


# instance fields
.field final base64:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "content"
    .end annotation
.end field

.field final caseReportId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "case-id"
    .end annotation
.end field

.field final lat:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "latitude"
    .end annotation
.end field

.field final lng:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "longitude"
    .end annotation
.end field

.field final measures:[Lcom/sightcall/universal/ar/ArPosition;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "measures"
    .end annotation
.end field

.field final origin:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "origin"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;[Lcom/sightcall/universal/ar/ArPosition;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "measure"

    iput-object v0, p0, Lcom/sightcall/universal/ar/ArPictureUpload$Attributes;->origin:Ljava/lang/String;

    iput-object p1, p0, Lcom/sightcall/universal/ar/ArPictureUpload$Attributes;->base64:Ljava/lang/String;

    iput-object p2, p0, Lcom/sightcall/universal/ar/ArPictureUpload$Attributes;->caseReportId:Ljava/lang/String;

    iput-object p3, p0, Lcom/sightcall/universal/ar/ArPictureUpload$Attributes;->lat:Ljava/lang/Double;

    iput-object p4, p0, Lcom/sightcall/universal/ar/ArPictureUpload$Attributes;->lng:Ljava/lang/Double;

    iput-object p5, p0, Lcom/sightcall/universal/ar/ArPictureUpload$Attributes;->measures:[Lcom/sightcall/universal/ar/ArPosition;

    return-void
.end method
