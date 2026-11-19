.class public Lcom/sightcall/universal/ar/ArPictureUpload$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/ar/ArPictureUpload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final base64:Ljava/lang/String;

.field private final caseReportId:Ljava/lang/String;

.field private lat:Ljava/lang/Double;

.field private lng:Ljava/lang/Double;

.field private measures:[Lcom/sightcall/universal/ar/ArPosition;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/ar/ArPictureUpload$Builder;->caseReportId:Ljava/lang/String;

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x5a

    invoke-virtual {p2, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/ar/ArPictureUpload$Builder;->base64:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/sightcall/universal/ar/ArPictureUpload;
    .locals 6

    new-instance v0, Lcom/sightcall/universal/ar/ArPictureUpload$Attributes;

    iget-object v1, p0, Lcom/sightcall/universal/ar/ArPictureUpload$Builder;->base64:Ljava/lang/String;

    iget-object v2, p0, Lcom/sightcall/universal/ar/ArPictureUpload$Builder;->caseReportId:Ljava/lang/String;

    iget-object v3, p0, Lcom/sightcall/universal/ar/ArPictureUpload$Builder;->lat:Ljava/lang/Double;

    iget-object v4, p0, Lcom/sightcall/universal/ar/ArPictureUpload$Builder;->lng:Ljava/lang/Double;

    iget-object v5, p0, Lcom/sightcall/universal/ar/ArPictureUpload$Builder;->measures:[Lcom/sightcall/universal/ar/ArPosition;

    invoke-direct/range {v0 .. v5}, Lcom/sightcall/universal/ar/ArPictureUpload$Attributes;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;[Lcom/sightcall/universal/ar/ArPosition;)V

    new-instance p0, Lcom/sightcall/universal/ar/ArPictureUpload;

    invoke-direct {p0, v0}, Lcom/sightcall/universal/ar/ArPictureUpload;-><init>(Lcom/sightcall/universal/ar/ArPictureUpload$Attributes;)V

    return-object p0
.end method

.method public latLng(Ljava/lang/Double;Ljava/lang/Double;)Lcom/sightcall/universal/ar/ArPictureUpload$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/ar/ArPictureUpload$Builder;->lat:Ljava/lang/Double;

    iput-object p2, p0, Lcom/sightcall/universal/ar/ArPictureUpload$Builder;->lng:Ljava/lang/Double;

    return-object p0
.end method

.method public measures([Lcom/sightcall/universal/ar/ArPosition;)Lcom/sightcall/universal/ar/ArPictureUpload$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/ar/ArPictureUpload$Builder;->measures:[Lcom/sightcall/universal/ar/ArPosition;

    return-object p0
.end method
