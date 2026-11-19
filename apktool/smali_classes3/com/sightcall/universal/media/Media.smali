.class public final Lcom/sightcall/universal/media/Media;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final image:Ljava/io/File;

.field private final lengthInBytes:J

.field private final metadata:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/media/Media;->image:Ljava/io/File;

    iput-object p2, p0, Lcom/sightcall/universal/media/Media;->metadata:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sightcall/universal/media/Media;->lengthInBytes:J

    return-void
.end method

.method private static copy(Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lokio/Okio;->e(Ljava/io/File;)Lokio/Source;

    move-result-object p0

    new-instance v1, Lokio/RealBufferedSource;

    invoke-direct {v1, p0}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lokio/Okio;->d(Ljava/io/File;)Lokio/Sink;

    move-result-object p0

    new-instance p1, Lokio/RealBufferedSink;

    invoke-direct {p1, p0}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p1, v1}, Lokio/RealBufferedSink;->u0(Lokio/Source;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p1}, Lnet/rtccloud/sdk/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v1}, Lnet/rtccloud/sdk/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    move-object v0, p1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_1

    :goto_0
    move-object v1, v0

    goto :goto_1

    :catchall_2
    move-exception p0

    goto :goto_0

    :goto_1
    invoke-static {v0}, Lnet/rtccloud/sdk/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v1}, Lnet/rtccloud/sdk/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method


# virtual methods
.method public copyImageTo(Ljava/io/File;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/sightcall/universal/media/Media;->image()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sightcall/universal/media/Media;->copyImageTo(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public copyImageTo(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p0}, Lcom/sightcall/universal/media/Media;->image()Ljava/io/File;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/media/Media;->copy(Ljava/io/File;Ljava/io/File;)V

    return-object v0
.end method

.method public copyMetadataTo(Ljava/io/File;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/sightcall/universal/media/Media;->metadata()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sightcall/universal/media/Media;->copyMetadataTo(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public copyMetadataTo(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p0}, Lcom/sightcall/universal/media/Media;->metadata()Ljava/io/File;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sightcall/universal/media/Media;->copy(Ljava/io/File;Ljava/io/File;)V

    return-object v0
.end method

.method public copyTo(Ljava/io/File;)Lcom/sightcall/universal/media/Media;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/media/Media;->copyImageTo(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/media/Media;->copyMetadataTo(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    new-instance p1, Lcom/sightcall/universal/media/Media;

    invoke-direct {p1, v0, p0}, Lcom/sightcall/universal/media/Media;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object p1
.end method

.method public delete()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sightcall/universal/media/Media;->deleteImage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/universal/media/Media;->deleteMetadata()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public deleteImage()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/Media;->image:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public deleteMetadata()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/Media;->metadata:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-class v1, Lcom/sightcall/universal/media/Media;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/sightcall/universal/media/Media;

    iget-object v1, p0, Lcom/sightcall/universal/media/Media;->image:Ljava/io/File;

    iget-object v2, p1, Lcom/sightcall/universal/media/Media;->image:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    iget-object p0, p0, Lcom/sightcall/universal/media/Media;->metadata:Ljava/io/File;

    iget-object p1, p1, Lcom/sightcall/universal/media/Media;->metadata:Ljava/io/File;

    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/media/Media;->image:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/sightcall/universal/media/Media;->metadata:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public image()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/Media;->image:Ljava/io/File;

    return-object p0
.end method

.method public lengthInBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/sightcall/universal/media/Media;->lengthInBytes:J

    return-wide v0
.end method

.method public metadata()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/Media;->metadata:Ljava/io/File;

    return-object p0
.end method

.method public moveImageTo(Ljava/io/File;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sightcall/universal/media/Media;->image()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sightcall/universal/media/Media;->moveImageTo(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public moveImageTo(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/sightcall/universal/media/Media;->copyImageTo(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 14
    invoke-virtual {p0}, Lcom/sightcall/universal/media/Media;->image()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-object p1
.end method

.method public moveMetadataTo(Ljava/io/File;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sightcall/universal/media/Media;->metadata()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sightcall/universal/media/Media;->moveMetadataTo(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public moveMetadataTo(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/sightcall/universal/media/Media;->copyMetadataTo(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 14
    invoke-virtual {p0}, Lcom/sightcall/universal/media/Media;->metadata()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-object p1
.end method

.method public moveTo(Ljava/io/File;)Lcom/sightcall/universal/media/Media;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/media/Media;->moveImageTo(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/media/Media;->moveMetadataTo(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    new-instance p1, Lcom/sightcall/universal/media/Media;

    invoke-direct {p1, v0, p0}, Lcom/sightcall/universal/media/Media;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object p1
.end method

.method public renameTo(Ljava/io/File;)Z
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/media/Media;->image:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/sightcall/universal/media/Media;->image:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    iget-object v1, p0, Lcom/sightcall/universal/media/Media;->metadata:Ljava/io/File;

    new-instance v2, Ljava/io/File;

    iget-object p0, p0, Lcom/sightcall/universal/media/Media;->metadata:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Media{image="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sightcall/universal/media/Media;->image:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sightcall/universal/media/Media;->metadata:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lengthInBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sightcall/universal/media/Media;->lengthInBytes:J

    invoke-static {v1, v2}, Lcom/sightcall/universal/util/Utils;->bytes2size(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
