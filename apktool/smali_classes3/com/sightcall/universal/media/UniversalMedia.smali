.class public Lcom/sightcall/universal/media/UniversalMedia;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/media/UniversalMedia;->context:Landroid/content/Context;

    sget-object p0, Lcom/sightcall/universal/util/Feature;->MEDIA_EXPORT:Lcom/sightcall/universal/util/Feature;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/util/Feature;->isEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object p0

    invoke-static {p1}, Lcom/sightcall/universal/media/MediaExporter;->instance(Landroid/content/Context;)Lcom/sightcall/universal/media/MediaExporter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/event/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/media/UniversalMedia;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/UniversalMedia;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public exporter()Lcom/sightcall/universal/media/MediaExporter;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/UniversalMedia;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/sightcall/universal/media/MediaExporter;->instance(Landroid/content/Context;)Lcom/sightcall/universal/media/MediaExporter;

    move-result-object p0

    return-object p0
.end method

.method public exports()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/media/Media;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/media/UniversalMedia;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/sightcall/universal/media/MediaStorage;->getExportDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/media/MediaStorage;->listMedia(Ljava/io/File;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public failures()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/media/Media;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/media/UniversalMedia;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/sightcall/universal/media/MediaStorage;->getFailureDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/media/MediaStorage;->listMedia(Ljava/io/File;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public invalidate()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sightcall/universal/media/UniversalMedia$2;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/media/UniversalMedia$2;-><init>(Lcom/sightcall/universal/media/UniversalMedia;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public locals()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/media/Media;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/media/UniversalMedia;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/sightcall/universal/media/MediaStorage;->getLocalDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/media/MediaStorage;->listMedia(Ljava/io/File;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public varargs share([Lcom/sightcall/universal/media/Media;)Landroid/content/Intent;
    .locals 7

    iget-object v0, p0, Lcom/sightcall/universal/media/UniversalMedia;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sightcall/universal/internal/UniversalFileProvider;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "image/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x10000003

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, p1, v4

    iget-object v6, p0, Lcom/sightcall/universal/media/UniversalMedia;->context:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/sightcall/universal/media/Media;->image()Ljava/io/File;

    move-result-object v5

    invoke-static {v6, v0, v5}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/sightcall/universal/media/UniversalMedia;->context:Landroid/content/Context;

    invoke-static {v6, v2, v5}, Lcom/sightcall/universal/internal/UniversalFileProvider;->grantReadWritePermission(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "android.intent.extra.STREAM"

    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/sightcall/universal/media/UniversalMedia;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 v0, 0x10000

    invoke-virtual {p1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iget-object v5, p0, Lcom/sightcall/universal/media/UniversalMedia;->context:Landroid/content/Context;

    const/4 v6, 0x3

    invoke-virtual {v5, v0, v4, v6}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_1

    :cond_3
    return-object v2
.end method

.method public triggerExport()V
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/universal/media/UniversalMedia;->exporter()Lcom/sightcall/universal/media/MediaExporter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/universal/media/MediaExporter;->check()V

    return-void
.end method

.method public triggerUpload()V
    .locals 1

    new-instance v0, Lcom/sightcall/universal/media/UniversalMedia$1;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/media/UniversalMedia$1;-><init>(Lcom/sightcall/universal/media/UniversalMedia;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public uploads()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/media/Media;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/media/UniversalMedia;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/sightcall/universal/media/MediaStorage;->getUploadDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/media/MediaStorage;->listMedia(Ljava/io/File;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public view(Lcom/sightcall/universal/media/Media;)Landroid/content/Intent;
    .locals 5

    invoke-virtual {p1}, Lcom/sightcall/universal/media/Media;->image()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/media/UniversalMedia;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sightcall/universal/internal/UniversalFileProvider;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sightcall/universal/media/UniversalMedia;->context:Landroid/content/Context;

    invoke-static {v2, v0, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sightcall/universal/media/UniversalMedia;->context:Landroid/content/Context;

    invoke-static {v3, v0, p1}, Lcom/sightcall/universal/internal/UniversalFileProvider;->grantReadWritePermission(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/sightcall/universal/media/UniversalMedia;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/sightcall/universal/media/UniversalMedia;->context:Landroid/content/Context;

    invoke-virtual {v4, v3, p1, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_0

    :cond_2
    return-object v0
.end method
