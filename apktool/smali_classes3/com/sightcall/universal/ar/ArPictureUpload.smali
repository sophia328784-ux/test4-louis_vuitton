.class public Lcom/sightcall/universal/ar/ArPictureUpload;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/api/JsonApi$Included;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/ar/ArPictureUpload$Attributes;,
        Lcom/sightcall/universal/ar/ArPictureUpload$Builder;
    }
.end annotation


# instance fields
.field final attributes:Lcom/sightcall/universal/ar/ArPictureUpload$Attributes;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "attributes"
    .end annotation
.end field

.field final id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "id"
    .end annotation
.end field

.field final type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "type"
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lcom/sightcall/universal/ar/ArPictureUpload$Attributes;)V
    .locals 1

    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sightcall/universal/ar/ArPictureUpload;-><init>(Ljava/lang/String;Lcom/sightcall/universal/ar/ArPictureUpload$Attributes;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sightcall/universal/ar/ArPictureUpload$Attributes;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "upload-pictures"

    iput-object v0, p0, Lcom/sightcall/universal/ar/ArPictureUpload;->type:Ljava/lang/String;

    iput-object p1, p0, Lcom/sightcall/universal/ar/ArPictureUpload;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/sightcall/universal/ar/ArPictureUpload;->attributes:Lcom/sightcall/universal/ar/ArPictureUpload$Attributes;

    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/ar/ArPictureUpload;->id:Ljava/lang/String;

    return-object p0
.end method

.method public type()Ljava/lang/String;
    .locals 0

    const-string p0, "upload-pictures"

    return-object p0
.end method
