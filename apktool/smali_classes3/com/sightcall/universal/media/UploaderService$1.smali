.class Lcom/sightcall/universal/media/UploaderService$1;
.super Lcom/sightcall/universal/media/GroupClient$GroupCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/media/UploaderService;->createGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/media/UploaderService;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/media/UploaderService;Lcom/sightcall/universal/media/Metadata;Lcom/sightcall/universal/media/PictureGroupV3Request;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/media/UploaderService$1;->this$0:Lcom/sightcall/universal/media/UploaderService;

    invoke-direct {p0, p2, p3}, Lcom/sightcall/universal/media/GroupClient$GroupCallback;-><init>(Lcom/sightcall/universal/media/Metadata;Lcom/sightcall/universal/media/PictureGroupV3Request;)V

    return-void
.end method

.method public static synthetic b(Lcom/sightcall/universal/media/UploaderService$1;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/media/UploaderService$1;->lambda$onGroupSuccess$0(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$onGroupSuccess$0(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/UploaderService$1;->this$0:Lcom/sightcall/universal/media/UploaderService;

    invoke-static {p0}, Lcom/sightcall/universal/media/UploaderService;->d(Lcom/sightcall/universal/media/UploaderService;)V

    return-void
.end method


# virtual methods
.method public onGroupFailure()V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/sightcall/universal/media/GroupClient$GroupCallback;->replayRequest(Lcom/sightcall/universal/media/GroupClient$GroupCallback;)V

    return-void
.end method

.method public onGroupSuccess(Ljava/lang/String;Lcom/sightcall/universal/media/PictureGroupV3Response;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sightcall/universal/media/UploaderService$1;->this$0:Lcom/sightcall/universal/media/UploaderService;

    iget-object v1, v1, Lcom/sightcall/universal/media/UploaderService;->metadataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sightcall/universal/media/Metadata;

    invoke-virtual {v2}, Lcom/sightcall/universal/media/Metadata;->localGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lcom/sightcall/universal/media/PictureGroupV3Response;->getData()Lcom/sightcall/universal/media/PictureGroupV3Response$Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sightcall/universal/media/PictureGroupV3Response$Data;->getAttributes()Lcom/sightcall/universal/media/PictureGroupV3Response$Data$Attributes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sightcall/universal/media/PictureGroupV3Response$Data$Attributes;->getUploadToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sightcall/universal/media/Metadata;->setUploadToken(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sightcall/universal/media/PictureGroupV3Response;->getData()Lcom/sightcall/universal/media/PictureGroupV3Response$Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sightcall/universal/media/PictureGroupV3Response$Data;->getAttributes()Lcom/sightcall/universal/media/PictureGroupV3Response$Data$Attributes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sightcall/universal/media/PictureGroupV3Response$Data$Attributes;->getUploadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sightcall/universal/media/Metadata;->setUploadUrl(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/sightcall/universal/media/UploaderService$OverwriteMetadataTask;

    iget-object p2, p0, Lcom/sightcall/universal/media/UploaderService$1;->this$0:Lcom/sightcall/universal/media/UploaderService;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance v1, Lcom/sightcall/universal/media/b;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/media/b;-><init>(Lcom/sightcall/universal/media/UploaderService$1;)V

    invoke-direct {p1, p2, v0, v1}, Lcom/sightcall/universal/media/UploaderService$OverwriteMetadataTask;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/sightcall/universal/media/UploaderService$OverwriteMetadataTask$Callback;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
