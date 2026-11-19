.class public Lcom/iceteck/silicompressorr/SiliCompressor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iceteck/silicompressorr/SiliCompressor$Builder;
    }
.end annotation


# static fields
.field public static volatile a:Lcom/iceteck/silicompressorr/SiliCompressor;

.field public static b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/iceteck/silicompressorr/SiliCompressor;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/net/Uri;Ljava/lang/String;III)Ljava/lang/String;
    .locals 24

    move-object/from16 v1, p0

    sget-object v0, Lcom/iceteck/silicompressorr/SiliCompressor;->b:Landroid/content/Context;

    sget-object v2, Lcom/iceteck/silicompressorr/videocompression/MediaController;->d:Lcom/iceteck/silicompressorr/videocompression/MediaController;

    sput-object v0, Lcom/iceteck/silicompressorr/videocompression/MediaController;->c:Landroid/content/Context;

    if-nez v2, :cond_1

    const-class v3, Lcom/iceteck/silicompressorr/videocompression/MediaController;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lcom/iceteck/silicompressorr/videocompression/MediaController;->d:Lcom/iceteck/silicompressorr/videocompression/MediaController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iceteck/silicompressorr/videocompression/MediaController;

    invoke-direct {v0}, Lcom/iceteck/silicompressorr/videocompression/MediaController;-><init>()V

    sput-object v0, Lcom/iceteck/silicompressorr/videocompression/MediaController;->d:Lcom/iceteck/silicompressorr/videocompression/MediaController;

    :cond_0
    move-object v2, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :goto_0
    monitor-exit v3

    goto :goto_2

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    sget-object v3, Lcom/iceteck/silicompressorr/SiliCompressor;->b:Landroid/content/Context;

    new-instance v0, Ljava/io/File;

    move-object/from16 v4, p1

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v4, "r"

    const-string v5, "video/avc"

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    if-eqz v3, :cond_31

    if-eqz v1, :cond_31

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 v6, 0x13

    invoke-virtual {v0, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x12

    invoke-virtual {v0, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x18

    invoke-virtual {v0, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    if-lez p2, :cond_2

    move/from16 v8, p2

    goto :goto_3

    :cond_2
    const/16 v8, 0x280

    :goto_3
    if-lez p3, :cond_3

    move/from16 v9, p3

    goto :goto_4

    :cond_3
    const/16 v9, 0x168

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lez p4, :cond_4

    move/from16 v6, p4

    goto :goto_5

    :cond_4
    const v0, 0x6ddd0

    move v6, v0

    :goto_5
    const/4 v7, 0x0

    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/iceteck/silicompressorr/videocompression/MediaController;->a()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v11, v0

    goto :goto_6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v11, v7

    :goto_6
    const/16 v0, 0x5a

    const/4 v12, 0x0

    if-ne v10, v0, :cond_5

    :goto_7
    move v10, v9

    move v9, v8

    move v8, v10

    :goto_8
    move v10, v12

    goto :goto_9

    :cond_5
    const/16 v0, 0xb4

    if-ne v10, v0, :cond_6

    goto :goto_8

    :cond_6
    const/16 v0, 0x10e

    if-ne v10, v0, :cond_7

    goto :goto_7

    :cond_7
    :goto_9
    :try_start_2
    sget-object v0, Lcom/iceteck/silicompressorr/videocompression/MediaController;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_12

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/iceteck/silicompressorr/videocompression/MediaController;->a:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-eqz v8, :cond_30

    if-eqz v9, :cond_30

    :try_start_3
    new-instance v13, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v13}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    new-instance v0, Lcom/iceteck/silicompressorr/videocompression/Mp4Movie;

    invoke-direct {v0}, Lcom/iceteck/silicompressorr/videocompression/Mp4Movie;-><init>()V

    iput-object v11, v0, Lcom/iceteck/silicompressorr/videocompression/Mp4Movie;->c:Ljava/io/File;

    invoke-virtual {v0, v10}, Lcom/iceteck/silicompressorr/videocompression/Mp4Movie;->a(I)V

    new-instance v10, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;

    invoke-direct {v10}, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;-><init>()V

    invoke-virtual {v10, v0}, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->b(Lcom/iceteck/silicompressorr/videocompression/Mp4Movie;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_10
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    new-instance v14, Landroid/media/MediaExtractor;

    invoke-direct {v14}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_f
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v14, v3, v1, v7}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    invoke-static {v14, v12}, Lcom/iceteck/silicompressorr/videocompression/MediaController;->c(Landroid/media/MediaExtractor;Z)I

    move-result v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_e
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-ltz v3, :cond_28

    :try_start_6
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    invoke-virtual {v14, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    move-object/from16 p1, v5

    const-wide/16 v4, 0x0

    invoke-virtual {v14, v4, v5, v12}, Landroid/media/MediaExtractor;->seekTo(JI)V

    invoke-virtual {v14, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    move-object/from16 v4, p1

    invoke-static {v4, v8, v9}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v5

    const-string v15, "color-format"

    const v12, 0x7f000789

    invoke-virtual {v5, v15, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v12, "bitrate"

    if-eqz v6, :cond_8

    goto :goto_a

    :cond_8
    const v6, 0xe1000

    :goto_a
    invoke-virtual {v5, v12, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v6, "frame-rate"

    const/16 v12, 0x19

    invoke-virtual {v5, v6, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v6, "i-frame-interval"

    const/16 v12, 0xa

    invoke-virtual {v5, v6, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-static {v4}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v12, 0x1

    :try_start_7
    invoke-virtual {v6, v5, v7, v7, v12}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    new-instance v5, Lcom/iceteck/silicompressorr/videocompression/InputSurface;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v12

    invoke-direct {v5, v12}, Lcom/iceteck/silicompressorr/videocompression/InputSurface;-><init>(Landroid/view/Surface;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iget-object v12, v5, Lcom/iceteck/silicompressorr/videocompression/InputSurface;->a:Landroid/opengl/EGLDisplay;

    iget-object v15, v5, Lcom/iceteck/silicompressorr/videocompression/InputSurface;->c:Landroid/opengl/EGLSurface;

    iget-object v7, v5, Lcom/iceteck/silicompressorr/videocompression/InputSurface;->b:Landroid/opengl/EGLContext;

    invoke-static {v12, v15, v15, v7}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_b

    :cond_9
    const-string v7, "eglMakeCurrent failed"

    invoke-static {v7}, Lv7;->h(Ljava/lang/String;)V

    :goto_b
    invoke-virtual {v6}, Landroid/media/MediaCodec;->start()V

    const-string v7, "mime"

    invoke-virtual {v0, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v15
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    new-instance v7, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;

    invoke-direct {v7}, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    iget-object v12, v7, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->g:Landroid/view/Surface;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object/from16 p3, v7

    const/4 v1, 0x0

    const/4 v7, 0x0

    :try_start_b
    invoke-virtual {v15, v0, v12, v7, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-virtual {v15}, Landroid/media/MediaCodec;->start()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    const/4 v0, 0x0

    const/4 v12, 0x0

    const/16 v22, -0x5

    :goto_c
    if-nez v0, :cond_24

    move/from16 p4, v8

    const-wide/16 v7, 0x9c4

    if-nez v12, :cond_d

    :try_start_c
    invoke-virtual {v14}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v1

    if-ne v1, v3, :cond_c

    invoke-virtual {v15, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    if-ltz v1, :cond_b

    invoke-virtual {v15, v1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v14, v7, v8}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v18

    if-gez v18, :cond_a

    const-wide/16 v19, 0x0

    const/16 v21, 0x4

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v16, v1

    invoke-virtual/range {v15 .. v21}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v12, 0x1

    goto :goto_e

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v7, v14

    goto/16 :goto_2c

    :catch_1
    move-exception v0

    move-object/from16 v23, p3

    move-object/from16 v22, v2

    move-object/from16 v16, v11

    :goto_d
    move-object v7, v15

    goto/16 :goto_23

    :cond_a
    move/from16 v16, v1

    invoke-virtual {v14}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v19

    const/16 v21, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v21}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    invoke-virtual {v14}, Landroid/media/MediaExtractor;->advance()Z

    :cond_b
    :goto_e
    const/4 v1, 0x0

    goto :goto_f

    :cond_c
    const/4 v7, -0x1

    if-ne v1, v7, :cond_b

    const/4 v1, 0x1

    :goto_f
    if-eqz v1, :cond_d

    const-wide/16 v7, 0x9c4

    invoke-virtual {v15, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v16

    if-ltz v16, :cond_d

    const-wide/16 v19, 0x0

    const/16 v21, 0x4

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v21}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    const/4 v12, 0x1

    :cond_d
    move v7, v0

    move/from16 v8, v22

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_10
    if-nez v1, :cond_e

    if-eqz v0, :cond_f

    :cond_e
    move/from16 v18, v0

    move-object/from16 v16, v11

    move/from16 v17, v12

    const-wide/16 v11, 0x9c4

    goto :goto_11

    :cond_f
    move v0, v7

    move/from16 v22, v8

    const/4 v7, 0x0

    move/from16 v8, p4

    goto/16 :goto_c

    :goto_11
    :try_start_d
    invoke-virtual {v6, v13, v11, v12}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    const/4 v12, -0x3

    const/4 v11, -0x1

    if-ne v0, v11, :cond_10

    move/from16 v21, v1

    move-object/from16 v22, v2

    const/16 v18, 0x0

    :goto_12
    move/from16 v1, p4

    goto/16 :goto_1b

    :cond_10
    if-ne v0, v12, :cond_12

    :cond_11
    :goto_13
    move/from16 v21, v1

    move-object/from16 v22, v2

    const/4 v11, -0x1

    goto :goto_12

    :cond_12
    const/4 v11, -0x2

    if-ne v0, v11, :cond_13

    :try_start_e
    invoke-virtual {v6}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v11

    const/4 v12, -0x5

    if-ne v8, v12, :cond_11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->a(Landroid/media/MediaFormat;Z)I

    move-result v8
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_13

    :catch_2
    move-exception v0

    move-object/from16 v23, p3

    move-object/from16 v22, v2

    goto :goto_d

    :cond_13
    if-ltz v0, :cond_23

    :try_start_f
    invoke-virtual {v6, v0}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    if-eqz v7, :cond_22

    iget v11, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v12, 0x1

    if-le v11, v12, :cond_14

    iget v12, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    and-int/lit8 v12, v12, 0x2

    if-nez v12, :cond_15

    const/4 v12, 0x0

    :try_start_10
    invoke-virtual {v10, v8, v7, v13, v12}, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->g(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)Z

    move-result v7

    if-eqz v7, :cond_14

    iget-boolean v7, v2, Lcom/iceteck/silicompressorr/videocompression/MediaController;->a:Z

    if-eqz v7, :cond_14

    iput-boolean v12, v2, Lcom/iceteck/silicompressorr/videocompression/MediaController;->a:Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :cond_14
    move/from16 v21, v1

    move-object/from16 v22, v2

    move/from16 v1, p4

    goto/16 :goto_18

    :cond_15
    const/4 v12, -0x5

    if-ne v8, v12, :cond_14

    :try_start_11
    new-array v8, v11, [B

    iget v12, v13, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v12, v11

    invoke-virtual {v7, v12}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget v11, v13, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget v7, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v12, 0x1

    sub-int/2addr v7, v12

    :goto_14
    if-ltz v7, :cond_17

    const/4 v11, 0x3

    if-le v7, v11, :cond_17

    aget-byte v11, v8, v7

    if-ne v11, v12, :cond_16

    add-int/lit8 v11, v7, -0x1

    aget-byte v11, v8, v11

    if-nez v11, :cond_16

    add-int/lit8 v11, v7, -0x2

    aget-byte v11, v8, v11

    if-nez v11, :cond_16

    add-int/lit8 v11, v7, -0x3

    aget-byte v21, v8, v11

    if-nez v21, :cond_16

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iget v12, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v12, v11

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    move/from16 v21, v1

    move-object/from16 v22, v2

    const/4 v1, 0x0

    :try_start_12
    invoke-virtual {v7, v8, v1, v11}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v2, v11

    invoke-virtual {v12, v8, v11, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_15
    move/from16 v1, p4

    goto :goto_17

    :catch_3
    move-exception v0

    :goto_16
    move-object/from16 v23, p3

    goto/16 :goto_d

    :catch_4
    move-exception v0

    move-object/from16 v22, v2

    goto :goto_16

    :cond_16
    move/from16 v21, v1

    move-object/from16 v22, v2

    add-int/lit8 v7, v7, -0x1

    move/from16 v1, v21

    move-object/from16 v2, v22

    const/4 v12, 0x1

    goto :goto_14

    :cond_17
    move/from16 v21, v1

    move-object/from16 v22, v2

    const/4 v7, 0x0

    const/4 v12, 0x0

    goto :goto_15

    :goto_17
    invoke-static {v4, v1, v9}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    if-eqz v7, :cond_18

    if-eqz v12, :cond_18

    const-string v8, "csd-0"

    invoke-virtual {v2, v8, v7}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    const-string v7, "csd-1"

    invoke-virtual {v2, v7, v12}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_18
    const/4 v12, 0x0

    invoke-virtual {v10, v2, v12}, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->a(Landroid/media/MediaFormat;Z)I

    move-result v8

    :goto_18
    iget v2, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_19

    const/4 v2, 0x1

    :goto_19
    const/4 v12, 0x0

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    goto :goto_19

    :goto_1a
    invoke-virtual {v6, v0, v12}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move v7, v2

    const/4 v11, -0x1

    :goto_1b
    if-eq v0, v11, :cond_1b

    :cond_1a
    :goto_1c
    move/from16 p4, v1

    move-object/from16 v11, v16

    move/from16 v12, v17

    move/from16 v0, v18

    move/from16 v1, v21

    move-object/from16 v2, v22

    goto/16 :goto_10

    :cond_1b
    const-wide/16 v11, 0x9c4

    invoke-virtual {v15, v13, v11, v12}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1c

    :goto_1d
    const/16 v21, 0x0

    goto :goto_1c

    :cond_1c
    const/4 v2, -0x3

    if-ne v0, v2, :cond_1d

    goto :goto_1c

    :cond_1d
    const/4 v2, -0x2

    if-ne v0, v2, :cond_1e

    invoke-virtual {v15}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1c

    :cond_1e
    if-ltz v0, :cond_21

    iget v2, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_1e

    :cond_1f
    const/4 v2, 0x0

    :goto_1e
    invoke-virtual {v15, v0, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    if-eqz v2, :cond_20

    :try_start_13
    invoke-virtual/range {p3 .. p3}, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->a()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :try_start_14
    invoke-virtual/range {p3 .. p3}, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->c()V

    iget-wide v11, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v19, 0x3e8

    mul-long v11, v11, v19

    iget-object v0, v5, Lcom/iceteck/silicompressorr/videocompression/InputSurface;->a:Landroid/opengl/EGLDisplay;

    iget-object v2, v5, Lcom/iceteck/silicompressorr/videocompression/InputSurface;->c:Landroid/opengl/EGLSurface;

    invoke-static {v0, v2, v11, v12}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    iget-object v0, v5, Lcom/iceteck/silicompressorr/videocompression/InputSurface;->a:Landroid/opengl/EGLDisplay;

    iget-object v2, v5, Lcom/iceteck/silicompressorr/videocompression/InputSurface;->c:Landroid/opengl/EGLSurface;

    invoke-static {v0, v2}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    goto :goto_1f

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_20
    :goto_1f
    iget v0, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1a

    invoke-virtual {v6}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    goto :goto_1d

    :cond_21
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    move-object/from16 v22, v2

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encoderOutputBuffer "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " was null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_23
    move-object/from16 v22, v2

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :cond_24
    move-object/from16 v22, v2

    move-object/from16 v16, v11

    move-object/from16 v7, p3

    const/4 v4, 0x0

    goto :goto_24

    :catch_6
    move-exception v0

    move-object/from16 v22, v2

    :goto_20
    move-object/from16 v16, v11

    goto/16 :goto_16

    :catch_7
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 p3, v7

    goto :goto_20

    :catch_8
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v16, v11

    move-object v7, v15

    :goto_21
    const/16 v23, 0x0

    goto :goto_23

    :catch_9
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v16, v11

    :goto_22
    const/4 v7, 0x0

    goto :goto_21

    :catch_a
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v16, v11

    const/4 v5, 0x0

    goto :goto_22

    :catch_b
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v16, v11

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_22

    :goto_23
    :try_start_15
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-object v15, v7

    move-object/from16 v7, v23

    const/4 v4, 0x1

    :goto_24
    invoke-virtual {v14, v3}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    if-eqz v7, :cond_25

    invoke-virtual {v7}, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->d()V

    goto :goto_26

    :catch_c
    move-exception v0

    :goto_25
    move-object v7, v14

    goto :goto_2a

    :cond_25
    :goto_26
    if-eqz v5, :cond_26

    invoke-virtual {v5}, Lcom/iceteck/silicompressorr/videocompression/InputSurface;->a()V

    :cond_26
    if-eqz v15, :cond_27

    invoke-virtual {v15}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual {v15}, Landroid/media/MediaCodec;->release()V

    :cond_27
    if-eqz v6, :cond_29

    invoke-virtual {v6}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual {v6}, Landroid/media/MediaCodec;->release()V

    goto :goto_27

    :cond_28
    move-object/from16 v22, v2

    move-object/from16 v16, v11

    const/4 v4, 0x0

    :cond_29
    :goto_27
    if-nez v4, :cond_2a

    invoke-static {v14, v10, v13}, Lcom/iceteck/silicompressorr/videocompression/MediaController;->b(Landroid/media/MediaExtractor;Lcom/iceteck/silicompressorr/videocompression/MP4Builder;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_c
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :cond_2a
    invoke-virtual {v14}, Landroid/media/MediaExtractor;->release()V

    :goto_28
    :try_start_16
    invoke-virtual {v10}, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->c()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_d

    goto :goto_29

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_2b
    :goto_29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-object/from16 v2, v22

    goto :goto_2b

    :catch_e
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v16, v11

    goto :goto_25

    :catchall_2
    move-exception v0

    move-object v1, v0

    const/4 v7, 0x0

    goto :goto_2c

    :catch_f
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v16, v11

    const/4 v7, 0x0

    goto :goto_2a

    :catchall_3
    move-exception v0

    move-object v1, v0

    const/4 v7, 0x0

    const/4 v10, 0x0

    goto :goto_2c

    :catch_10
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v16, v11

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_2a
    :try_start_17
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    if-eqz v7, :cond_2c

    invoke-virtual {v7}, Landroid/media/MediaExtractor;->release()V

    :cond_2c
    if-eqz v10, :cond_2b

    goto :goto_28

    :goto_2b
    iget-boolean v0, v2, Lcom/iceteck/silicompressorr/videocompression/MediaController;->a:Z

    if-eqz v0, :cond_2d

    const/4 v12, 0x0

    iput-boolean v12, v2, Lcom/iceteck/silicompressorr/videocompression/MediaController;->a:Z

    :cond_2d
    sput-object v16, Lcom/iceteck/silicompressorr/videocompression/MediaController;->b:Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    goto :goto_2e

    :catchall_4
    move-exception v0

    move-object v1, v0

    :goto_2c
    if-eqz v7, :cond_2e

    invoke-virtual {v7}, Landroid/media/MediaExtractor;->release()V

    :cond_2e
    if-eqz v10, :cond_2f

    :try_start_18
    invoke-virtual {v10}, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->c()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_11

    goto :goto_2d

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_2f
    :goto_2d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    throw v1

    :cond_30
    iget-boolean v0, v2, Lcom/iceteck/silicompressorr/videocompression/MediaController;->a:Z

    if-eqz v0, :cond_31

    const/4 v12, 0x0

    iput-boolean v12, v2, Lcom/iceteck/silicompressorr/videocompression/MediaController;->a:Z

    goto :goto_2e

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_31
    :goto_2e
    sget-object v0, Lcom/iceteck/silicompressorr/videocompression/MediaController;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
