.class public Lcom/linkplay/medialib/LPMSLibraryManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lcom/linkplay/medialib/LPMSLibraryManager;


# instance fields
.field private application:Landroid/app/Application;


# direct methods
.method private constructor <init>(Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linkplay/medialib/LPMSLibraryManager;->application:Landroid/app/Application;

    invoke-static {}, Lcom/linkplay/lpmdpkit/LPMDPKitManager;->getInstance()Lcom/linkplay/lpmdpkit/LPMDPKitManager;

    move-result-object p0

    new-instance p1, Lcom/linkplay/medialib/LPMSLibraryProtocol;

    invoke-direct {p1}, Lcom/linkplay/medialib/LPMSLibraryProtocol;-><init>()V

    invoke-virtual {p0, p1}, Lcom/linkplay/lpmdpkit/LPMDPKitManager;->addStreamServiceProtocol(Lcom/linkplay/lpmdpkit/LPStreamServiceProtocol;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/linkplay/medialib/LPMSLibraryManager;Lcom/linkplay/medialib/MusicSplitPageItem;)Ljava/util/Collection;
    .locals 0

    invoke-direct {p0, p1}, Lcom/linkplay/medialib/LPMSLibraryManager;->searchAudios(Lcom/linkplay/medialib/MusicSplitPageItem;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/linkplay/medialib/LPMSLibraryManager;Lcom/linkplay/medialib/MusicSplitPageItem;)Ljava/util/Collection;
    .locals 0

    invoke-direct {p0, p1}, Lcom/linkplay/medialib/LPMSLibraryManager;->searchSonglists(Lcom/linkplay/medialib/MusicSplitPageItem;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/linkplay/medialib/LPMSLibraryManager;Lcom/linkplay/medialib/MusicSplitPageItem;)Ljava/util/Collection;
    .locals 0

    invoke-direct {p0, p1}, Lcom/linkplay/medialib/LPMSLibraryManager;->searchSongsBySonglist(Lcom/linkplay/medialib/MusicSplitPageItem;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method private getAlbumArt(J)Ljava/lang/String;
    .locals 7

    .line 79
    const-string v0, "album_art"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 80
    iget-object p0, p0, Lcom/linkplay/medialib/LPMSLibraryManager;->application:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "content://media/external/audio/albums/"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 82
    const-string p1, ""

    if-eqz p0, :cond_1

    .line 83
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result p2

    if-lez p2, :cond_0

    .line 84
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    const/4 p1, 0x0

    .line 85
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 86
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p1
.end method

.method private getAlbumIDByAlbum(Lcom/linkplay/medialib/LPMSLibraryPlayItem;)J
    .locals 7

    const-string v0, "album_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->getTrackName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->getTrackDuration()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object v5

    iget-object p0, p0, Lcom/linkplay/medialib/LPMSLibraryManager;->application:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "title_key"

    const-string v4, "title=? and duration=?"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result p1

    if-lez p1, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide v0
.end method

.method private static getCurrDir(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private getFileDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string p0, ""

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    return-object p0

    :cond_2
    return-object p1

    :cond_3
    :goto_0
    return-object p0
.end method

.method private getFolderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string p0, ""

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-object p0

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_3

    return-object p0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_4

    return-object p0

    :cond_4
    return-object p1

    :cond_5
    :goto_0
    return-object p0
.end method

.method private getGenreName(I)Ljava/lang/String;
    .locals 9

    const-string v0, "name"

    const-string v1, "unknown"

    const/4 v2, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/linkplay/medialib/LPMSLibraryManager;->application:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string p0, "external"

    invoke-static {p0, p1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUriForAudioId(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v4

    const-string p0, "_id"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    move-object v1, p0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v1

    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v1

    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw p0
.end method

.method private getImageFromLocal(Lcom/linkplay/medialib/LPMSLibraryPlayItem;)Lcom/linkplay/medialib/LPMSLibraryPlayItem;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->getTrackName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/linkplay/medialib/LPMSLibraryManager;->getAlbumIDByAlbum(Lcom/linkplay/medialib/LPMSLibraryPlayItem;)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->setAlbumId(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/linkplay/medialib/LPMSLibraryManager;->getAlbumArt(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->setTrackImage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p1
.end method

.method public static getInstance(Landroid/app/Application;)Lcom/linkplay/medialib/LPMSLibraryManager;
    .locals 2

    sget-object v0, Lcom/linkplay/medialib/LPMSLibraryManager;->instance:Lcom/linkplay/medialib/LPMSLibraryManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/linkplay/medialib/LPMSLibraryManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/linkplay/medialib/LPMSLibraryManager;->instance:Lcom/linkplay/medialib/LPMSLibraryManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/linkplay/medialib/LPMSLibraryManager;

    invoke-direct {v1, p0}, Lcom/linkplay/medialib/LPMSLibraryManager;-><init>(Landroid/app/Application;)V

    sput-object v1, Lcom/linkplay/medialib/LPMSLibraryManager;->instance:Lcom/linkplay/medialib/LPMSLibraryManager;

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
    sget-object p0, Lcom/linkplay/medialib/LPMSLibraryManager;->instance:Lcom/linkplay/medialib/LPMSLibraryManager;

    return-object p0
.end method

.method private getLocalIPUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, ""

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, "http://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/linkplay/medialib/server/MediaServer;->port:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isSupportedMimeType(Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return p0

    :cond_0
    const-string v0, "mid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "basic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "aiff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "real"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "scpls"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "musicnet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "liquid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :cond_2
    :goto_0
    return p0
.end method

.method private isSupportedSubType(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string p1, "aac"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "m4a"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "mp3"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "flac"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ape"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "wma"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "mpeg"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "mp4"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ogg"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "wav"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "monkeys"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private search(Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;Lcom/linkplay/medialib/ELocSearchType;Lcom/linkplay/medialib/LPSearchMediaResultListener;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;

    invoke-direct {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getCurrentPage()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v1}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->setCurrentPage(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getCurrentPage()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->setCurrentPage(I)V

    :goto_0
    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getPerPage()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->setPerPage(I)V

    const-string v0, "SONGLIST-LOCAL"

    invoke-virtual {p1, v0}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->setMediaType(Ljava/lang/String;)V

    sget-object v0, Lcom/linkplay/lpmdpkit/LPPlaySourceType;->LP_LOCALMUSIC:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->setMediaSource(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/linkplay/medialib/LPMSLibraryManager$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/linkplay/medialib/LPMSLibraryManager$2;-><init>(Lcom/linkplay/medialib/LPMSLibraryManager;Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;Lcom/linkplay/medialib/ELocSearchType;Lcom/linkplay/medialib/LPSearchMediaResultListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private searchAudios(Lcom/linkplay/medialib/MusicSplitPageItem;)Ljava/util/Collection;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linkplay/medialib/MusicSplitPageItem;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/linkplay/medialib/LPMSLibraryPlayItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "audio-item-"

    const-string v3, ":"

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-nez v1, :cond_0

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/linkplay/medialib/ContentTree;->getRootNode()Lcom/linkplay/medialib/ContentNode;

    move-result-object v5

    new-instance v6, Lorg/teleal/cling/support/model/container/Container;

    new-instance v11, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v7, "object.container"

    invoke-direct {v11, v7}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v7, "2"

    const-string v8, "0"

    const-string v9, "Audios"

    const-string v10, "GNaP MediaServer"

    invoke-direct/range {v6 .. v12}, Lorg/teleal/cling/support/model/container/Container;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/lang/Integer;)V

    const/4 v7, 0x1

    iput-boolean v7, v6, Lorg/teleal/cling/support/model/DIDLObject;->e:Z

    sget-object v8, Lorg/teleal/cling/support/model/WriteStatus;->NOT_WRITABLE:Lorg/teleal/cling/support/model/WriteStatus;

    iput-object v8, v6, Lorg/teleal/cling/support/model/DIDLObject;->f:Lorg/teleal/cling/support/model/WriteStatus;

    const-string v23, "track"

    const-string v24, "artist_id"

    const-string v14, "_id"

    const-string v15, "title"

    const-string v16, "_data"

    const-string v17, "artist"

    const-string v18, "mime_type"

    const-string v19, "_size"

    const-string v20, "duration"

    const-string v21, "album"

    const-string v22, "album_id"

    filled-new-array/range {v14 .. v24}, [Ljava/lang/String;

    move-result-object v27

    iget-object v6, v1, Lcom/linkplay/medialib/MusicSplitPageItem;->classify:Lcom/linkplay/medialib/ELocSearchType;

    sget-object v8, Lcom/linkplay/medialib/ELocSearchType;->LP_ALBUM:Lcom/linkplay/medialib/ELocSearchType;

    const-string v9, "\' "

    const/4 v10, 0x0

    if-ne v6, v8, :cond_1

    iget-boolean v6, v1, Lcom/linkplay/medialib/MusicSplitPageItem;->shouldExecuteSearchKey:Z

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "album= \'"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/linkplay/medialib/MusicSplitPageItem;->searchKey:Ljava/lang/String;

    invoke-static {v8, v9, v6}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    move-object/from16 v28, v6

    goto :goto_1

    :cond_1
    sget-object v8, Lcom/linkplay/medialib/ELocSearchType;->LP_ARTIST:Lcom/linkplay/medialib/ELocSearchType;

    if-ne v6, v8, :cond_2

    iget-boolean v6, v1, Lcom/linkplay/medialib/MusicSplitPageItem;->shouldExecuteSearchKey:Z

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "artist= \'"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/linkplay/medialib/MusicSplitPageItem;->searchKey:Ljava/lang/String;

    invoke-static {v8, v9, v6}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    sget-object v8, Lcom/linkplay/medialib/ELocSearchType;->LP_SONGS:Lcom/linkplay/medialib/ELocSearchType;

    if-ne v6, v8, :cond_3

    iget-boolean v6, v1, Lcom/linkplay/medialib/MusicSplitPageItem;->shouldExecuteSearchKey:Z

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "_id IN ("

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/linkplay/medialib/MusicSplitPageItem;->searchKey:Ljava/lang/String;

    const-string v9, ")"

    invoke-static {v8, v9, v6}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_3
    move-object/from16 v28, v10

    :goto_1
    :try_start_0
    iget-object v6, v0, Lcom/linkplay/medialib/LPMSLibraryManager;->application:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    sget-object v26, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v30, "_id desc"

    const/16 v29, 0x0

    invoke-virtual/range {v25 .. v30}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_15

    :goto_2
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_15

    const-string v6, "artist_id"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_id"

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v8, "title"

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v8, "album"

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "artist"

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v11, "_data"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/linkplay/medialib/MusicSplitPageItem;->classify:Lcom/linkplay/medialib/ELocSearchType;

    sget-object v14, Lcom/linkplay/medialib/ELocSearchType;->LP_ALBUM:Lcom/linkplay/medialib/ELocSearchType;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ne v12, v14, :cond_5

    :try_start_2
    iget-boolean v12, v1, Lcom/linkplay/medialib/MusicSplitPageItem;->shouldExecuteSearchKey:Z

    if-nez v12, :cond_5

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/linkplay/medialib/LPMSLibraryPlayItem;

    invoke-virtual {v14}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->getAlbumName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v14, :cond_4

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_16

    :catch_0
    move-exception v0

    :goto_3
    move-object v6, v4

    goto/16 :goto_14

    :cond_5
    :try_start_3
    iget-object v12, v1, Lcom/linkplay/medialib/MusicSplitPageItem;->classify:Lcom/linkplay/medialib/ELocSearchType;

    sget-object v14, Lcom/linkplay/medialib/ELocSearchType;->LP_ARTIST:Lcom/linkplay/medialib/ELocSearchType;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v12, v14, :cond_7

    :try_start_4
    iget-boolean v12, v1, Lcom/linkplay/medialib/MusicSplitPageItem;->shouldExecuteSearchKey:Z

    if-nez v12, :cond_7

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/linkplay/medialib/LPMSLibraryPlayItem;

    move/from16 v22, v7

    invoke-virtual {v14}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->getTrackArtist()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v14}, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->getSongCount()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v14, v6}, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->setSongCount(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move/from16 v7, v22

    goto/16 :goto_2

    :cond_6
    move/from16 v7, v22

    goto :goto_4

    :cond_7
    move/from16 v22, v7

    :try_start_5
    const-string v7, "mime_type"

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v12, "_size"

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const-string v12, "duration"

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const-string v12, "album_id"

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v24, v5

    const-string v5, "track"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const-wide/16 v20, 0x0

    cmp-long v16, v13, v20

    if-lez v16, :cond_8

    cmp-long v16, v18, v20

    if-gtz v16, :cond_9

    :cond_8
    move/from16 v7, v22

    move-object/from16 v5, v24

    :goto_5
    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_9
    move-object/from16 v25, v5

    const-string v5, "/"

    move-object/from16 v16, v8

    const-string v8, ""

    if-eqz v7, :cond_a

    :try_start_6
    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v20, :cond_a

    move-object/from16 v26, v10

    :try_start_7
    invoke-virtual {v7, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    move-wide/from16 v20, v13

    const/4 v13, 0x0

    invoke-virtual {v7, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/16 v14, 0x2f

    :try_start_8
    invoke-virtual {v7, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v7, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v10, v26

    goto/16 :goto_16

    :catch_1
    :goto_6
    move-object v14, v8

    goto :goto_9

    :catch_2
    move-exception v0

    move-object v6, v4

    :goto_7
    move-object/from16 v10, v26

    goto/16 :goto_14

    :cond_a
    move-object/from16 v26, v10

    move-wide/from16 v20, v13

    const/4 v13, 0x0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v26, v10

    goto/16 :goto_16

    :catch_3
    move-exception v0

    move-object/from16 v26, v10

    goto/16 :goto_3

    :goto_8
    move-object v10, v7

    goto :goto_6

    :goto_9
    if-eqz v7, :cond_c

    :try_start_9
    const-string v13, "audio"

    invoke-virtual {v7, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_b

    goto :goto_a

    :cond_b
    move-object/from16 v28, v4

    move-object/from16 v27, v7

    goto :goto_c

    :cond_c
    :goto_a
    const-string v13, "."

    invoke-virtual {v11, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object/from16 v27, v7

    const/4 v7, -0x1

    if-le v13, v7, :cond_d

    :try_start_a
    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/linkplay/medialib/LPMSLibraryManager;->isSupportedSubType(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object/from16 v28, v4

    :try_start_b
    const-string v4, "audio/"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_d

    :catch_4
    move-exception v0

    :goto_b
    move-object/from16 v10, v26

    move-object/from16 v6, v28

    goto/16 :goto_14

    :catch_5
    move-exception v0

    move-object/from16 v28, v4

    goto :goto_b

    :cond_d
    move-object/from16 v28, v4

    :goto_c
    move-object/from16 v7, v27

    :goto_d
    :try_start_c
    invoke-direct {v0, v7}, Lcom/linkplay/medialib/LPMSLibraryManager;->isSupportedMimeType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    new-instance v4, Lorg/teleal/cling/support/model/Res;

    new-instance v7, Lorg/teleal/common/util/MimeType;

    invoke-direct {v7, v10, v14}, Lorg/teleal/common/util/MimeType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "http://#IP_Param#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v7, v10, v13}, Lorg/teleal/cling/support/model/Res;-><init>(Lorg/teleal/common/util/MimeType;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v18, 0x36ee80

    div-long v13, v20, v18

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-long v13, v20, v18

    const-wide/32 v18, 0xea60

    div-long v13, v13, v18

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-long v13, v20, v18

    const-wide/16 v18, 0x3e8

    div-long v13, v13, v18

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lorg/teleal/cling/support/model/Res;->a:Ljava/lang/String;

    new-instance v14, Lorg/teleal/cling/support/model/item/MusicTrack;

    move-object/from16 v19, v16

    const-string v16, "2"

    new-instance v7, Lorg/teleal/cling/support/model/PersonWithRole;

    const-string v10, "Performer"

    invoke-direct {v7, v9, v10}, Lorg/teleal/cling/support/model/PersonWithRole;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v4}, [Lorg/teleal/cling/support/model/Res;

    move-result-object v4

    move-object/from16 v18, v9

    move-wide/from16 v9, v20

    move-object/from16 v21, v4

    move-object/from16 v20, v7

    invoke-direct/range {v14 .. v21}, Lorg/teleal/cling/support/model/item/MusicTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/PersonWithRole;[Lorg/teleal/cling/support/model/Res;)V

    invoke-virtual/range {v24 .. v24}, Lcom/linkplay/medialib/ContentNode;->getContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v4

    iget-object v4, v4, Lorg/teleal/cling/support/model/container/Container;->o:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v24 .. v24}, Lcom/linkplay/medialib/ContentNode;->getContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/linkplay/medialib/ContentNode;->getContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v7

    iget-object v7, v7, Lorg/teleal/cling/support/model/container/Container;->k:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v4, Lorg/teleal/cling/support/model/container/Container;->k:Ljava/lang/Integer;

    new-instance v4, Lcom/linkplay/medialib/ContentNode;

    invoke-direct {v4, v15, v14, v11}, Lcom/linkplay/medialib/ContentNode;-><init>(Ljava/lang/String;Lorg/teleal/cling/support/model/item/Item;Ljava/lang/String;)V

    invoke-static {v15, v4}, Lcom/linkplay/medialib/ContentTree;->addNode(Ljava/lang/String;Lcom/linkplay/medialib/ContentNode;)V

    new-instance v4, Lcom/linkplay/medialib/LPMSLibraryPlayItem;

    invoke-direct {v4}, Lcom/linkplay/medialib/LPMSLibraryPlayItem;-><init>()V

    if-nez v19, :cond_e

    move-object v7, v8

    goto :goto_e

    :cond_e
    move-object/from16 v7, v19

    :goto_e
    invoke-virtual {v4, v7}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->setAlbumName(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->setTrackImage(Ljava/lang/String;)V

    if-nez v18, :cond_f

    move-object v7, v8

    goto :goto_f

    :cond_f
    move-object/from16 v7, v18

    :goto_f
    invoke-virtual {v4, v7}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->setTrackArtist(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "http://"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/linkplay/medialib/LPMSLibraryManager;->application:Landroid/app/Application;

    invoke-static {v11}, Lcom/linkplay/medialib/FinalDataUtil;->makeIPV4IP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v11, Lcom/linkplay/medialib/server/MediaServer;->port:I

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->setTrackUrl(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->setLocal_id(Ljava/lang/String;)V

    if-nez v17, :cond_10

    move-object v5, v8

    goto :goto_10

    :cond_10
    move-object/from16 v5, v17

    :goto_10
    invoke-virtual {v4, v5}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->setTrackName(Ljava/lang/String;)V

    long-to-int v5, v9

    int-to-long v9, v5

    invoke-virtual {v4, v9, v10}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->setTrackDuration(J)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->setArtistId(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->setAlbumId(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v25, :cond_12

    :try_start_d
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v5, :cond_11

    goto :goto_11

    :cond_11
    move-object/from16 v5, v25

    goto :goto_12

    :cond_12
    :goto_11
    :try_start_e
    const-string v5, "2147483647"

    :goto_12
    invoke-virtual {v4, v5}, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->setTrack(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->setTrackId(Ljava/lang/String;)V

    move/from16 v5, v22

    invoke-virtual {v4, v5}, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->setSongCount(I)V

    iget-object v6, v1, Lcom/linkplay/medialib/MusicSplitPageItem;->classify:Lcom/linkplay/medialib/ELocSearchType;

    sget-object v7, Lcom/linkplay/medialib/ELocSearchType;->LP_GENRE:Lcom/linkplay/medialib/ELocSearchType;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-ne v6, v7, :cond_13

    :try_start_f
    invoke-virtual {v15, v2, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v0, v6}, Lcom/linkplay/medialib/LPMSLibraryManager;->getGenreName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->setGenreName(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :cond_13
    move-object/from16 v6, v28

    :try_start_10
    invoke-virtual {v6, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_13

    :catch_6
    move-exception v0

    goto/16 :goto_7

    :catch_7
    move-exception v0

    move-object/from16 v6, v28

    goto/16 :goto_7

    :cond_14
    move/from16 v5, v22

    move-object/from16 v6, v28

    :goto_13
    move v7, v5

    move-object v4, v6

    move-object/from16 v5, v24

    move-object/from16 v10, v26

    goto/16 :goto_5

    :catch_8
    move-exception v0

    move-object v6, v4

    move-object/from16 v26, v10

    goto :goto_14

    :cond_15
    move-object v6, v4

    move-object/from16 v26, v10

    if-eqz v26, :cond_16

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    goto :goto_15

    :goto_14
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    if-eqz v10, :cond_16

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_16
    :goto_15
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0

    :goto_16
    if-eqz v10, :cond_17

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_17
    throw v0
.end method

.method private searchSonglists(Lcom/linkplay/medialib/MusicSplitPageItem;)Ljava/util/Collection;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linkplay/medialib/MusicSplitPageItem;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/linkplay/medialib/LPMSLibraryPlayItem;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lorg/teleal/cling/support/model/container/Container;

    new-instance v7, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v0, "object.container"

    invoke-direct {v7, v0}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v3, "2"

    const-string v4, "0"

    const-string v5, "Audios"

    const-string v6, "GNaP MediaServer"

    invoke-direct/range {v2 .. v8}, Lorg/teleal/cling/support/model/container/Container;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/lang/Integer;)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/teleal/cling/support/model/DIDLObject;->e:Z

    sget-object v4, Lorg/teleal/cling/support/model/WriteStatus;->NOT_WRITABLE:Lorg/teleal/cling/support/model/WriteStatus;

    iput-object v4, v2, Lorg/teleal/cling/support/model/DIDLObject;->f:Lorg/teleal/cling/support/model/WriteStatus;

    const-string v2, "_id"

    const-string v4, "_data"

    const-string v5, "mime_type"

    filled-new-array {v2, v4, v5}, [Ljava/lang/String;

    move-result-object v8

    iget p1, p1, Lcom/linkplay/medialib/MusicSplitPageItem;->page:I

    const-string v11, "  _id "

    const/4 p1, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/linkplay/medialib/LPMSLibraryManager;->application:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_5

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "audio-item-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    const-string v10, "audio"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :cond_1
    :goto_1
    const-string v10, "."

    invoke-virtual {v8, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-le v10, v11, :cond_2

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/linkplay/medialib/LPMSLibraryManager;->isSupportedSubType(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "audio/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_2
    invoke-direct {p0, v9}, Lcom/linkplay/medialib/LPMSLibraryManager;->isSupportedMimeType(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, Lcom/linkplay/medialib/LPMSLibraryPlayItem;

    invoke-direct {v9}, Lcom/linkplay/medialib/LPMSLibraryPlayItem;-><init>()V

    invoke-virtual {v9, v6}, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->setFileId(I)V

    invoke-direct {p0, v8}, Lcom/linkplay/medialib/LPMSLibraryManager;->getFileDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->setSonglist(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/linkplay/medialib/LPMSLibraryManager;->getFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->setFolderName(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->setLocal_id(Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v8, v0

    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_4

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/linkplay/medialib/LPMSLibraryPlayItem;

    invoke-virtual {v10}, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->getSonglist()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->getSonglist()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v10}, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->getSongCount()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v10, v6}, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->setSongCount(I)V

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v9}, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->getSongCount()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v9, v6}, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->setSongCount(I)V

    invoke-virtual {v1, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_5
    if-eqz p1, :cond_6

    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :goto_4
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    :goto_5
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :goto_6
    if-eqz p1, :cond_7

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw p0
.end method

.method private searchSongsByKey(Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;Ljava/lang/String;Lcom/linkplay/medialib/ELocSearchType;Lcom/linkplay/medialib/LPSearchMediaResultListener;)V
    .locals 6

    if-nez p1, :cond_0

    new-instance p1, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;

    invoke-direct {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;-><init>()V

    :cond_0
    move-object v2, p1

    invoke-virtual {v2}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getCurrentPage()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    invoke-virtual {v2, v0}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->setCurrentPage(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getCurrentPage()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->setCurrentPage(I)V

    :goto_0
    invoke-virtual {v2}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getPerPage()I

    move-result p1

    if-ge p1, v0, :cond_2

    const/16 p1, 0x32

    invoke-virtual {v2, p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->setPerPage(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getPerPage()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->setPerPage(I)V

    :goto_1
    const-string p1, "SONGLIST-LOCAL"

    invoke-virtual {v2, p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->setMediaType(Ljava/lang/String;)V

    sget-object p1, Lcom/linkplay/lpmdpkit/LPPlaySourceType;->LP_LOCALMUSIC:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->setMediaSource(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/linkplay/medialib/LPMSLibraryManager$1;

    move-object v1, p0

    move-object v4, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/linkplay/medialib/LPMSLibraryManager$1;-><init>(Lcom/linkplay/medialib/LPMSLibraryManager;Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;Lcom/linkplay/medialib/ELocSearchType;Ljava/lang/String;Lcom/linkplay/medialib/LPSearchMediaResultListener;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private searchSongsBySonglist(Lcom/linkplay/medialib/MusicSplitPageItem;)Ljava/util/Collection;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linkplay/medialib/MusicSplitPageItem;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/linkplay/medialib/LPMSLibraryPlayItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, ":"

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-nez v1, :cond_0

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/linkplay/medialib/ContentTree;->getRootNode()Lcom/linkplay/medialib/ContentNode;

    move-result-object v4

    new-instance v5, Lorg/teleal/cling/support/model/container/Container;

    new-instance v10, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v6, "object.container"

    invoke-direct {v10, v6}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v6, "2"

    const-string v7, "0"

    const-string v8, "Audios"

    const-string v9, "GNaP MediaServer"

    invoke-direct/range {v5 .. v11}, Lorg/teleal/cling/support/model/container/Container;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/lang/Integer;)V

    const/4 v6, 0x1

    iput-boolean v6, v5, Lorg/teleal/cling/support/model/DIDLObject;->e:Z

    sget-object v7, Lorg/teleal/cling/support/model/WriteStatus;->NOT_WRITABLE:Lorg/teleal/cling/support/model/WriteStatus;

    iput-object v7, v5, Lorg/teleal/cling/support/model/DIDLObject;->f:Lorg/teleal/cling/support/model/WriteStatus;

    const-string v22, "track"

    const-string v23, "artist_id"

    const-string v13, "_id"

    const-string v14, "title"

    const-string v15, "_data"

    const-string v16, "artist"

    const-string v17, "mime_type"

    const-string v18, "_size"

    const-string v19, "duration"

    const-string v20, "album"

    const-string v21, "album_id"

    filled-new-array/range {v13 .. v23}, [Ljava/lang/String;

    move-result-object v26

    const-string v29, " _id "

    const/4 v5, 0x0

    :try_start_0
    iget-object v7, v0, Lcom/linkplay/medialib/LPMSLibraryManager;->application:Landroid/app/Application;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    sget-object v25, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/16 v28, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {v24 .. v29}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v5, :cond_e

    :goto_0
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_e

    const-string v7, "artist_id"

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v8, "_id"

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "audio-item-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v9, "title"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v9, "artist"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "_data"

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "mime_type"

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v13, "_size"

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    const-string v13, "duration"

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move/from16 v21, v6

    move/from16 v22, v7

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v13, "album"

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v15, "track"

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const-string v15, "album_id"

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iget-object v12, v1, Lcom/linkplay/medialib/MusicSplitPageItem;->searchKey:Ljava/lang/String;

    invoke-direct {v0, v10}, Lcom/linkplay/medialib/LPMSLibraryManager;->getFileDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_2

    :cond_1
    :goto_1
    move-object/from16 v1, p1

    move/from16 v6, v21

    :goto_2
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_2
    const-wide/16 v19, 0x0

    cmp-long v1, v6, v19

    if-lez v1, :cond_1

    cmp-long v1, v17, v19

    if-gtz v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "/"

    const-string v12, ""

    if-eqz v11, :cond_4

    :try_start_2
    invoke-virtual {v11, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_4

    move-object/from16 v25, v4

    invoke-virtual {v11, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v26, v5

    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v11, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v5, 0x2f

    :try_start_4
    invoke-virtual {v11, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v11, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v5, v26

    goto/16 :goto_10

    :catch_0
    :goto_3
    move-object v5, v12

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v5, v26

    goto/16 :goto_e

    :catchall_1
    move-exception v0

    move-object/from16 v26, v5

    goto/16 :goto_10

    :catch_2
    move-exception v0

    move-object/from16 v26, v5

    goto/16 :goto_e

    :cond_4
    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object v4, v11

    goto :goto_3

    :goto_4
    if-eqz v11, :cond_7

    move-object/from16 v19, v13

    :try_start_5
    const-string v13, "audio"

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    goto :goto_5

    :cond_5
    move-object/from16 v20, v11

    :cond_6
    move-object/from16 v27, v15

    goto :goto_6

    :cond_7
    move-object/from16 v19, v13

    :goto_5
    const-string v13, "."

    invoke-virtual {v10, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v20, v11

    const/4 v11, -0x1

    if-le v13, v11, :cond_6

    invoke-virtual {v10, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/linkplay/medialib/LPMSLibraryManager;->isSupportedSubType(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v15

    const-string v15, "audio/"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_7

    :goto_6
    move-object/from16 v11, v20

    :goto_7
    invoke-direct {v0, v11}, Lcom/linkplay/medialib/LPMSLibraryManager;->isSupportedMimeType(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    new-instance v11, Lorg/teleal/cling/support/model/Res;

    new-instance v13, Lorg/teleal/common/util/MimeType;

    invoke-direct {v13, v4, v5}, Lorg/teleal/common/util/MimeType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "http://#IP_Param#"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v11, v13, v4, v5}, Lorg/teleal/cling/support/model/Res;-><init>(Lorg/teleal/common/util/MimeType;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v17, 0x36ee80

    move-object v5, v14

    div-long v13, v6, v17

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-long v13, v6, v17

    const-wide/32 v17, 0xea60

    div-long v13, v13, v17

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-long v13, v6, v17

    const-wide/16 v17, 0x3e8

    div-long v13, v13, v17

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v11, Lorg/teleal/cling/support/model/Res;->a:Ljava/lang/String;

    new-instance v13, Lorg/teleal/cling/support/model/item/MusicTrack;

    const-string v15, "2"

    new-instance v4, Lorg/teleal/cling/support/model/PersonWithRole;

    const-string v14, "Performer"

    invoke-direct {v4, v9, v14}, Lorg/teleal/cling/support/model/PersonWithRole;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v11}, [Lorg/teleal/cling/support/model/Res;

    move-result-object v20

    move-object v14, v5

    move-object/from16 v17, v9

    move-object/from16 v18, v19

    move-object/from16 v19, v4

    move-object/from16 v4, v27

    invoke-direct/range {v13 .. v20}, Lorg/teleal/cling/support/model/item/MusicTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/PersonWithRole;[Lorg/teleal/cling/support/model/Res;)V

    invoke-virtual/range {v25 .. v25}, Lcom/linkplay/medialib/ContentNode;->getContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v5

    iget-object v5, v5, Lorg/teleal/cling/support/model/container/Container;->o:Ljava/util/List;

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v25 .. v25}, Lcom/linkplay/medialib/ContentNode;->getContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Lcom/linkplay/medialib/ContentNode;->getContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v9

    iget-object v9, v9, Lorg/teleal/cling/support/model/container/Container;->k:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v5, Lorg/teleal/cling/support/model/container/Container;->k:Ljava/lang/Integer;

    new-instance v5, Lcom/linkplay/medialib/ContentNode;

    invoke-direct {v5, v14, v13, v10}, Lcom/linkplay/medialib/ContentNode;-><init>(Ljava/lang/String;Lorg/teleal/cling/support/model/item/Item;Ljava/lang/String;)V

    invoke-static {v14, v5}, Lcom/linkplay/medialib/ContentTree;->addNode(Ljava/lang/String;Lcom/linkplay/medialib/ContentNode;)V

    new-instance v5, Lcom/linkplay/medialib/LPMSLibraryPlayItem;

    invoke-direct {v5}, Lcom/linkplay/medialib/LPMSLibraryPlayItem;-><init>()V

    if-nez v18, :cond_8

    move-object v13, v12

    goto :goto_8

    :cond_8
    move-object/from16 v13, v18

    :goto_8
    invoke-virtual {v5, v13}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->setAlbumName(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->setTrackImage(Ljava/lang/String;)V

    if-nez v17, :cond_9

    move-object v9, v12

    goto :goto_9

    :cond_9
    move-object/from16 v9, v17

    :goto_9
    invoke-virtual {v5, v9}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->setTrackArtist(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "http://"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/linkplay/medialib/LPMSLibraryManager;->application:Landroid/app/Application;

    invoke-static {v11}, Lcom/linkplay/medialib/FinalDataUtil;->makeIPV4IP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v11, Lcom/linkplay/medialib/server/MediaServer;->port:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->setTrackUrl(Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->setLocal_id(Ljava/lang/String;)V

    if-nez v16, :cond_a

    move-object v1, v12

    goto :goto_a

    :cond_a
    move-object/from16 v1, v16

    :goto_a
    invoke-virtual {v5, v1}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->setTrackName(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->setTrackDuration(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v6, v22

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->setArtistId(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->setAlbumId(Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->setTrackId(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->setFileId(I)V

    invoke-direct {v0, v10}, Lcom/linkplay/medialib/LPMSLibraryManager;->getFileDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->setSonglist(Ljava/lang/String;)V

    invoke-direct {v0, v10}, Lcom/linkplay/medialib/LPMSLibraryManager;->getFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->setFolderName(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->setFilePath(Ljava/lang/String;)V

    invoke-direct {v0, v10}, Lcom/linkplay/medialib/LPMSLibraryManager;->getFileDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/linkplay/medialib/LPMSLibraryManager;->getCurrDir(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->setCurrDirArr([Ljava/lang/String;)V

    if-eqz v23, :cond_c

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_c

    :cond_b
    :goto_b
    move-object/from16 v1, v23

    goto :goto_d

    :cond_c
    :goto_c
    const-string v23, "2147483647"

    goto :goto_b

    :goto_d
    invoke-virtual {v5, v1}, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->setTrack(Ljava/lang/String;)V

    invoke-virtual {v3, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_d
    move-object/from16 v1, p1

    move/from16 v6, v21

    move-object/from16 v4, v25

    move-object/from16 v5, v26

    goto/16 :goto_2

    :cond_e
    move-object/from16 v26, v5

    if-eqz v26, :cond_f

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    goto :goto_f

    :catchall_2
    move-exception v0

    goto :goto_10

    :catch_3
    move-exception v0

    :goto_e
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v5, :cond_f

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_f
    :goto_f
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0

    :goto_10
    if-eqz v5, :cond_10

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_10
    throw v0
.end method


# virtual methods
.method public getAccount()Lcom/linkplay/lpmdpkit/bean/LPAccount;
    .locals 1

    new-instance p0, Lcom/linkplay/lpmdpkit/bean/LPAccount;

    invoke-direct {p0}, Lcom/linkplay/lpmdpkit/bean/LPAccount;-><init>()V

    sget-object v0, Lcom/linkplay/lpmdpkit/LPPlaySourceType;->LP_LOCALMUSIC:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/linkplay/lpmdpkit/bean/LPAccount;->setSource(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/linkplay/lpmdpkit/bean/LPAccount;->setUserId(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/linkplay/lpmdpkit/bean/LPAccount;->setUserName(Ljava/lang/String;)V

    return-object p0
.end method

.method public getAlbumArt(Lcom/linkplay/medialib/LPMSLibraryPlayItem;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0, p1}, Lcom/linkplay/medialib/LPMSLibraryManager;->getImageFromLocal(Lcom/linkplay/medialib/LPMSLibraryPlayItem;)Lcom/linkplay/medialib/LPMSLibraryPlayItem;

    move-result-object p1

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->getTrackImage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/linkplay/medialib/LPMSLibraryManager;->application:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/linkplay/medialib/FileUtils;->getInstance(Landroid/content/Context;)Lcom/linkplay/medialib/FileUtils;

    move-result-object v1

    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->getTrackImage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/linkplay/medialib/FileUtils;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->getTrackImage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/linkplay/medialib/FileUtils;->saveFile(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->getTrackImage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/linkplay/medialib/FileUtils;->getSDFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/linkplay/medialib/LPMSLibraryManager;->application:Landroid/app/Application;

    invoke-static {v2}, Lcom/linkplay/medialib/FinalDataUtil;->makeIPV4IP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/linkplay/medialib/LPMSLibraryManager;->getLocalIPUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->setTrackImage(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->getTrackImage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->getTrackImage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCount()I
    .locals 10

    const-string v0, "mime_type"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "_id"

    filled-new-array {v3, v0}, [Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Lcom/linkplay/medialib/LPMSLibraryManager;->application:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return v2

    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, ""

    if-eqz v3, :cond_2

    :try_start_2
    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_2

    const/16 v5, 0x2f

    :try_start_3
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :catch_0
    :cond_2
    :goto_1
    :try_start_4
    invoke-direct {p0, v4}, Lcom/linkplay/medialib/LPMSLibraryManager;->isSupportedSubType(Ljava/lang/String;)Z

    move-result v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :goto_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p0

    :catch_1
    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    :goto_4
    return v2
.end method

.method public searchAlbumSongs(Ljava/lang/String;Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;Lcom/linkplay/medialib/LPSearchMediaResultListener;)V
    .locals 1

    sget-object v0, Lcom/linkplay/medialib/ELocSearchType;->LP_ALBUM:Lcom/linkplay/medialib/ELocSearchType;

    invoke-direct {p0, p2, p1, v0, p3}, Lcom/linkplay/medialib/LPMSLibraryManager;->searchSongsByKey(Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;Ljava/lang/String;Lcom/linkplay/medialib/ELocSearchType;Lcom/linkplay/medialib/LPSearchMediaResultListener;)V

    return-void
.end method

.method public searchAlbums(Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;Lcom/linkplay/medialib/LPSearchMediaResultListener;)V
    .locals 1

    sget-object v0, Lcom/linkplay/medialib/ELocSearchType;->LP_ALBUM:Lcom/linkplay/medialib/ELocSearchType;

    invoke-direct {p0, p1, v0, p2}, Lcom/linkplay/medialib/LPMSLibraryManager;->search(Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;Lcom/linkplay/medialib/ELocSearchType;Lcom/linkplay/medialib/LPSearchMediaResultListener;)V

    return-void
.end method

.method public searchArtistSongs(Ljava/lang/String;Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;Lcom/linkplay/medialib/LPSearchMediaResultListener;)V
    .locals 1

    sget-object v0, Lcom/linkplay/medialib/ELocSearchType;->LP_ARTIST:Lcom/linkplay/medialib/ELocSearchType;

    invoke-direct {p0, p2, p1, v0, p3}, Lcom/linkplay/medialib/LPMSLibraryManager;->searchSongsByKey(Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;Ljava/lang/String;Lcom/linkplay/medialib/ELocSearchType;Lcom/linkplay/medialib/LPSearchMediaResultListener;)V

    return-void
.end method

.method public searchArtists(Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;Lcom/linkplay/medialib/LPSearchMediaResultListener;)V
    .locals 1

    sget-object v0, Lcom/linkplay/medialib/ELocSearchType;->LP_ARTIST:Lcom/linkplay/medialib/ELocSearchType;

    invoke-direct {p0, p1, v0, p2}, Lcom/linkplay/medialib/LPMSLibraryManager;->search(Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;Lcom/linkplay/medialib/ELocSearchType;Lcom/linkplay/medialib/LPSearchMediaResultListener;)V

    return-void
.end method

.method public searchSonglistSongs(Ljava/lang/String;Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;Lcom/linkplay/medialib/LPSearchMediaResultListener;)V
    .locals 2

    if-nez p2, :cond_0

    new-instance p2, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;

    invoke-direct {p2}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;-><init>()V

    :cond_0
    invoke-virtual {p2}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getCurrentPage()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    invoke-virtual {p2, v1}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->setCurrentPage(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getCurrentPage()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->setCurrentPage(I)V

    :goto_0
    invoke-virtual {p2}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getPerPage()I

    move-result v0

    if-ge v0, v1, :cond_2

    const/16 v0, 0x32

    invoke-virtual {p2, v0}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->setPerPage(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getPerPage()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->setPerPage(I)V

    :goto_1
    const-string v0, "SONGLIST-LOCAL"

    invoke-virtual {p2, v0}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->setMediaType(Ljava/lang/String;)V

    sget-object v0, Lcom/linkplay/lpmdpkit/LPPlaySourceType;->LP_LOCALMUSIC:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->setMediaSource(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/linkplay/medialib/LPMSLibraryManager$4;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/linkplay/medialib/LPMSLibraryManager$4;-><init>(Lcom/linkplay/medialib/LPMSLibraryManager;Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;Ljava/lang/String;Lcom/linkplay/medialib/LPSearchMediaResultListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public searchSonglists(Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;Lcom/linkplay/medialib/LPSearchMediaResultListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 289
    new-instance p1, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;

    invoke-direct {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;-><init>()V

    .line 290
    :cond_0
    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getCurrentPage()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 291
    invoke-virtual {p1, v1}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->setCurrentPage(I)V

    goto :goto_0

    .line 292
    :cond_1
    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getCurrentPage()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->setCurrentPage(I)V

    .line 293
    :goto_0
    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getPerPage()I

    move-result v0

    if-ge v0, v1, :cond_2

    const/16 v0, 0x32

    .line 294
    invoke-virtual {p1, v0}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->setPerPage(I)V

    goto :goto_1

    .line 295
    :cond_2
    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getPerPage()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->setPerPage(I)V

    .line 296
    :goto_1
    const-string v0, "SONGLIST-LOCAL"

    invoke-virtual {p1, v0}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->setMediaType(Ljava/lang/String;)V

    .line 297
    sget-object v0, Lcom/linkplay/lpmdpkit/LPPlaySourceType;->LP_LOCALMUSIC:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->setMediaSource(Ljava/lang/String;)V

    .line 298
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/linkplay/medialib/LPMSLibraryManager$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/linkplay/medialib/LPMSLibraryManager$3;-><init>(Lcom/linkplay/medialib/LPMSLibraryManager;Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;Lcom/linkplay/medialib/LPSearchMediaResultListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 299
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public searchSongs(Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;Lcom/linkplay/medialib/LPSearchMediaResultListener;)V
    .locals 1

    sget-object v0, Lcom/linkplay/medialib/ELocSearchType;->LP_SONGS:Lcom/linkplay/medialib/ELocSearchType;

    invoke-direct {p0, p1, v0, p2}, Lcom/linkplay/medialib/LPMSLibraryManager;->search(Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;Lcom/linkplay/medialib/ELocSearchType;Lcom/linkplay/medialib/LPSearchMediaResultListener;)V

    return-void
.end method
