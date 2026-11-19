.class public Lcom/sightcall/universal/media/Upload$Request;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/media/Upload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/media/Upload$Request$Data;
    }
.end annotation


# instance fields
.field final data:Lcom/sightcall/universal/media/Upload$Request$Data;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "uploadPicture"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/media/Metadata;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sightcall/universal/media/Upload$Request$Data;

    invoke-direct {v0, p1, p2}, Lcom/sightcall/universal/media/Upload$Request$Data;-><init>(Lcom/sightcall/universal/media/Metadata;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sightcall/universal/media/Upload$Request;->data:Lcom/sightcall/universal/media/Upload$Request$Data;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request{data="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sightcall/universal/media/Upload$Request;->data:Lcom/sightcall/universal/media/Upload$Request$Data;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
