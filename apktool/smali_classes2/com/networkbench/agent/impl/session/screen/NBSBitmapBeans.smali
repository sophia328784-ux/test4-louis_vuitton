.class public Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NBSGestureDetectorNBSBitmapBeans"

.field private static replayManager:Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;


# instance fields
.field private final bitmapBeans:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;",
            ">;"
        }
    .end annotation
.end field

.field end_time:J

.field header_size:I

.field screenHeight:J

.field screenWidth:J

.field session_ID:Ljava/lang/String;

.field start_time:J

.field video_ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->replayManager:Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->bitmapBeans:Ljava/util/concurrent/CopyOnWriteArrayList;

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->screenWidth:J

    int-to-long p1, p2

    iput-wide p1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->screenHeight:J

    iput-object p3, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->session_ID:Ljava/lang/String;

    iput-object p4, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->video_ID:Ljava/lang/String;

    return-void
.end method

.method public static asBytes(Ljava/util/UUID;)[B
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method private clearAll()V
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->bitmapBeans:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/floatbtnmanager/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v2, "tingyunScreen"

    invoke-static {v1, v2, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->deleteDirectory([Ljava/io/File;)V

    return-void
.end method

.method private clearOneself()V
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->bitmapBeans:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/floatbtnmanager/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v2, "tingyunScreen"

    invoke-static {v0, v1, v2, v1}, La;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->session_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->deleteDirectory([Ljava/io/File;)V

    return-void
.end method

.method private deleteDirectory([Ljava/io/File;)V
    .locals 4

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->deleteDirectory([Ljava/io/File;)V

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public addBitmapBean(Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->bitmapBeans:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getOutputStream()Ljava/io/ByteArrayOutputStream;
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "NBSGestureDetectorNBSBitmapBeans"

    const-string v0, "getOutputStream   bitmapBean   frame_header_size   headLength: "

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, v1, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->bitmapBeans:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_0

    return-object v3

    :cond_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v5, v1, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->session_ID:Ljava/lang/String;

    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    invoke-static {v5}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->asBytes(Ljava/util/UUID;)[B

    move-result-object v5

    iget-object v6, v1, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->video_ID:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    invoke-static {v6}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->asBytes(Ljava/util/UUID;)[B

    move-result-object v6

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v7

    iget-wide v8, v1, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->start_time:J

    invoke-virtual {v7, v8, v9}, Lcom/networkbench/agent/impl/util/r;->e(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/networkbench/agent/impl/j/b;->a(J)[B

    move-result-object v7

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v8

    iget-wide v9, v1, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->end_time:J

    invoke-virtual {v8, v9, v10}, Lcom/networkbench/agent/impl/util/r;->e(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/networkbench/agent/impl/j/b;->a(J)[B

    move-result-object v8

    iget-wide v9, v1, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->screenWidth:J

    invoke-static {v9, v10}, Lcom/networkbench/agent/impl/j/b;->a(J)[B

    move-result-object v9

    iget-wide v10, v1, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->screenHeight:J

    invoke-static {v10, v11}, Lcom/networkbench/agent/impl/j/b;->a(J)[B

    move-result-object v10

    array-length v11, v5

    array-length v12, v6

    add-int/2addr v11, v12

    array-length v12, v7

    add-int/2addr v11, v12

    array-length v12, v8

    add-int/2addr v11, v12

    array-length v12, v9

    add-int/2addr v11, v12

    array-length v12, v10

    add-int/2addr v11, v12

    invoke-static {v11}, Lcom/networkbench/agent/impl/j/b;->a(I)[B

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/io/OutputStream;->write([B)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4, v7}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4, v8}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4, v9}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4, v10}, Ljava/io/OutputStream;->write([B)V

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    iget-object v0, v1, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->bitmapBeans:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v8, v1, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->bitmapBeans:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-ge v6, v0, :cond_3

    :try_start_1
    invoke-virtual {v8, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;

    iget-object v8, v0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->bitMapPath:Ljava/lang/String;

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NBSBitmapBean  getNBSScreenActionData  bitmap == null , : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->bitMapPath:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v17, v3

    move/from16 v16, v6

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move-object/from16 v17, v3

    goto/16 :goto_4

    :cond_1
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v8, v10, v11, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    array-length v10, v8

    const/16 v11, 0x400

    if-ge v10, v11, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NBSBitmapBean  getNBSScreenActionData  continue;   because bitmap size: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v17, v3

    move/from16 v16, v6

    goto/16 :goto_2

    :cond_2
    :try_start_3
    iget-object v10, v0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->frame_ID:Ljava/lang/String;

    invoke-static {v10}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v10

    invoke-static {v10}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->asBytes(Ljava/util/UUID;)[B

    move-result-object v10

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v11

    iget-wide v12, v0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->frame_time:J

    invoke-virtual {v11, v12, v13}, Lcom/networkbench/agent/impl/util/r;->e(J)J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/networkbench/agent/impl/j/b;->a(J)[B

    move-result-object v11

    const/4 v12, 0x1

    new-array v13, v12, [B

    aput-byte v12, v13, v5

    iget-wide v14, v0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->frame_width:J

    invoke-static {v14, v15}, Lcom/networkbench/agent/impl/j/b;->a(J)[B

    move-result-object v14

    move/from16 v16, v6

    iget-wide v5, v0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->frame_height:J

    invoke-static {v5, v6}, Lcom/networkbench/agent/impl/j/b;->a(J)[B

    move-result-object v5

    array-length v6, v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v17, v3

    :try_start_4
    array-length v3, v11

    add-int/2addr v6, v3

    add-int/2addr v6, v12

    array-length v3, v14

    add-int/2addr v6, v3

    array-length v3, v5

    add-int/2addr v6, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getOutputStream   bitmapBean   frame_header_size   length: "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/networkbench/agent/impl/j/b;->a(I)[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4, v10}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4, v11}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4, v13}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4, v14}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    array-length v3, v8

    invoke-static {v3}, Lcom/networkbench/agent/impl/j/b;->a(I)[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4, v8}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->getNBSScreenActionData()Ljava/lang/String;

    move-result-object v3

    const-string v5, "utf-8"

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v5, v3

    invoke-static {v5}, Lcom/networkbench/agent/impl/j/b;->a(I)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->webviewItemsToByte()[B

    move-result-object v0

    array-length v3, v0

    invoke-static {v3}, Lcom/networkbench/agent/impl/j/b;->a(I)[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NBSBitmapBean  getNBSScreenActionData  error ;"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    :goto_3
    add-int/lit8 v6, v16, 0x1

    move-object/from16 v3, v17

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_3
    move-object/from16 v17, v3

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ne v7, v0, :cond_4

    return-object v17

    :cond_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    return-object v4

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getOutputStream  ex: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v17
.end method

.method public getSendData(Z)[B
    .locals 6

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->bitmapBeans:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->bitmapBeans:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;

    if-eqz v0, :cond_2

    iget-wide v2, v0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->frame_time:J

    iput-wide v2, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->start_time:J

    iget-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->bitmapBeans:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;

    iget-wide v2, v0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->frame_time:J

    iput-wide v2, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->end_time:J

    :cond_2
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->getOutputStream()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->clearOneself()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->clearAll()V

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/util/UUID;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->video_ID:Ljava/lang/String;

    return-object p1

    :cond_4
    new-instance p1, Ljava/util/UUID;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-direct {p1, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    :goto_1
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->video_ID:Ljava/lang/String;

    return-object v1

    :catchall_0
    new-instance p1, Ljava/util/UUID;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-direct {p1, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    goto :goto_1
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->video_ID:Ljava/lang/String;

    return-object p0
.end method

.method public isReplayCanCollecion()Z
    .locals 0

    sget-object p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->replayManager:Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;->canShotBitmap()Z

    move-result p0

    return p0
.end method

.method public pauseVideo()V
    .locals 0

    sget-object p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->replayManager:Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;->pauseVideo()V

    return-void
.end method

.method public resumeVideo()V
    .locals 0

    sget-object p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->replayManager:Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;->resumeVideo()V

    return-void
.end method

.method public startVideo()V
    .locals 0

    sget-object p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->replayManager:Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;->startVideo()V

    return-void
.end method

.method public stopVideo()V
    .locals 0

    sget-object p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->replayManager:Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;->stopVideo()V

    return-void
.end method
