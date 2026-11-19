.class abstract Landroidx/media3/session/LegacyConversions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/LegacyConversions$ConversionException;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/common/collect/ImmutableSet;


# direct methods
.method static constructor <clinit>()V
    .locals 34

    const-string v25, "android.media.metadata.DOWNLOAD_STATUS"

    const-string v26, "androidx.media3.session.EXTRAS_KEY_MEDIA_TYPE_COMPAT"

    const-string v1, "android.media.metadata.COMPOSER"

    const-string v2, "android.media.metadata.COMPILATION"

    const-string v3, "android.media.metadata.DATE"

    const-string v4, "android.media.metadata.YEAR"

    const-string v5, "android.media.metadata.GENRE"

    const-string v6, "android.media.metadata.TRACK_NUMBER"

    const-string v7, "android.media.metadata.NUM_TRACKS"

    const-string v8, "android.media.metadata.DISC_NUMBER"

    const-string v9, "android.media.metadata.ALBUM_ARTIST"

    const-string v10, "android.media.metadata.ART"

    const-string v11, "android.media.metadata.ART_URI"

    const-string v12, "android.media.metadata.ALBUM_ART"

    const-string v13, "android.media.metadata.ALBUM_ART_URI"

    const-string v14, "android.media.metadata.USER_RATING"

    const-string v15, "android.media.metadata.RATING"

    const-string v16, "android.media.metadata.DISPLAY_TITLE"

    const-string v17, "android.media.metadata.DISPLAY_SUBTITLE"

    const-string v18, "android.media.metadata.DISPLAY_DESCRIPTION"

    const-string v19, "android.media.metadata.DISPLAY_ICON"

    const-string v20, "android.media.metadata.DISPLAY_ICON_URI"

    const-string v21, "android.media.metadata.MEDIA_ID"

    const-string v22, "android.media.metadata.MEDIA_URI"

    const-string v23, "android.media.metadata.BT_FOLDER_TYPE"

    const-string v24, "android.media.metadata.ADVERTISEMENT"

    filled-new-array/range {v1 .. v26}, [Ljava/lang/String;

    move-result-object v33

    const-string v27, "android.media.metadata.TITLE"

    const-string v28, "android.media.metadata.ARTIST"

    const-string v29, "android.media.metadata.DURATION"

    const-string v30, "android.media.metadata.ALBUM"

    const-string v31, "android.media.metadata.AUTHOR"

    const-string v32, "android.media.metadata.WRITER"

    invoke-static/range {v27 .. v33}, Lcom/google/common/collect/ImmutableSet;->x(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/LegacyConversions;->a:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method public static a(Landroidx/media3/common/MediaItem;Landroid/graphics/Bitmap;)Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;
    .locals 1

    invoke-static {p0, p1}, Landroidx/media3/session/LegacyConversions;->i(Landroidx/media3/common/MediaItem;Landroid/graphics/Bitmap;)Landroidx/media3/session/legacy/MediaDescriptionCompat;

    move-result-object p1

    iget-object p0, p0, Landroidx/media3/common/MediaItem;->d:Landroidx/media3/common/MediaMetadata;

    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->r:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata;->s:Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    new-instance p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;

    invoke-direct {p0, p1, v0}, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;-><init>(Landroidx/media3/session/legacy/MediaDescriptionCompat;I)V

    return-object p0
.end method

.method public static b(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;J)J
    .locals 8

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    move-wide v2, v0

    goto :goto_1

    :cond_0
    iget-wide v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->d:J

    goto :goto_0

    :goto_1
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/session/LegacyConversions;->c(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;J)J

    move-result-wide v4

    invoke-static {p1}, Landroidx/media3/session/LegacyConversions;->d(Landroidx/media3/session/legacy/MediaMetadataCompat;)J

    move-result-wide v6

    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v6, p0

    if-nez p0, :cond_1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_1
    invoke-static/range {v2 .. v7}, Landroidx/media3/common/util/Util;->k(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static c(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;J)J
    .locals 14

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    iget-wide v2, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->c:J

    iget v4, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->b:I

    const/4 v5, 0x3

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-ne v4, v5, :cond_3

    cmp-long v4, p2, v6

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_0
    iget v5, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->e:F

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->i:J

    sub-long/2addr v8, v10

    :goto_1
    long-to-float p0, v8

    mul-float/2addr v5, p0

    float-to-long v4, v5

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_3
    move-wide v8, v2

    invoke-static {p1}, Landroidx/media3/session/LegacyConversions;->d(Landroidx/media3/session/legacy/MediaMetadataCompat;)J

    move-result-wide v12

    cmp-long p0, v12, v6

    if-nez p0, :cond_4

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_4
    const-wide/16 v10, 0x0

    invoke-static/range {v8 .. v13}, Landroidx/media3/common/util/Util;->k(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static d(Landroidx/media3/session/legacy/MediaMetadataCompat;)J
    .locals 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p0, :cond_2

    iget-object v2, p0, Landroidx/media3/session/legacy/MediaMetadataCompat;->b:Landroid/os/Bundle;

    const-string v3, "android.media.metadata.DURATION"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Landroidx/media3/session/legacy/MediaMetadataCompat;->a(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-gtz p0, :cond_1

    return-wide v0

    :cond_1
    return-wide v2

    :cond_2
    :goto_0
    return-wide v0
.end method

.method public static e(I)J
    .locals 2

    packed-switch p0, :pswitch_data_0

    const-string v0, "Unrecognized FolderType: "

    invoke-static {p0, v0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0

    :pswitch_0
    const-wide/16 v0, 0x6

    return-wide v0

    :pswitch_1
    const-wide/16 v0, 0x5

    return-wide v0

    :pswitch_2
    const-wide/16 v0, 0x4

    return-wide v0

    :pswitch_3
    const-wide/16 v0, 0x3

    return-wide v0

    :pswitch_4
    const-wide/16 v0, 0x2

    return-wide v0

    :pswitch_5
    const-wide/16 v0, 0x1

    return-wide v0

    :pswitch_6
    const-wide/16 v0, 0x0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static f(J)I
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-wide/16 v2, 0x1

    cmp-long v0, p0, v2

    if-nez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-wide/16 v2, 0x2

    cmp-long v0, p0, v2

    if-nez v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const-wide/16 v2, 0x3

    cmp-long v0, p0, v2

    if-nez v0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const-wide/16 v2, 0x4

    cmp-long v0, p0, v2

    if-nez v0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const-wide/16 v2, 0x5

    cmp-long v0, p0, v2

    if-nez v0, :cond_5

    const/4 p0, 0x5

    return p0

    :cond_5
    const-wide/16 v2, 0x6

    cmp-long p0, p0, v2

    if-nez p0, :cond_6

    const/4 p0, 0x6

    return p0

    :cond_6
    return v1
.end method

.method public static g(I)I
    .locals 2

    const/16 v0, -0x6e

    if-eq p0, v0, :cond_4

    const/16 v0, -0x6d

    if-eq p0, v0, :cond_3

    const/4 v0, -0x6

    if-eq p0, v0, :cond_2

    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x3

    return p0

    :pswitch_1
    const/4 p0, 0x4

    return p0

    :pswitch_2
    const/4 p0, 0x5

    return p0

    :pswitch_3
    const/4 p0, 0x6

    return p0

    :pswitch_4
    const/4 p0, 0x7

    return p0

    :pswitch_5
    const/16 p0, 0x9

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x2

    return p0

    :cond_3
    const/16 p0, 0xb

    return p0

    :cond_4
    const/16 p0, 0x8

    return p0

    nop

    :pswitch_data_0
    .packed-switch -0x6b
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static h(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .locals 4

    const-string v0, "androidx.media.MediaBrowserCompat.Extras.KEY_ROOT_CHILDREN_SUPPORTED_FLAGS"

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const/4 p0, -0x1

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "androidx.media3.session.LibraryParams.Extras.KEY_ROOT_CHILDREN_BROWSABLE_ONLY"

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    new-instance p0, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;

    invoke-direct {p0}, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->d:Landroid/os/Bundle;

    const-string v0, "android.service.media.extra.RECENT"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->a:Z

    const-string v0, "android.service.media.extra.OFFLINE"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->b:Z

    const-string v0, "android.service.media.extra.SUGGESTED"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->c:Z

    new-instance v0, Landroidx/media3/session/MediaLibraryService$LibraryParams;

    iget-object v1, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->d:Landroid/os/Bundle;

    iget-boolean v2, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->a:Z

    iget-boolean v3, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->b:Z

    iget-boolean p0, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->c:Z

    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/media3/session/MediaLibraryService$LibraryParams;-><init>(Landroid/os/Bundle;ZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p0, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;

    invoke-direct {p0}, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->d:Landroid/os/Bundle;

    new-instance p1, Landroidx/media3/session/MediaLibraryService$LibraryParams;

    iget-object v0, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->d:Landroid/os/Bundle;

    iget-boolean v1, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->a:Z

    iget-boolean v2, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->b:Z

    iget-boolean p0, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->c:Z

    invoke-direct {p1, v0, v1, v2, p0}, Landroidx/media3/session/MediaLibraryService$LibraryParams;-><init>(Landroid/os/Bundle;ZZZ)V

    return-object p1
.end method

.method public static i(Landroidx/media3/common/MediaItem;Landroid/graphics/Bitmap;)Landroidx/media3/session/legacy/MediaDescriptionCompat;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;

    invoke-direct {v2}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;-><init>()V

    iget-object v3, v0, Landroidx/media3/common/MediaItem;->a:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Landroidx/media3/common/MediaItem;->a:Ljava/lang/String;

    :goto_0
    iput-object v3, v2, Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;->a:Ljava/lang/String;

    iget-object v3, v0, Landroidx/media3/common/MediaItem;->d:Landroidx/media3/common/MediaMetadata;

    if-eqz v1, :cond_1

    iput-object v1, v2, Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;->e:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v1, v3, Landroidx/media3/common/MediaMetadata;->J:Landroid/os/Bundle;

    iget-object v5, v3, Landroidx/media3/common/MediaMetadata;->a:Ljava/lang/CharSequence;

    iget-object v6, v3, Landroidx/media3/common/MediaMetadata;->g:Ljava/lang/CharSequence;

    iget-object v7, v3, Landroidx/media3/common/MediaMetadata;->f:Ljava/lang/CharSequence;

    iget-object v8, v3, Landroidx/media3/common/MediaMetadata;->K:Lcom/google/common/collect/ImmutableList;

    iget-object v9, v3, Landroidx/media3/common/MediaMetadata;->I:Ljava/lang/Integer;

    iget-object v10, v3, Landroidx/media3/common/MediaMetadata;->q:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v1, v11

    :cond_2
    const/4 v11, -0x1

    const/4 v13, 0x1

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eq v14, v11, :cond_3

    move v14, v13

    goto :goto_1

    :cond_3
    const/4 v14, 0x0

    :goto_1
    if-eqz v9, :cond_4

    move v15, v13

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    :goto_2
    if-nez v14, :cond_6

    if-eqz v15, :cond_5

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    goto :goto_5

    :cond_6
    :goto_3
    if-nez v1, :cond_7

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_7
    if-eqz v14, :cond_8

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v14, 0x0

    invoke-static {v10}, Landroidx/media3/session/LegacyConversions;->e(I)J

    move-result-wide v11

    const-string v10, "android.media.extra.BT_FOLDER_TYPE"

    invoke-virtual {v1, v10, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_4

    :cond_8
    const/4 v14, 0x0

    :goto_4
    if-eqz v15, :cond_9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v9, v9

    const-string v11, "androidx.media3.session.EXTRAS_KEY_MEDIA_TYPE_COMPAT"

    invoke-virtual {v1, v11, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_9
    :goto_5
    invoke-virtual {v8}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_b

    if-nez v1, :cond_a

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_a
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v8, "androidx.media.utils.extras.CUSTOM_BROWSER_ACTION_ID_LIST"

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_b
    iget-object v8, v3, Landroidx/media3/common/MediaMetadata;->e:Ljava/lang/CharSequence;

    if-eqz v8, :cond_d

    if-nez v1, :cond_c

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_c
    const-string v4, "androidx.media3.mediadescriptioncompat.title"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_6
    move-object v13, v6

    move-object v12, v7

    move-object v11, v8

    goto/16 :goto_b

    :cond_d
    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/CharSequence;

    move v10, v14

    move v11, v10

    :goto_7
    const/4 v12, 0x2

    if-ge v10, v8, :cond_18

    sget-object v15, Landroidx/media3/session/legacy/MediaMetadataCompat;->f:[Ljava/lang/String;

    array-length v4, v15

    if-ge v11, v4, :cond_18

    add-int/lit8 v4, v11, 0x1

    aget-object v11, v15, v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    :goto_8
    const/4 v12, -0x1

    goto/16 :goto_9

    :sswitch_0
    const-string v12, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    goto :goto_8

    :cond_e
    const/16 v12, 0x8

    goto/16 :goto_9

    :sswitch_1
    const-string v12, "android.media.metadata.TITLE"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    goto :goto_8

    :cond_f
    const/4 v12, 0x7

    goto :goto_9

    :sswitch_2
    const-string v12, "android.media.metadata.ALBUM"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10

    goto :goto_8

    :cond_10
    const/4 v12, 0x6

    goto :goto_9

    :sswitch_3
    const-string v12, "android.media.metadata.COMPOSER"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    goto :goto_8

    :cond_11
    const/4 v12, 0x5

    goto :goto_9

    :sswitch_4
    const-string v12, "android.media.metadata.DISPLAY_DESCRIPTION"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_12

    goto :goto_8

    :cond_12
    const/4 v12, 0x4

    goto :goto_9

    :sswitch_5
    const-string v12, "android.media.metadata.DISPLAY_SUBTITLE"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_13

    goto :goto_8

    :cond_13
    move v12, v8

    goto :goto_9

    :sswitch_6
    const-string v15, "android.media.metadata.WRITER"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_16

    goto :goto_8

    :sswitch_7
    const-string v12, "android.media.metadata.AUTHOR"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_14

    goto :goto_8

    :cond_14
    move v12, v13

    goto :goto_9

    :sswitch_8
    const-string v12, "android.media.metadata.ARTIST"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_15

    goto :goto_8

    :cond_15
    move v12, v14

    :cond_16
    :goto_9
    packed-switch v12, :pswitch_data_0

    :pswitch_0
    const/4 v11, 0x0

    goto :goto_a

    :pswitch_1
    iget-object v11, v3, Landroidx/media3/common/MediaMetadata;->d:Ljava/lang/CharSequence;

    goto :goto_a

    :pswitch_2
    move-object v11, v5

    goto :goto_a

    :pswitch_3
    iget-object v11, v3, Landroidx/media3/common/MediaMetadata;->c:Ljava/lang/CharSequence;

    goto :goto_a

    :pswitch_4
    iget-object v11, v3, Landroidx/media3/common/MediaMetadata;->B:Ljava/lang/CharSequence;

    goto :goto_a

    :pswitch_5
    move-object v11, v6

    goto :goto_a

    :pswitch_6
    move-object v11, v7

    goto :goto_a

    :pswitch_7
    iget-object v11, v3, Landroidx/media3/common/MediaMetadata;->A:Ljava/lang/CharSequence;

    goto :goto_a

    :pswitch_8
    iget-object v11, v3, Landroidx/media3/common/MediaMetadata;->b:Ljava/lang/CharSequence;

    :goto_a
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_17

    add-int/lit8 v12, v10, 0x1

    aput-object v11, v9, v10

    move v10, v12

    :cond_17
    move v11, v4

    goto/16 :goto_7

    :cond_18
    aget-object v8, v9, v14

    aget-object v7, v9, v13

    aget-object v6, v9, v12

    goto/16 :goto_6

    :goto_b
    iput-object v11, v2, Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;->b:Ljava/lang/CharSequence;

    iput-object v12, v2, Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;->c:Ljava/lang/CharSequence;

    iput-object v13, v2, Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;->d:Ljava/lang/CharSequence;

    iget-object v15, v3, Landroidx/media3/common/MediaMetadata;->n:Landroid/net/Uri;

    iput-object v15, v2, Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;->f:Landroid/net/Uri;

    iget-object v0, v0, Landroidx/media3/common/MediaItem;->f:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object v0, v0, Landroidx/media3/common/MediaItem$RequestMetadata;->a:Landroid/net/Uri;

    iput-object v0, v2, Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;->h:Landroid/net/Uri;

    iput-object v1, v2, Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;->g:Landroid/os/Bundle;

    new-instance v9, Landroidx/media3/session/legacy/MediaDescriptionCompat;

    iget-object v10, v2, Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;->a:Ljava/lang/String;

    iget-object v14, v2, Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;->e:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v16, v1

    invoke-direct/range {v9 .. v17}, Landroidx/media3/session/legacy/MediaDescriptionCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V

    return-object v9

    :sswitch_data_0
    .sparse-switch
        -0x6e7c6d63 -> :sswitch_8
        -0x6e522b1f -> :sswitch_7
        -0x48f6a837 -> :sswitch_6
        0xb9aeaeb -> :sswitch_5
        0x3f1c9429 -> :sswitch_4
        0x6467f2f6 -> :sswitch_3
        0x70098439 -> :sswitch_2
        0x71142822 -> :sswitch_1
        0x7522ca0d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static j(Landroidx/media3/session/legacy/MediaDescriptionCompat;)Landroidx/media3/common/MediaItem;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->b:Ljava/lang/String;

    new-instance v1, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v1}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iput-object v0, v1, Landroidx/media3/common/MediaItem$Builder;->a:Ljava/lang/String;

    new-instance v0, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;-><init>()V

    iget-object v2, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->j:Landroid/net/Uri;

    iput-object v2, v0, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;->a:Landroid/net/Uri;

    new-instance v2, Landroidx/media3/common/MediaItem$RequestMetadata;

    invoke-direct {v2, v0}, Landroidx/media3/common/MediaItem$RequestMetadata;-><init>(Landroidx/media3/common/MediaItem$RequestMetadata$Builder;)V

    iput-object v2, v1, Landroidx/media3/common/MediaItem$Builder;->n:Landroidx/media3/common/MediaItem$RequestMetadata;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/media3/session/LegacyConversions;->l(Landroidx/media3/session/legacy/MediaDescriptionCompat;I)Landroidx/media3/common/MediaMetadata;

    move-result-object p0

    iput-object p0, v1, Landroidx/media3/common/MediaItem$Builder;->l:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v1}, Landroidx/media3/common/MediaItem$Builder;->a()Landroidx/media3/common/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/lang/String;Landroidx/media3/session/legacy/MediaMetadataCompat;I)Landroidx/media3/common/MediaItem;
    .locals 2

    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    if-eqz p0, :cond_0

    iput-object p0, v0, Landroidx/media3/common/MediaItem$Builder;->a:Ljava/lang/String;

    :cond_0
    const-string p0, "android.media.metadata.MEDIA_URI"

    iget-object v1, p1, Landroidx/media3/session/legacy/MediaMetadataCompat;->b:Landroid/os/Bundle;

    invoke-virtual {v1, p0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    new-instance v1, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;

    invoke-direct {v1}, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;-><init>()V

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    iput-object p0, v1, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;->a:Landroid/net/Uri;

    new-instance p0, Landroidx/media3/common/MediaItem$RequestMetadata;

    invoke-direct {p0, v1}, Landroidx/media3/common/MediaItem$RequestMetadata;-><init>(Landroidx/media3/common/MediaItem$RequestMetadata$Builder;)V

    iput-object p0, v0, Landroidx/media3/common/MediaItem$Builder;->n:Landroidx/media3/common/MediaItem$RequestMetadata;

    :cond_2
    invoke-static {p1, p2}, Landroidx/media3/session/LegacyConversions;->m(Landroidx/media3/session/legacy/MediaMetadataCompat;I)Landroidx/media3/common/MediaMetadata;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/common/MediaItem$Builder;->l:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->a()Landroidx/media3/common/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static l(Landroidx/media3/session/legacy/MediaDescriptionCompat;I)Landroidx/media3/common/MediaMetadata;
    .locals 6

    if-nez p0, :cond_0

    sget-object p0, Landroidx/media3/common/MediaMetadata;->L:Landroidx/media3/common/MediaMetadata;

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->c:Ljava/lang/CharSequence;

    new-instance v1, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {v1}, Landroidx/media3/common/MediaMetadata$Builder;-><init>()V

    iget-object v2, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->d:Ljava/lang/CharSequence;

    iput-object v2, v1, Landroidx/media3/common/MediaMetadata$Builder;->f:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->e:Ljava/lang/CharSequence;

    iput-object v2, v1, Landroidx/media3/common/MediaMetadata$Builder;->g:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->h:Landroid/net/Uri;

    iput-object v2, v1, Landroidx/media3/common/MediaMetadata$Builder;->n:Landroid/net/Uri;

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    move-object v3, v2

    goto :goto_0

    :pswitch_0
    new-instance v3, Landroidx/media3/session/legacy/RatingCompat;

    const/high16 v4, -0x40800000    # -1.0f

    invoke-direct {v3, p1, v4}, Landroidx/media3/session/legacy/RatingCompat;-><init>(IF)V

    :goto_0
    invoke-static {v3}, Landroidx/media3/session/LegacyConversions;->q(Landroidx/media3/session/legacy/RatingCompat;)Landroidx/media3/common/Rating;

    move-result-object p1

    iput-object p1, v1, Landroidx/media3/common/MediaMetadata$Builder;->i:Landroidx/media3/common/Rating;

    iget-object p1, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->f:Landroid/graphics/Bitmap;

    if-nez p1, :cond_1

    move-object p1, v2

    goto :goto_4

    :cond_1
    iget-object v3, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->g:[B

    if-nez v3, :cond_2

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->g:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    const-string v3, "Failed to compress MediaDescriptionCompat artwork"

    invoke-static {v3, p1}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    iget-object p1, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->g:[B

    :goto_4
    if-eqz p1, :cond_3

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Landroidx/media3/common/MediaMetadata$Builder;->b([BLjava/lang/Integer;)V

    :cond_3
    iget-object p0, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->i:Landroid/os/Bundle;

    if-nez p0, :cond_4

    goto :goto_5

    :cond_4
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_5
    if-eqz v2, :cond_5

    const-string p0, "android.media.extra.BT_FOLDER_TYPE"

    invoke-virtual {v2, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v2, p0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/media3/session/LegacyConversions;->f(J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v1, Landroidx/media3/common/MediaMetadata$Builder;->q:Ljava/lang/Integer;

    invoke-virtual {v2, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_5
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p0, v1, Landroidx/media3/common/MediaMetadata$Builder;->r:Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    const-string p0, "androidx.media3.session.EXTRAS_KEY_MEDIA_TYPE_COMPAT"

    invoke-virtual {v2, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v2, p0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    long-to-int p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v1, Landroidx/media3/common/MediaMetadata$Builder;->H:Ljava/lang/Integer;

    invoke-virtual {v2, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_6
    if-eqz v2, :cond_7

    const-string p0, "androidx.media.utils.extras.CUSTOM_BROWSER_ACTION_ID_LIST"

    invoke-virtual {v2, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v2, p0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    iput-object p0, v1, Landroidx/media3/common/MediaMetadata$Builder;->J:Lcom/google/common/collect/ImmutableList;

    :cond_7
    if-eqz v2, :cond_8

    const-string p0, "androidx.media3.mediadescriptioncompat.title"

    invoke-virtual {v2, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v2, p0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v1, Landroidx/media3/common/MediaMetadata$Builder;->a:Ljava/lang/CharSequence;

    iput-object v0, v1, Landroidx/media3/common/MediaMetadata$Builder;->e:Ljava/lang/CharSequence;

    invoke-virtual {v2, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    iput-object v0, v1, Landroidx/media3/common/MediaMetadata$Builder;->a:Ljava/lang/CharSequence;

    :goto_6
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9

    iput-object v2, v1, Landroidx/media3/common/MediaMetadata$Builder;->I:Landroid/os/Bundle;

    :cond_9
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p0, v1, Landroidx/media3/common/MediaMetadata$Builder;->s:Ljava/lang/Boolean;

    new-instance p0, Landroidx/media3/common/MediaMetadata;

    invoke-direct {p0, v1}, Landroidx/media3/common/MediaMetadata;-><init>(Landroidx/media3/common/MediaMetadata$Builder;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static m(Landroidx/media3/session/legacy/MediaMetadataCompat;I)Landroidx/media3/common/MediaMetadata;
    .locals 12

    const-string v0, "Failed to retrieve a key as Rating."

    if-nez p0, :cond_0

    sget-object p0, Landroidx/media3/common/MediaMetadata;->L:Landroidx/media3/common/MediaMetadata;

    return-object p0

    :cond_0
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaMetadataCompat;->b:Landroid/os/Bundle;

    new-instance v2, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {v2}, Landroidx/media3/common/MediaMetadata$Builder;-><init>()V

    const-string v3, "android.media.metadata.DISPLAY_TITLE"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    const-string v6, "android.media.metadata.DISPLAY_SUBTITLE"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    const-string v7, "android.media.metadata.DISPLAY_DESCRIPTION"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_1

    :cond_1
    new-array v3, v4, [Ljava/lang/CharSequence;

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v6, v4, :cond_3

    sget-object v8, Landroidx/media3/session/legacy/MediaMetadataCompat;->f:[Ljava/lang/String;

    array-length v9, v8

    if-ge v7, v9, :cond_3

    add-int/lit8 v9, v7, 0x1

    aget-object v7, v8, v7

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    add-int/lit8 v8, v6, 0x1

    aput-object v7, v3, v6

    move v6, v8

    :cond_2
    move v7, v9

    goto :goto_0

    :cond_3
    aget-object v6, v3, v5

    const/4 v7, 0x1

    aget-object v7, v3, v7

    const/4 v8, 0x2

    aget-object v3, v3, v8

    move-object v11, v7

    move-object v7, v3

    move-object v3, v6

    move-object v6, v11

    :goto_1
    const-string v8, "android.media.metadata.TITLE"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    move-object v8, v3

    :goto_2
    iput-object v8, v2, Landroidx/media3/common/MediaMetadata$Builder;->a:Ljava/lang/CharSequence;

    iput-object v3, v2, Landroidx/media3/common/MediaMetadata$Builder;->e:Ljava/lang/CharSequence;

    iput-object v6, v2, Landroidx/media3/common/MediaMetadata$Builder;->f:Ljava/lang/CharSequence;

    iput-object v7, v2, Landroidx/media3/common/MediaMetadata$Builder;->g:Ljava/lang/CharSequence;

    const-string v3, "android.media.metadata.ARTIST"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroidx/media3/common/MediaMetadata$Builder;->b:Ljava/lang/CharSequence;

    const-string v3, "android.media.metadata.ALBUM"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroidx/media3/common/MediaMetadata$Builder;->c:Ljava/lang/CharSequence;

    const-string v3, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroidx/media3/common/MediaMetadata$Builder;->d:Ljava/lang/CharSequence;

    const-string v3, "android.media.metadata.RATING"

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/session/legacy/RatingCompat;->a(Landroid/os/Parcelable;)Landroidx/media3/session/legacy/RatingCompat;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    invoke-static {v0, v3}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v6

    :goto_3
    invoke-static {v3}, Landroidx/media3/session/LegacyConversions;->q(Landroidx/media3/session/legacy/RatingCompat;)Landroidx/media3/common/Rating;

    move-result-object v3

    iput-object v3, v2, Landroidx/media3/common/MediaMetadata$Builder;->j:Landroidx/media3/common/Rating;

    const-string v3, "android.media.metadata.DURATION"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0, v3}, Landroidx/media3/session/legacy/MediaMetadataCompat;->a(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-ltz v3, :cond_5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/media3/common/MediaMetadata$Builder;->c(Ljava/lang/Long;)V

    :cond_5
    const-string v3, "android.media.metadata.USER_RATING"

    :try_start_1
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/session/legacy/RatingCompat;->a(Landroid/os/Parcelable;)Landroidx/media3/session/legacy/RatingCompat;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v3

    invoke-static {v0, v3}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v6

    :goto_4
    invoke-static {v0}, Landroidx/media3/session/LegacyConversions;->q(Landroidx/media3/session/legacy/RatingCompat;)Landroidx/media3/common/Rating;

    move-result-object v0

    if-eqz v0, :cond_6

    iput-object v0, v2, Landroidx/media3/common/MediaMetadata$Builder;->i:Landroidx/media3/common/Rating;

    goto :goto_6

    :cond_6
    packed-switch p1, :pswitch_data_0

    move-object v0, v6

    goto :goto_5

    :pswitch_0
    new-instance v0, Landroidx/media3/session/legacy/RatingCompat;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-direct {v0, p1, v3}, Landroidx/media3/session/legacy/RatingCompat;-><init>(IF)V

    :goto_5
    invoke-static {v0}, Landroidx/media3/session/LegacyConversions;->q(Landroidx/media3/session/legacy/RatingCompat;)Landroidx/media3/common/Rating;

    move-result-object p1

    iput-object p1, v2, Landroidx/media3/common/MediaMetadata$Builder;->i:Landroidx/media3/common/Rating;

    :goto_6
    const-string p1, "android.media.metadata.YEAR"

    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1}, Landroidx/media3/session/legacy/MediaMetadataCompat;->a(Ljava/lang/String;)J

    move-result-wide v7

    long-to-int p1, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v2, Landroidx/media3/common/MediaMetadata$Builder;->t:Ljava/lang/Integer;

    :cond_7
    const-string p1, "android.media.metadata.ALBUM_ART_URI"

    const-string v0, "android.media.metadata.ART_URI"

    const-string v3, "android.media.metadata.DISPLAY_ICON_URI"

    filled-new-array {v3, p1, v0}, [Ljava/lang/String;

    move-result-object p1

    move v0, v5

    :goto_7
    if-ge v0, v4, :cond_9

    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_9
    move-object p1, v6

    :goto_8
    if-eqz p1, :cond_a

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_9

    :cond_a
    move-object p1, v6

    :goto_9
    if-eqz p1, :cond_b

    iput-object p1, v2, Landroidx/media3/common/MediaMetadata$Builder;->n:Landroid/net/Uri;

    :cond_b
    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaMetadataCompat;->b()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_c

    goto :goto_d

    :cond_c
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaMetadataCompat;->d:[B

    if-nez v0, :cond_d

    :try_start_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/session/legacy/MediaMetadataCompat;->d:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_c

    :catch_2
    move-exception p1

    goto :goto_b

    :catchall_0
    move-exception p1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_a

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :goto_b
    const-string v0, "Failed to compress MediaMetadataCompat artwork"

    invoke-static {v0, p1}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    :goto_c
    iget-object v6, p0, Landroidx/media3/session/legacy/MediaMetadataCompat;->d:[B

    :goto_d
    if-eqz v6, :cond_e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v6, p1}, Landroidx/media3/common/MediaMetadata$Builder;->b([BLjava/lang/Integer;)V

    :cond_e
    const-string p1, "android.media.metadata.BT_FOLDER_TYPE"

    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Landroidx/media3/common/MediaMetadata$Builder;->r:Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Landroidx/media3/session/legacy/MediaMetadataCompat;->a(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/media3/session/LegacyConversions;->f(J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v2, Landroidx/media3/common/MediaMetadata$Builder;->q:Ljava/lang/Integer;

    :cond_f
    const-string p1, "androidx.media3.session.EXTRAS_KEY_MEDIA_TYPE_COMPAT"

    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, p1}, Landroidx/media3/session/legacy/MediaMetadataCompat;->a(Ljava/lang/String;)J

    move-result-wide p0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v2, Landroidx/media3/common/MediaMetadata$Builder;->H:Ljava/lang/Integer;

    :cond_10
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p0, v2, Landroidx/media3/common/MediaMetadata$Builder;->s:Ljava/lang/Boolean;

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    sget-object p1, Landroidx/media3/session/LegacyConversions;->a:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableCollection;->p()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_e

    :cond_11
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_12

    iput-object p0, v2, Landroidx/media3/common/MediaMetadata$Builder;->I:Landroid/os/Bundle;

    :cond_12
    new-instance p0, Landroidx/media3/common/MediaMetadata;

    invoke-direct {p0, v2}, Landroidx/media3/common/MediaMetadata;-><init>(Landroidx/media3/common/MediaMetadata$Builder;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static n(Landroidx/media3/common/MediaMetadata;Ljava/lang/String;Landroid/net/Uri;JLandroid/graphics/Bitmap;)Landroidx/media3/session/legacy/MediaMetadataCompat;
    .locals 6

    new-instance v0, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;

    invoke-direct {v0}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;-><init>()V

    const-string v1, "android.media.metadata.MEDIA_ID"

    invoke-virtual {v0, v1, p1}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->a:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->J:Landroid/os/Bundle;

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->q:Ljava/lang/Integer;

    iget-object v3, p0, Landroidx/media3/common/MediaMetadata;->n:Landroid/net/Uri;

    if-eqz p1, :cond_0

    const-string v4, "android.media.metadata.TITLE"

    invoke-virtual {v0, p1, v4}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->e(Ljava/lang/CharSequence;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->e:Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    const-string v4, "android.media.metadata.DISPLAY_TITLE"

    invoke-virtual {v0, p1, v4}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->e(Ljava/lang/CharSequence;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->f:Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    const-string v4, "android.media.metadata.DISPLAY_SUBTITLE"

    invoke-virtual {v0, p1, v4}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->e(Ljava/lang/CharSequence;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->g:Ljava/lang/CharSequence;

    if-eqz p1, :cond_3

    const-string v4, "android.media.metadata.DISPLAY_DESCRIPTION"

    invoke-virtual {v0, p1, v4}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->e(Ljava/lang/CharSequence;Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->b:Ljava/lang/CharSequence;

    if-eqz p1, :cond_4

    const-string v4, "android.media.metadata.ARTIST"

    invoke-virtual {v0, p1, v4}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->e(Ljava/lang/CharSequence;Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->c:Ljava/lang/CharSequence;

    if-eqz p1, :cond_5

    const-string v4, "android.media.metadata.ALBUM"

    invoke-virtual {v0, p1, v4}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->e(Ljava/lang/CharSequence;Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->d:Ljava/lang/CharSequence;

    if-eqz p1, :cond_6

    const-string v4, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {v0, p1, v4}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->e(Ljava/lang/CharSequence;Ljava/lang/String;)V

    :cond_6
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->u:Ljava/lang/Integer;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v4, p1

    const-string p1, "android.media.metadata.YEAR"

    invoke-virtual {v0, v4, v5, p1}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->b(JLjava/lang/String;)V

    :cond_7
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->A:Ljava/lang/CharSequence;

    if-eqz p1, :cond_8

    const-string v4, "android.media.metadata.WRITER"

    invoke-virtual {v0, p1, v4}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->e(Ljava/lang/CharSequence;Ljava/lang/String;)V

    :cond_8
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->B:Ljava/lang/CharSequence;

    if-eqz p1, :cond_9

    const-string v4, "android.media.metadata.COMPOSER"

    invoke-virtual {v0, p1, v4}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->e(Ljava/lang/CharSequence;Ljava/lang/String;)V

    :cond_9
    if-eqz p2, :cond_a

    const-string p1, "android.media.metadata.MEDIA_URI"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    if-eqz v3, :cond_b

    const-string p1, "android.media.metadata.DISPLAY_ICON_URI"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "android.media.metadata.ALBUM_ART_URI"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "android.media.metadata.ART_URI"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-eqz p5, :cond_c

    const-string p1, "android.media.metadata.DISPLAY_ICON"

    invoke-virtual {v0, p5, p1}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    const-string p1, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v0, p5, p1}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_c
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroidx/media3/session/LegacyConversions;->e(I)J

    move-result-wide p1

    const-string p5, "android.media.metadata.BT_FOLDER_TYPE"

    invoke-virtual {v0, p1, p2, p5}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->b(JLjava/lang/String;)V

    :cond_d
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p5, p3, p1

    if-nez p5, :cond_e

    iget-object p5, p0, Landroidx/media3/common/MediaMetadata;->h:Ljava/lang/Long;

    if-eqz p5, :cond_e

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    :cond_e
    cmp-long p1, p3, p1

    if-eqz p1, :cond_f

    goto :goto_0

    :cond_f
    const-wide/16 p3, -0x1

    :goto_0
    const-string p1, "android.media.metadata.DURATION"

    invoke-virtual {v0, p3, p4, p1}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->b(JLjava/lang/String;)V

    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->i:Landroidx/media3/common/Rating;

    invoke-static {p1}, Landroidx/media3/session/LegacyConversions;->r(Landroidx/media3/common/Rating;)Landroidx/media3/session/legacy/RatingCompat;

    move-result-object p1

    if-eqz p1, :cond_10

    const-string p2, "android.media.metadata.USER_RATING"

    invoke-virtual {v0, p2, p1}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->c(Ljava/lang/String;Landroidx/media3/session/legacy/RatingCompat;)V

    :cond_10
    iget-object p1, p0, Landroidx/media3/common/MediaMetadata;->j:Landroidx/media3/common/Rating;

    invoke-static {p1}, Landroidx/media3/session/LegacyConversions;->r(Landroidx/media3/common/Rating;)Landroidx/media3/session/legacy/RatingCompat;

    move-result-object p1

    if-eqz p1, :cond_11

    const-string p2, "android.media.metadata.RATING"

    invoke-virtual {v0, p2, p1}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->c(Ljava/lang/String;Landroidx/media3/session/legacy/RatingCompat;)V

    :cond_11
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata;->I:Ljava/lang/Integer;

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p0, p0

    const-string p2, "androidx.media3.session.EXTRAS_KEY_MEDIA_TYPE_COMPAT"

    invoke-virtual {v0, p0, p1, p2}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->b(JLjava/lang/String;)V

    :cond_12
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_16

    instance-of p3, p2, Ljava/lang/CharSequence;

    if-eqz p3, :cond_14

    goto :goto_2

    :cond_14
    instance-of p3, p2, Ljava/lang/Byte;

    if-nez p3, :cond_15

    instance-of p3, p2, Ljava/lang/Short;

    if-nez p3, :cond_15

    instance-of p3, p2, Ljava/lang/Integer;

    if-nez p3, :cond_15

    instance-of p3, p2, Ljava/lang/Long;

    if-eqz p3, :cond_13

    :cond_15
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    invoke-virtual {v0, p2, p3, p1}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->b(JLjava/lang/String;)V

    goto :goto_1

    :cond_16
    :goto_2
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2, p1}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->e(Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_1

    :cond_17
    new-instance p0, Landroidx/media3/session/legacy/MediaMetadataCompat;

    iget-object p1, v0, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->a:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Landroidx/media3/session/legacy/MediaMetadataCompat;-><init>(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public static o(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroid/content/Context;)Landroidx/media3/common/PlaybackException;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    iget v1, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->g:I

    iget v2, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->b:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    goto :goto_3

    :cond_0
    iget-object v2, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->h:Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    invoke-static {v1}, Landroidx/media3/session/LegacyConversions;->t(I)I

    move-result v2

    invoke-static {v2, p1}, Landroidx/media3/session/LegacyConversions;->x(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-object p0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->l:Landroid/os/Bundle;

    new-instance p1, Landroidx/media3/common/PlaybackException;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    invoke-static {v1}, Landroidx/media3/session/LegacyConversions;->t(I)I

    move-result v1

    const/4 v3, -0x5

    if-eq v1, v3, :cond_4

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x3e8

    goto :goto_1

    :cond_4
    const/16 v1, 0x7d0

    :goto_1
    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_2
    invoke-direct {p1, v2, v0, v1, p0}, Landroidx/media3/common/PlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILandroid/os/Bundle;)V

    return-object p1

    :cond_6
    :goto_3
    return-object v0
.end method

.method public static p(I)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized RepeatMode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " was converted to `PlaybackStateCompat.REPEAT_MODE_NONE`"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return v0

    :cond_0
    return v1

    :cond_1
    return v0
.end method

.method public static q(Landroidx/media3/session/legacy/RatingCompat;)Landroidx/media3/common/Rating;
    .locals 6

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/media3/session/legacy/RatingCompat;->c:F

    iget v1, p0, Landroidx/media3/session/legacy/RatingCompat;->b:I

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Landroidx/media3/session/legacy/RatingCompat;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Landroidx/media3/common/PercentageRating;

    const/4 v3, 0x6

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Landroidx/media3/session/legacy/RatingCompat;->c()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    :cond_2
    invoke-direct {v2, v0}, Landroidx/media3/common/PercentageRating;-><init>(F)V

    return-object v2

    :cond_3
    new-instance p0, Landroidx/media3/common/PercentageRating;

    invoke-direct {p0}, Landroidx/media3/common/PercentageRating;-><init>()V

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Landroidx/media3/session/legacy/RatingCompat;->c()Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_4

    new-instance v0, Landroidx/media3/common/StarRating;

    invoke-virtual {p0}, Landroidx/media3/session/legacy/RatingCompat;->b()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/media3/common/StarRating;-><init>(IF)V

    return-object v0

    :cond_4
    new-instance p0, Landroidx/media3/common/StarRating;

    invoke-direct {p0, v1}, Landroidx/media3/common/StarRating;-><init>(I)V

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Landroidx/media3/session/legacy/RatingCompat;->c()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_5

    new-instance v0, Landroidx/media3/common/StarRating;

    invoke-virtual {p0}, Landroidx/media3/session/legacy/RatingCompat;->b()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/media3/common/StarRating;-><init>(IF)V

    return-object v0

    :cond_5
    new-instance p0, Landroidx/media3/common/StarRating;

    invoke-direct {p0, v1}, Landroidx/media3/common/StarRating;-><init>(I)V

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Landroidx/media3/session/legacy/RatingCompat;->c()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_6

    new-instance v0, Landroidx/media3/common/StarRating;

    invoke-virtual {p0}, Landroidx/media3/session/legacy/RatingCompat;->b()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/media3/common/StarRating;-><init>(IF)V

    return-object v0

    :cond_6
    new-instance p0, Landroidx/media3/common/StarRating;

    invoke-direct {p0, v1}, Landroidx/media3/common/StarRating;-><init>(I)V

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Landroidx/media3/session/legacy/RatingCompat;->c()Z

    move-result p0

    if-eqz p0, :cond_9

    new-instance p0, Landroidx/media3/common/ThumbRating;

    const/4 v5, 0x2

    if-eq v1, v5, :cond_8

    :cond_7
    move v2, v4

    goto :goto_1

    :cond_8
    cmpl-float v0, v0, v3

    if-nez v0, :cond_7

    :goto_1
    invoke-direct {p0, v2}, Landroidx/media3/common/ThumbRating;-><init>(Z)V

    return-object p0

    :cond_9
    new-instance p0, Landroidx/media3/common/ThumbRating;

    invoke-direct {p0}, Landroidx/media3/common/ThumbRating;-><init>()V

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Landroidx/media3/session/legacy/RatingCompat;->c()Z

    move-result p0

    if-eqz p0, :cond_c

    new-instance p0, Landroidx/media3/common/HeartRating;

    if-eq v1, v2, :cond_b

    :cond_a
    move v2, v4

    goto :goto_2

    :cond_b
    cmpl-float v0, v0, v3

    if-nez v0, :cond_a

    :goto_2
    invoke-direct {p0, v2}, Landroidx/media3/common/HeartRating;-><init>(Z)V

    return-object p0

    :cond_c
    new-instance p0, Landroidx/media3/common/HeartRating;

    invoke-direct {p0}, Landroidx/media3/common/HeartRating;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static r(Landroidx/media3/common/Rating;)Landroidx/media3/session/legacy/RatingCompat;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/media3/session/LegacyConversions;->w(Landroidx/media3/common/Rating;)I

    move-result v1

    invoke-virtual {p0}, Landroidx/media3/common/Rating;->b()Z

    move-result v2

    if-nez v2, :cond_1

    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    new-instance p0, Landroidx/media3/session/legacy/RatingCompat;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, v1, v0}, Landroidx/media3/session/legacy/RatingCompat;-><init>(IF)V

    return-object p0

    :cond_1
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    packed-switch v1, :pswitch_data_1

    :goto_0
    return-object v0

    :pswitch_1
    check-cast p0, Landroidx/media3/common/PercentageRating;

    iget p0, p0, Landroidx/media3/common/PercentageRating;->b:F

    invoke-static {p0}, Landroidx/media3/session/legacy/RatingCompat;->d(F)Landroidx/media3/session/legacy/RatingCompat;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/media3/common/StarRating;

    iget p0, p0, Landroidx/media3/common/StarRating;->c:F

    invoke-static {p0, v1}, Landroidx/media3/session/legacy/RatingCompat;->e(FI)Landroidx/media3/session/legacy/RatingCompat;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/media3/common/ThumbRating;

    iget-boolean p0, p0, Landroidx/media3/common/ThumbRating;->c:Z

    new-instance v0, Landroidx/media3/session/legacy/RatingCompat;

    if-eqz p0, :cond_2

    move v2, v3

    :cond_2
    const/4 p0, 0x2

    invoke-direct {v0, p0, v2}, Landroidx/media3/session/legacy/RatingCompat;-><init>(IF)V

    return-object v0

    :pswitch_4
    check-cast p0, Landroidx/media3/common/HeartRating;

    iget-boolean p0, p0, Landroidx/media3/common/HeartRating;->c:Z

    new-instance v0, Landroidx/media3/session/legacy/RatingCompat;

    if-eqz p0, :cond_3

    move v2, v3

    :cond_3
    const/4 p0, 0x1

    invoke-direct {v0, p0, v2}, Landroidx/media3/session/legacy/RatingCompat;-><init>(IF)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static s(I)I
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized PlaybackStateCompat.RepeatMode: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " was converted to `Player.REPEAT_MODE_OFF`"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return v1

    :cond_0
    return v0

    :cond_1
    return v1
.end method

.method public static t(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/16 p0, -0x6d

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_2
    const/16 p0, -0x6b

    return p0

    :pswitch_3
    const/16 p0, -0x6e

    return p0

    :pswitch_4
    const/16 p0, -0x6a

    return p0

    :pswitch_5
    const/16 p0, -0x69

    return p0

    :pswitch_6
    const/16 p0, -0x68

    return p0

    :pswitch_7
    const/16 p0, -0x67

    return p0

    :pswitch_8
    const/16 p0, -0x66

    return p0

    :pswitch_9
    const/4 p0, -0x6

    return p0

    :pswitch_a
    const/4 p0, -0x2

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static u(I)Z
    .locals 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Unrecognized ShuffleMode: "

    invoke-static {p0, v0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static v(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    const/4 v4, 0x0

    move-wide v5, v2

    :goto_0
    :try_start_0
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v5, v6, v7}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    const/4 v4, 0x1

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    cmp-long v7, v5, v2

    if-gez v7, :cond_1

    sub-long v5, v2, v5

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v4, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    throw p0
.end method

.method public static w(Landroidx/media3/common/Rating;)I
    .locals 1

    instance-of v0, p0, Landroidx/media3/common/HeartRating;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p0, Landroidx/media3/common/ThumbRating;

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    instance-of v0, p0, Landroidx/media3/common/StarRating;

    if-eqz v0, :cond_3

    check-cast p0, Landroidx/media3/common/StarRating;

    iget p0, p0, Landroidx/media3/common/StarRating;->b:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    instance-of p0, p0, Landroidx/media3/common/PercentageRating;

    if-eqz p0, :cond_4

    const/4 p0, 0x6

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static x(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/16 v0, -0x64

    if-eq p0, v0, :cond_6

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, -0x6

    if-eq p0, v0, :cond_4

    const/4 v0, -0x5

    if-eq p0, v0, :cond_3

    const/4 v0, -0x4

    if-eq p0, v0, :cond_2

    const/4 v0, -0x3

    if-eq p0, v0, :cond_1

    const/4 v0, -0x2

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const p0, 0x7f140974

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const p0, 0x7f14096e

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const p0, 0x7f14097c

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const p0, 0x7f140970

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    const p0, 0x7f14097a

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    const p0, 0x7f140978

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    const p0, 0x7f14097e

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    const p0, 0x7f14097d

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    const p0, 0x7f140973

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    const p0, 0x7f140971

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const p0, 0x7f140976

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const p0, 0x7f14096f

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const p0, 0x7f14097b

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const p0, 0x7f140977

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const p0, 0x7f140979

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const p0, 0x7f140975

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const p0, 0x7f140972

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x6e
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static y(JJ)Z
    .locals 0

    and-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long p0, p0, p2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
