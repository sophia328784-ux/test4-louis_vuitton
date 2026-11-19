.class public final Lcom/sightcall/universal/media/MediaExporter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/media/MediaExporter$BackgroundJob;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/sightcall/universal/media/MediaExporter;

.field private static final logger:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private overrideRoot:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MediaExporter"

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Ljava/lang/String;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/media/MediaExporter;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/media/MediaExporter;->context:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/media/MediaExporter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/MediaExporter;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sightcall/universal/media/MediaExporter;Lcom/sightcall/universal/media/MediaExporter$1$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/media/MediaExporter;->executeInBackgroundAfterPermission(Lcom/sightcall/universal/media/MediaExporter$BackgroundJob;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sightcall/universal/media/MediaExporter;Lcom/sightcall/universal/media/Media;Lcom/sightcall/universal/media/Metadata;Z)Lcom/sightcall/universal/media/Media;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/universal/media/MediaExporter;->export(Lcom/sightcall/universal/media/Media;Lcom/sightcall/universal/media/Metadata;Z)Lcom/sightcall/universal/media/Media;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sightcall/universal/media/MediaExporter;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/media/MediaExporter;->scanFiles([Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic e()Lnet/rtccloud/sdk/util/OldLogger;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/media/MediaExporter;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    return-object v0
.end method

.method private executeInBackgroundAfterPermission(Lcom/sightcall/universal/media/MediaExporter$BackgroundJob;)V
    .locals 0

    invoke-static {p1}, Lcom/sightcall/universal/media/MediaExporter$BackgroundJob;->a(Lcom/sightcall/universal/media/MediaExporter$BackgroundJob;)V

    return-void
.end method

.method private export(Lcom/sightcall/universal/media/Media;Lcom/sightcall/universal/media/Metadata;Z)Lcom/sightcall/universal/media/Media;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_3

    iget-object v0, p2, Lcom/sightcall/universal/media/Metadata;->pathName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p2, Lcom/sightcall/universal/media/Metadata;->pathName:Ljava/lang/String;

    invoke-static {p0}, Lcom/sightcall/universal/media/MediaExporter;->relativeToPictures(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    sget-object v1, Lcom/sightcall/universal/media/MediaExporter$4;->$SwitchMap$com$sightcall$universal$media$Metadata$Extension:[I

    invoke-virtual {p2}, Lcom/sightcall/universal/media/Metadata;->extension()Lcom/sightcall/universal/media/Metadata$Extension;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    const-string p2, ".jpg"

    goto :goto_0

    :cond_1
    const-string p2, ".png"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/sightcall/universal/media/MediaExporter;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p1}, Lcom/sightcall/universal/media/Media;->image()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3, p2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Exporting image [%s] -> [%s][%s]"

    invoke-virtual {v1, v3, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v0, p2}, Lcom/sightcall/universal/media/Media;->moveImageTo(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    if-eqz p3, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".meta"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sightcall/universal/media/Media;->metadata()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p3, v2, p0}, [Ljava/lang/Object;

    move-result-object p3

    const-string v2, "Exporting metadata [%s] -> [%s][%s]"

    invoke-virtual {v1, v2, p3}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v0, p0}, Lcom/sightcall/universal/media/Media;->moveMetadataTo(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/sightcall/universal/media/Media;->metadata()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :goto_1
    new-instance p1, Lcom/sightcall/universal/media/Media;

    invoke-direct {p1, p2, p0}, Lcom/sightcall/universal/media/Media;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object p1

    :cond_3
    invoke-direct {p0}, Lcom/sightcall/universal/media/MediaExporter;->getExportDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    sget-object p2, Lcom/sightcall/universal/media/MediaExporter;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p1}, Lcom/sightcall/universal/media/Media;->image()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Exporting image [%s] -> [dir] [%s]"

    invoke-virtual {p2, v1, v0}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/sightcall/universal/media/Media;->moveImageTo(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Lcom/sightcall/universal/media/Media;->metadata()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p3, v1}, [Ljava/lang/Object;

    move-result-object p3

    const-string v1, "Exporting metadata [%s] -> [dir] [%s]"

    invoke-virtual {p2, v1, p3}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/sightcall/universal/media/Media;->moveMetadataTo(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/sightcall/universal/media/Media;->metadata()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :goto_2
    new-instance p1, Lcom/sightcall/universal/media/Media;

    invoke-direct {p1, v0, p0}, Lcom/sightcall/universal/media/Media;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object p1
.end method

.method private getExportDirectory()Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/media/MediaExporter;->overrideRoot:Ljava/io/File;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/media/MediaExporter;->context:Landroid/content/Context;

    sget v1, Lcom/sightcall/universal/R$string;->universal_feature_media_export_directory:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/sightcall/universal/media/MediaExporter;->relativeToPictures(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sightcall/universal/media/MediaExporter;->context:Landroid/content/Context;

    invoke-static {p0}, Lnet/rtccloud/sdk/util/Utils;->appName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[^\\w. ]+"

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/media/MediaExporter;->relativeToPictures(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static varargs hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static instance(Landroid/content/Context;)Lcom/sightcall/universal/media/MediaExporter;
    .locals 2

    sget-object v0, Lcom/sightcall/universal/media/MediaExporter;->instance:Lcom/sightcall/universal/media/MediaExporter;

    if-nez v0, :cond_1

    const-class v0, Lcom/sightcall/universal/media/MediaExporter;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sightcall/universal/media/MediaExporter;->instance:Lcom/sightcall/universal/media/MediaExporter;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sightcall/universal/media/MediaExporter;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/sightcall/universal/media/MediaExporter;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sightcall/universal/media/MediaExporter;->instance:Lcom/sightcall/universal/media/MediaExporter;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/sightcall/universal/media/MediaExporter;->instance:Lcom/sightcall/universal/media/MediaExporter;

    return-object p0
.end method

.method public static isExternalStorageReadable()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isExternalStorageWritable()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isPermissionInManifest(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/sightcall/universal/media/MediaExporter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/sightcall/universal/media/MediaExporter;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x1000

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz p0, :cond_1

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/sightcall/universal/media/MediaExporter;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/Throwable;)V

    :cond_1
    sget-object p0, Lcom/sightcall/universal/media/MediaExporter;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Missing requested permission in AndroidManifest.xml: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    return v1
.end method

.method private static relativeToPictures(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private varargs scanFiles([Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/media/MediaExporter;->context:Landroid/content/Context;

    new-instance v1, Lcom/sightcall/universal/media/MediaExporter$3;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/media/MediaExporter$3;-><init>(Lcom/sightcall/universal/media/MediaExporter;)V

    const/4 p0, 0x0

    invoke-static {v0, p1, p0, v1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method


# virtual methods
.method public check()V
    .locals 1

    new-instance v0, Lcom/sightcall/universal/media/MediaExporter$1;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/media/MediaExporter$1;-><init>(Lcom/sightcall/universal/media/MediaExporter;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onMediaSavedEvent(Lcom/sightcall/universal/media/MediaSavedEvent;)V
    .locals 5
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-virtual {p1}, Lcom/sightcall/universal/media/MediaSavedEvent;->metadata()Lcom/sightcall/universal/media/Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/media/Metadata;->storage()Lcom/sightcall/universal/media/Metadata$Storage;

    move-result-object v1

    sget-object v2, Lcom/sightcall/universal/media/Metadata$Storage;->LOCAL:Lcom/sightcall/universal/media/Metadata$Storage;

    if-ne v1, v2, :cond_4

    sget-object v1, Lcom/sightcall/universal/util/Feature;->MEDIA_EXPORT:Lcom/sightcall/universal/util/Feature;

    iget-object v2, p0, Lcom/sightcall/universal/media/MediaExporter;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sightcall/universal/util/Feature;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/sightcall/pratik/utils/SdkUtilsKt;->isAtLeastSdk29()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/sightcall/universal/media/MediaExporter;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    sget-object v2, Lcom/sightcall/universal/media/MediaExporter$4;->$SwitchMap$com$sightcall$universal$media$Metadata$Extension:[I

    invoke-virtual {v0}, Lcom/sightcall/universal/media/Metadata;->extension()Lcom/sightcall/universal/media/Metadata$Extension;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const-string v4, "mime_type"

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const-string v2, ""

    goto :goto_0

    :cond_1
    const-string v2, "image/jpeg"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ".jpg"

    goto :goto_0

    :cond_2
    const-string v2, "image/png"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ".png"

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/sightcall/universal/media/Metadata;->filename:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "_display_name"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "relative_path"

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sightcall/universal/media/MediaSavedEvent;->media()Lcom/sightcall/universal/media/Media;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sightcall/universal/media/Media;->image()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object p1, Lcom/sightcall/universal/media/MediaExporter;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p1, p0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p0

    sget-object p1, Lcom/sightcall/universal/media/MediaExporter;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p1, p0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/sightcall/universal/media/MediaExporter$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/sightcall/universal/media/MediaExporter$2;-><init>(Lcom/sightcall/universal/media/MediaExporter;Lcom/sightcall/universal/media/MediaSavedEvent;Lcom/sightcall/universal/media/Metadata;)V

    invoke-direct {p0, v1}, Lcom/sightcall/universal/media/MediaExporter;->executeInBackgroundAfterPermission(Lcom/sightcall/universal/media/MediaExporter$BackgroundJob;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public overrideDirectory(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/media/MediaExporter;->overrideRoot:Ljava/io/File;

    return-void
.end method
