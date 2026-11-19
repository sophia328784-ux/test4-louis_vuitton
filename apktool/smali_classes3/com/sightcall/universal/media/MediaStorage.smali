.class final Lcom/sightcall/universal/media/MediaStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EXPORT_DIR:Ljava/lang/String; = "universal/pictures/exports/"

.field private static final EXTENSION_SEPARATOR:C = '.'

.field private static final FAILURE_DIR:Ljava/lang/String; = "universal/pictures/failures/"

.field static final FILE_EXTENSION_IMAGE_JPG:Ljava/lang/String; = ".jpg"

.field static final FILE_EXTENSION_IMAGE_PNG:Ljava/lang/String; = ".png"

.field static final FILE_EXTENSION_METADATA:Ljava/lang/String; = ".meta"

.field private static final FILTER_FILES_IMAGES:Ljava/io/FilenameFilter;

.field private static final LOCAL_DIR:Ljava/lang/String; = "universal/pictures/locals/"

.field private static final ROOT_DIR:Ljava/lang/String; = "universal/pictures/"

.field private static final UPLOAD_DIR:Ljava/lang/String; = "universal/pictures/uploads/"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/universal/media/MediaStorage$1;

    invoke-direct {v0}, Lcom/sightcall/universal/media/MediaStorage$1;-><init>()V

    sput-object v0, Lcom/sightcall/universal/media/MediaStorage;->FILTER_FILES_IMAGES:Ljava/io/FilenameFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static compress(Landroid/graphics/Bitmap;Lcom/sightcall/universal/media/Metadata;Ljava/io/OutputStream;)V
    .locals 1

    sget-object v0, Lcom/sightcall/universal/media/MediaStorage$3;->$SwitchMap$com$sightcall$universal$media$Metadata$Extension:[I

    invoke-virtual {p1}, Lcom/sightcall/universal/media/Metadata;->extension()Lcom/sightcall/universal/media/Metadata$Extension;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    return-void
.end method

.method public static deleteRecursively(Ljava/io/File;)Z
    .locals 5

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/sightcall/universal/media/MediaStorage;->deleteRecursively(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public static deleteUploadsStartingWith(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/sightcall/universal/media/MediaStorage;->getUploadDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v0, Lcom/sightcall/universal/media/MediaStorage$2;

    invoke-direct {v0, p1}, Lcom/sightcall/universal/media/MediaStorage$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private static getDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-object v0
.end method

.method public static getExportDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    const-string v0, "universal/pictures/exports/"

    invoke-static {p0, v0}, Lcom/sightcall/universal/media/MediaStorage;->getDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getFailureDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    const-string v0, "universal/pictures/failures/"

    invoke-static {p0, v0}, Lcom/sightcall/universal/media/MediaStorage;->getDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getLocalDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    const-string v0, "universal/pictures/locals/"

    invoke-static {p0, v0}, Lcom/sightcall/universal/media/MediaStorage;->getDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static getMetaFilenameFromImage(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const-string v1, ".meta"

    if-lez v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRootDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    const-string v0, "universal/pictures/"

    invoke-static {p0, v0}, Lcom/sightcall/universal/media/MediaStorage;->getDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static getStorageDirectory(Landroid/content/Context;Lcom/sightcall/universal/media/Metadata;)Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/media/MediaStorage$3;->$SwitchMap$com$sightcall$universal$media$Metadata$Storage:[I

    invoke-virtual {p1}, Lcom/sightcall/universal/media/Metadata;->storage()Lcom/sightcall/universal/media/Metadata$Storage;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    sget-object p1, Lcom/sightcall/universal/util/Feature;->MEDIA_EXPORT:Lcom/sightcall/universal/util/Feature;

    invoke-virtual {p1, p0}, Lcom/sightcall/universal/util/Feature;->isEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/sightcall/universal/media/MediaStorage;->getExportDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/sightcall/universal/media/MediaStorage;->getLocalDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/sightcall/universal/media/MediaStorage;->getUploadDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getUploadDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    const-string v0, "universal/pictures/uploads/"

    invoke-static {p0, v0}, Lcom/sightcall/universal/media/MediaStorage;->getDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static hasExportMedia(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/sightcall/universal/media/MediaStorage;->getExportDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/media/MediaStorage;->hasMedia(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static hasFailureMedia(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/sightcall/universal/media/MediaStorage;->getFailureDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/media/MediaStorage;->hasMedia(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static hasLocalMedia(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/sightcall/universal/media/MediaStorage;->getLocalDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/media/MediaStorage;->hasMedia(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private static hasMedia(Ljava/io/File;)Z
    .locals 1

    sget-object v0, Lcom/sightcall/universal/media/MediaStorage;->FILTER_FILES_IMAGES:Ljava/io/FilenameFilter;

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static hasUploadMedia(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/sightcall/universal/media/MediaStorage;->getUploadDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/media/MediaStorage;->hasMedia(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static listMedia(Ljava/io/File;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/media/Media;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sightcall/universal/media/MediaStorage;->FILTER_FILES_IMAGES:Ljava/io/FilenameFilter;

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    new-instance v5, Ljava/io/File;

    invoke-static {v4}, Lcom/sightcall/universal/media/MediaStorage;->getMetaFilenameFromImage(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Lcom/sightcall/universal/media/Media;

    invoke-direct {v6, v4, v5}, Lcom/sightcall/universal/media/Media;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public static newImageFile(Landroid/content/Context;Lcom/sightcall/universal/media/Metadata;)Ljava/io/File;
    .locals 2

    invoke-static {p0, p1}, Lcom/sightcall/universal/media/MediaStorage;->getStorageDirectory(Landroid/content/Context;Lcom/sightcall/universal/media/Metadata;)Ljava/io/File;

    move-result-object p0

    iget-object v0, p1, Lcom/sightcall/universal/media/Metadata;->filename:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lcom/sightcall/universal/media/Metadata;->timestamp:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/sightcall/universal/media/MediaStorage$3;->$SwitchMap$com$sightcall$universal$media$Metadata$Extension:[I

    invoke-virtual {p1}, Lcom/sightcall/universal/media/Metadata;->extension()Lcom/sightcall/universal/media/Metadata$Extension;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const-string p1, ".png"

    invoke-static {v0, p1}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, ".jpg"

    invoke-static {v0, p1}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static newMetadataFile(Landroid/content/Context;Lcom/sightcall/universal/media/Metadata;)Ljava/io/File;
    .locals 2

    iget-object v0, p1, Lcom/sightcall/universal/media/Metadata;->filename:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lcom/sightcall/universal/media/Metadata;->timestamp:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/sightcall/universal/media/MediaStorage;->getStorageDirectory(Landroid/content/Context;Lcom/sightcall/universal/media/Metadata;)Ljava/io/File;

    move-result-object p0

    const-string p1, ".meta"

    invoke-static {v0, p1}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method
