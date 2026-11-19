.class Lcom/sightcall/universal/media/MediaExporter$1$1;
.super Lcom/sightcall/universal/media/MediaExporter$BackgroundJob;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/media/MediaExporter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sightcall/universal/media/MediaExporter$1;

.field final synthetic val$mediaList:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/media/MediaExporter$1;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/media/MediaExporter$1$1;->this$1:Lcom/sightcall/universal/media/MediaExporter$1;

    iput-object p2, p0, Lcom/sightcall/universal/media/MediaExporter$1$1;->val$mediaList:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/media/MediaExporter$BackgroundJob;-><init>(I)V

    return-void
.end method


# virtual methods
.method public doInBackground()V
    .locals 8

    iget-object v0, p0, Lcom/sightcall/universal/media/MediaExporter$1$1;->this$1:Lcom/sightcall/universal/media/MediaExporter$1;

    iget-object v0, v0, Lcom/sightcall/universal/media/MediaExporter$1;->this$0:Lcom/sightcall/universal/media/MediaExporter;

    invoke-static {v0}, Lcom/sightcall/universal/media/MediaExporter;->a(Lcom/sightcall/universal/media/MediaExporter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sightcall/universal/R$bool;->universal_feature_media_export_meta:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iget-object v1, p0, Lcom/sightcall/universal/media/MediaExporter$1$1;->this$1:Lcom/sightcall/universal/media/MediaExporter$1;

    iget-object v1, v1, Lcom/sightcall/universal/media/MediaExporter$1;->this$0:Lcom/sightcall/universal/media/MediaExporter;

    invoke-static {v1}, Lcom/sightcall/universal/media/MediaExporter;->a(Lcom/sightcall/universal/media/MediaExporter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sightcall/universal/R$bool;->universal_feature_media_export_scan:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sightcall/universal/media/MediaExporter$1$1;->val$mediaList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v3, p0, Lcom/sightcall/universal/media/MediaExporter$1$1;->val$mediaList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sightcall/universal/media/Media;

    invoke-virtual {v4}, Lcom/sightcall/universal/media/Media;->metadata()Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Lcom/sightcall/universal/internal/util/Utils;->readFileAsString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sightcall/universal/media/Metadata;->fromJson(Ljava/lang/String;)Lcom/sightcall/universal/media/Metadata;

    move-result-object v5

    :try_start_0
    iget-object v6, p0, Lcom/sightcall/universal/media/MediaExporter$1$1;->this$1:Lcom/sightcall/universal/media/MediaExporter$1;

    iget-object v6, v6, Lcom/sightcall/universal/media/MediaExporter$1;->this$0:Lcom/sightcall/universal/media/MediaExporter;

    invoke-static {v6, v4, v5, v0}, Lcom/sightcall/universal/media/MediaExporter;->c(Lcom/sightcall/universal/media/MediaExporter;Lcom/sightcall/universal/media/Media;Lcom/sightcall/universal/media/Metadata;Z)Lcom/sightcall/universal/media/Media;

    move-result-object v4

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v6

    invoke-virtual {v6}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v6

    new-instance v7, Lcom/sightcall/universal/media/MediaExportEvent;

    invoke-direct {v7, v4, v5}, Lcom/sightcall/universal/media/MediaExportEvent;-><init>(Lcom/sightcall/universal/media/Media;Lcom/sightcall/universal/media/Metadata;)V

    invoke-virtual {v6, v7}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/sightcall/universal/media/Media;->image()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-static {}, Lcom/sightcall/universal/media/MediaExporter;->e()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v5

    invoke-virtual {v5, v4}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sightcall/universal/media/MediaExporter$1$1;->this$1:Lcom/sightcall/universal/media/MediaExporter$1;

    iget-object p0, p0, Lcom/sightcall/universal/media/MediaExporter$1;->this$0:Lcom/sightcall/universal/media/MediaExporter;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sightcall/universal/media/MediaExporter;->d(Lcom/sightcall/universal/media/MediaExporter;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method
