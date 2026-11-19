.class public Lcom/sightcall/universal/media/PictureGroup$Request$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/media/PictureGroup$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/media/PictureGroup$Request$Data$Attributes;,
        Lcom/sightcall/universal/media/PictureGroup$Request$Data$Relationships;
    }
.end annotation


# instance fields
.field private final attributes:Lcom/sightcall/universal/media/PictureGroup$Request$Data$Attributes;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "attributes"
    .end annotation
.end field

.field private final relationships:Lcom/sightcall/universal/media/PictureGroup$Request$Data$Relationships;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "relationships"
    .end annotation
.end field

.field private final type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/media/Metadata;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "upload-picture-groups"

    iput-object v0, p0, Lcom/sightcall/universal/media/PictureGroup$Request$Data;->type:Ljava/lang/String;

    new-instance v0, Lcom/sightcall/universal/media/PictureGroup$Request$Data$Attributes;

    invoke-direct {v0, p1, p2}, Lcom/sightcall/universal/media/PictureGroup$Request$Data$Attributes;-><init>(Lcom/sightcall/universal/media/Metadata;I)V

    iput-object v0, p0, Lcom/sightcall/universal/media/PictureGroup$Request$Data;->attributes:Lcom/sightcall/universal/media/PictureGroup$Request$Data$Attributes;

    new-instance p2, Lcom/sightcall/universal/media/PictureGroup$Request$Data$Relationships;

    invoke-direct {p2, p1}, Lcom/sightcall/universal/media/PictureGroup$Request$Data$Relationships;-><init>(Lcom/sightcall/universal/media/Metadata;)V

    iput-object p2, p0, Lcom/sightcall/universal/media/PictureGroup$Request$Data;->relationships:Lcom/sightcall/universal/media/PictureGroup$Request$Data$Relationships;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{attributes:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sightcall/universal/media/PictureGroup$Request$Data;->attributes:Lcom/sightcall/universal/media/PictureGroup$Request$Data$Attributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "relationships:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sightcall/universal/media/PictureGroup$Request$Data;->relationships:Lcom/sightcall/universal/media/PictureGroup$Request$Data$Relationships;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
