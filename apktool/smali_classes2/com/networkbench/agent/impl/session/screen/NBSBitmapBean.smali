.class public Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NBSBitmapBean"


# instance fields
.field public bitMapPath:Ljava/lang/String;

.field public volatile count:I

.field public drawPath:Z

.field public firstBean:Z

.field frame_ID:Ljava/lang/String;

.field frame_format:Z

.field frame_header_size:I

.field frame_height:J

.field frame_size:I

.field frame_time:J

.field frame_width:J

.field height:J

.field image_data:Landroid/graphics/Bitmap;

.field sessionId:Ljava/lang/String;

.field userOperationSize:I

.field user_operation_data:Lcom/networkbench/agent/impl/session/screen/NBSScreenActionData;

.field private webviewItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/session/screen/NBSWebViewItem;",
            ">;"
        }
    .end annotation
.end field

.field width:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->count:I

    .line 42
    iput-boolean v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->firstBean:Z

    .line 43
    iput-boolean v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->drawPath:Z

    return-void
.end method

.method public constructor <init>(JLcom/networkbench/agent/impl/g/a/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->count:I

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->firstBean:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->drawPath:Z

    iput-wide p1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->frame_time:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->frame_format:Z

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->frame_ID:Ljava/lang/String;

    new-instance p2, Lcom/networkbench/agent/impl/session/screen/NBSScreenActionData;

    invoke-direct {p2, p1, p3}, Lcom/networkbench/agent/impl/session/screen/NBSScreenActionData;-><init>(Ljava/lang/String;Lcom/networkbench/agent/impl/g/a/h;)V

    iput-object p2, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->user_operation_data:Lcom/networkbench/agent/impl/session/screen/NBSScreenActionData;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->webviewItems:Ljava/util/List;

    return-void
.end method

.method private strToBinstr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const-string p1, ""

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    invoke-static {p1}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget-char v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public addWebViewItem(Lcom/networkbench/agent/impl/session/screen/NBSWebViewItem;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->webviewItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public checkoutBitmap(Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-wide v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->frame_time:J

    iget-wide p0, p1, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->frame_time:J

    sub-long/2addr v1, p0

    const-wide/16 p0, 0x2ee

    cmp-long p0, v1, p0

    if-lez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public copyNBSBitmapBean()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;
    .locals 3

    new-instance v0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;-><init>()V

    iget-boolean v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->firstBean:Z

    iput-boolean v1, v0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->firstBean:Z

    iget-object v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->frame_ID:Ljava/lang/String;

    iput-object v1, v0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->frame_ID:Ljava/lang/String;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->frame_height:J

    iput-wide v1, v0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->frame_height:J

    iget-wide v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->frame_width:J

    iput-wide v1, v0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->frame_width:J

    iget-object v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->sessionId:Ljava/lang/String;

    iput-object v1, v0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->sessionId:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->frame_format:Z

    iput-boolean v1, v0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->frame_format:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->frame_time:J

    iget v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->frame_size:I

    iput v1, v0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->frame_size:I

    iget-object v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->bitMapPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->bitMapPath:Ljava/lang/String;

    iget v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->userOperationSize:I

    iput v1, v0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->userOperationSize:I

    iget-object v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->user_operation_data:Lcom/networkbench/agent/impl/session/screen/NBSScreenActionData;

    iput-object v1, v0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->user_operation_data:Lcom/networkbench/agent/impl/session/screen/NBSScreenActionData;

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->webviewItems:Ljava/util/List;

    iput-object p0, v0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->webviewItems:Ljava/util/List;

    return-object v0
.end method

.method public deletBitMap()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->image_data:Landroid/graphics/Bitmap;

    return-void
.end method

.method public getBitMapPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->bitMapPath:Ljava/lang/String;

    return-object p0
.end method

.method public getFrame_ID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->frame_ID:Ljava/lang/String;

    return-object p0
.end method

.method public getImage_data()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->image_data:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getNBSScreenActionData()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->user_operation_data:Lcom/networkbench/agent/impl/session/screen/NBSScreenActionData;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->frame_width:J

    long-to-float v1, v1

    iget-wide v2, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->width:J

    long-to-float p0, v2

    div-float/2addr v1, p0

    iput v1, v0, Lcom/networkbench/agent/impl/session/screen/NBSScreenActionData;->scale:F

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenActionData;->asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setBitMapPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->bitMapPath:Ljava/lang/String;

    return-void
.end method

.method public setSessionID(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->sessionId:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->firstBean:Z

    return-void
.end method

.method public setWidthAndHeight(II)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->width:J

    int-to-long p1, p2

    iput-wide p1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->height:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NBSBitmapBean{frame_header_size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->frame_header_size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", frame_ID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->frame_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', frame_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->frame_time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", frame_format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->frame_format:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", frame_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->frame_size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", frame_width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->frame_width:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", frame_height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->frame_height:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", image_data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->image_data:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bitMapPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->bitMapPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', userOperationSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->userOperationSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", user_operation_data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->user_operation_data:Lcom/networkbench/agent/impl/session/screen/NBSScreenActionData;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public webviewItemsToByte()[B
    .locals 3

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->webviewItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/session/screen/NBSWebViewItem;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->asJson()Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/networkbench/com/google/gson/JsonArray;->size()I

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_1

    new-array p0, v1, [B

    return-object p0

    :cond_1
    new-array p0, v1, [B

    :try_start_0
    invoke-virtual {v0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    const-string v1, "NBSBitmapBean"

    const-string v2, "error webviewItemsToByte"

    invoke-static {v1, v2, v0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method
