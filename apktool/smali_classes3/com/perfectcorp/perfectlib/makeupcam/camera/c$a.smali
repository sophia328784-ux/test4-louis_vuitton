.class final Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public final e:Lcom/perfectcorp/perfectlib/makeupcam/camera/c;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/c;Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;->d:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/c;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;->b()Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v7, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->e:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->b:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->n0:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_1
    iget-object v1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->a:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->n0:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_2
    :goto_2
    if-eqz v0, :cond_7

    const-string v8, "BackgroundHelper"

    const-string v9, "animated"

    const-string v10, "/"

    invoke-virtual {p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;->b()Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;

    move-result-object v0

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSticker;

    iget-object v0, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSticker;->stickerType:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v7}, Lcom/perfectcorp/perfectlib/core/BaseVenus;->r()I

    move-result v5

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/a$b;

    invoke-virtual {p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;->b()Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;

    move-result-object v4

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;->b:Ljava/lang/String;

    iget v6, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSticker;->bestFrameIndex:I

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/c;Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSticker;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;->b()Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;

    move-result-object v2

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSticker;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/perfectcorp/perfectlib/makeupcam/utility/BitmapUtils;->a:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/perfectlib/makeupcam/utility/BitmapUtils;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :try_start_2
    invoke-static {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->c(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;->b:Ljava/util/ArrayList;

    new-instance v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a$a;

    iget-object v5, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSticker;->alignMode:Ljava/lang/String;

    invoke-static {v5}, Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;->a(Ljava/lang/String;)Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-direct {v4, v6, v0, v5, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a$a;-><init>(IILcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setup foreground static effect failed. path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;->b()Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;

    move-result-object v2

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSticker;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_4
    invoke-virtual {p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;->b()Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;

    move-result-object v0

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSticker;

    iget-object v1, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSticker;->stickerType:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v7}, Lcom/perfectcorp/perfectlib/core/BaseVenus;->r()I

    move-result v5

    iget-object v11, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/a$a;

    invoke-virtual {p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;->b()Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;

    move-result-object v2

    iget-object v4, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;->b:Ljava/lang/String;

    iget v6, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSticker;->bestFrameIndex:I

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/c;Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSticker;Ljava/lang/String;II)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;->b()Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;

    move-result-object v4

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSticker;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/perfectcorp/perfectlib/makeupcam/utility/BitmapUtils;->a:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v4}, Lcom/perfectcorp/perfectlib/makeupcam/utility/BitmapUtils;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;->a:Ljava/util/ArrayList;

    new-instance v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a$a;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSticker;->alignMode:Ljava/lang/String;

    invoke-static {v3}, Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;->a(Ljava/lang/String;)Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {v5, v6, v1, v3, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a$a;-><init>(IILcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "backgroundBitmap is null. path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;->b()Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;

    move-result-object v2

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSticker;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/perfectcorp/common/debug/NotAnError;

    invoke-direct {v2}, Lcom/perfectcorp/common/debug/NotAnError;-><init>()V

    invoke-static {v8, v1, v2}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_7
    return-void
.end method

.method public static a(Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;Lcom/perfectcorp/perfectlib/makeupcam/camera/c;)V
    .locals 5

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/c;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$ApngDecoder;

    iget v3, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->b:I

    invoke-virtual {v4, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$ApngDecoder;->a(I)Z

    iget-object v4, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->e:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    invoke-virtual {v4, v3}, Lcom/perfectcorp/perfectlib/core/BaseVenus;->s(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->a:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->n()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$ApngDecoder;

    iget v3, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->b:I

    invoke-virtual {v4, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$ApngDecoder;->a(I)Z

    iget-object v4, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->e:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    invoke-virtual {v4, v3}, Lcom/perfectcorp/perfectlib/core/BaseVenus;->s(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->b:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    invoke-virtual {p1}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->n()V

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->b:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->o()V

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->a:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->o()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/ArrayList;)V
    .locals 17

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;

    move-object/from16 v3, p0

    iget-object v0, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/c;

    iget-boolean v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->d:Z

    const/4 v4, 0x5

    if-eqz v0, :cond_4

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$ApngDecoder;

    iget v5, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->b:I

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$VenusDecoder;->a:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-wide v6, v0, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v6, v7, v0, v5}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_ResetApngDecoder(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;I)Z

    const/4 v0, 0x0

    move v5, v0

    :goto_1
    :try_start_0
    iget v6, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->c:I

    if-gt v0, v6, :cond_2

    new-instance v14, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

    invoke-direct {v14}, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;-><init>()V

    new-instance v15, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

    invoke-direct {v15}, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;-><init>()V

    new-instance v16, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

    invoke-direct/range {v16 .. v16}, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;-><init>()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v6, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$ApngDecoder;

    iget v10, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->b:I

    iget-object v11, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->f:Ljava/nio/ByteBuffer;

    iget v12, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->d:I

    iget v13, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->e:I

    iget-object v9, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$VenusDecoder;->a:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-wide v7, v9, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static/range {v7 .. v16}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_GetNextApngImage(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;ILjava/lang/Object;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_1

    :try_start_2
    iget v0, v15, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;->value:I

    const/4 v6, -0x1

    if-eq v0, v6, :cond_2

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget v0, v15, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;->value:I

    const-string v6, "BackgroundDecodeInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Success! next image index="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v15, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;->value:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v8, v6, v7}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-wide/16 v6, 0xa

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v6, "BackgroundDecodeInfo"

    const-string v7, "Call getNextImage() failed"

    invoke-static {v6, v7, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    if-eqz v5, :cond_3

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/c;

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->c:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->a()V

    monitor-exit v4

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_3
    const-string v0, "BackgroundDecodeInfo"

    const-string v2, "Call getNextImage() failed!!!"

    invoke-static {v4, v0, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->h:J

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-gtz v0, :cond_5

    iput-wide v5, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->h:J

    :cond_5
    iget-wide v7, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->h:J

    cmp-long v0, v5, v7

    if-ltz v0, :cond_0

    new-instance v14, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

    invoke-direct {v14}, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;-><init>()V

    new-instance v15, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

    invoke-direct {v15}, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;-><init>()V

    new-instance v16, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

    invoke-direct/range {v16 .. v16}, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;-><init>()V

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$ApngDecoder;

    iget v10, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->b:I

    iget-object v11, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->f:Ljava/nio/ByteBuffer;

    iget v12, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->d:I

    iget v13, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->e:I

    iget-object v9, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$VenusDecoder;->a:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-wide v7, v9, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static/range {v7 .. v16}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_GetNextApngImage(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;ILjava/lang/Object;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/c;

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->c:Ljava/lang/Object;

    monitor-enter v7

    :try_start_5
    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->a()V

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iget-wide v7, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->h:J

    iget v0, v14, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;->value:I

    int-to-long v9, v0

    add-long/2addr v7, v9

    iput-wide v7, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->h:J

    const-wide/16 v9, 0x1f4

    sub-long/2addr v5, v9

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->h:J

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :cond_6
    const-string v0, "BackgroundDecodeInfo"

    const-string v2, "Call getNextImage() failed!!!"

    invoke-static {v4, v0, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    return-void
.end method
