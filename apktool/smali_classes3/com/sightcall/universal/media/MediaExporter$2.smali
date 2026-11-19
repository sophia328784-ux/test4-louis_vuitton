.class Lcom/sightcall/universal/media/MediaExporter$2;
.super Lcom/sightcall/universal/media/MediaExporter$BackgroundJob;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/media/MediaExporter;->onMediaSavedEvent(Lcom/sightcall/universal/media/MediaSavedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/media/MediaExporter;

.field final synthetic val$event:Lcom/sightcall/universal/media/MediaSavedEvent;

.field final synthetic val$metadata:Lcom/sightcall/universal/media/Metadata;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/media/MediaExporter;Lcom/sightcall/universal/media/MediaSavedEvent;Lcom/sightcall/universal/media/Metadata;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/media/MediaExporter$2;->this$0:Lcom/sightcall/universal/media/MediaExporter;

    iput-object p2, p0, Lcom/sightcall/universal/media/MediaExporter$2;->val$event:Lcom/sightcall/universal/media/MediaSavedEvent;

    iput-object p3, p0, Lcom/sightcall/universal/media/MediaExporter$2;->val$metadata:Lcom/sightcall/universal/media/Metadata;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/media/MediaExporter$BackgroundJob;-><init>(I)V

    return-void
.end method


# virtual methods
.method public doInBackground()V
    .locals 5

    iget-object v0, p0, Lcom/sightcall/universal/media/MediaExporter$2;->this$0:Lcom/sightcall/universal/media/MediaExporter;

    invoke-static {v0}, Lcom/sightcall/universal/media/MediaExporter;->a(Lcom/sightcall/universal/media/MediaExporter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sightcall/universal/R$bool;->universal_feature_media_export_meta:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iget-object v1, p0, Lcom/sightcall/universal/media/MediaExporter$2;->this$0:Lcom/sightcall/universal/media/MediaExporter;

    invoke-static {v1}, Lcom/sightcall/universal/media/MediaExporter;->a(Lcom/sightcall/universal/media/MediaExporter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sightcall/universal/R$bool;->universal_feature_media_export_scan:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iget-object v2, p0, Lcom/sightcall/universal/media/MediaExporter$2;->val$event:Lcom/sightcall/universal/media/MediaSavedEvent;

    invoke-virtual {v2}, Lcom/sightcall/universal/media/MediaSavedEvent;->media()Lcom/sightcall/universal/media/Media;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/sightcall/universal/media/MediaExporter$2;->this$0:Lcom/sightcall/universal/media/MediaExporter;

    iget-object v4, p0, Lcom/sightcall/universal/media/MediaExporter$2;->val$metadata:Lcom/sightcall/universal/media/Metadata;

    invoke-static {v3, v2, v4, v0}, Lcom/sightcall/universal/media/MediaExporter;->c(Lcom/sightcall/universal/media/MediaExporter;Lcom/sightcall/universal/media/Media;Lcom/sightcall/universal/media/Metadata;Z)Lcom/sightcall/universal/media/Media;

    move-result-object v0

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v2

    invoke-virtual {v2}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v2

    new-instance v3, Lcom/sightcall/universal/media/MediaExportEvent;

    iget-object v4, p0, Lcom/sightcall/universal/media/MediaExporter$2;->val$metadata:Lcom/sightcall/universal/media/Metadata;

    invoke-direct {v3, v0, v4}, Lcom/sightcall/universal/media/MediaExportEvent;-><init>(Lcom/sightcall/universal/media/Media;Lcom/sightcall/universal/media/Metadata;)V

    invoke-virtual {v2, v3}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/media/MediaExporter$2;->this$0:Lcom/sightcall/universal/media/MediaExporter;

    invoke-virtual {v0}, Lcom/sightcall/universal/media/Media;->image()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sightcall/universal/media/MediaExporter;->d(Lcom/sightcall/universal/media/MediaExporter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/sightcall/universal/media/MediaExporter;->e()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/Throwable;)V

    return-void
.end method
