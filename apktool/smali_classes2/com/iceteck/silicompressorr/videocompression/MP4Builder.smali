.class public Lcom/iceteck/silicompressorr/videocompression/MP4Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iceteck/silicompressorr/videocompression/MP4Builder$InterleaveChunkMdat;
    }
.end annotation


# instance fields
.field public a:Lcom/iceteck/silicompressorr/videocompression/MP4Builder$InterleaveChunkMdat;

.field public b:Lcom/iceteck/silicompressorr/videocompression/Mp4Movie;

.field public c:Ljava/io/FileOutputStream;

.field public d:Ljava/nio/channels/FileChannel;

.field public e:J

.field public f:J

.field public g:Z

.field public final h:Ljava/util/HashMap;

.field public i:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->a:Lcom/iceteck/silicompressorr/videocompression/MP4Builder$InterleaveChunkMdat;

    iput-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->b:Lcom/iceteck/silicompressorr/videocompression/Mp4Movie;

    iput-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->c:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->d:Ljava/nio/channels/FileChannel;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->e:J

    iput-wide v1, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->f:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->g:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->h:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->i:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static e(JJ)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    return-wide p0

    :cond_0
    rem-long/2addr p0, p2

    invoke-static {p2, p3, p0, p1}, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->e(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static f(Lcom/iceteck/silicompressorr/videocompression/Mp4Movie;)J
    .locals 4

    iget-object p0, p0, Lcom/iceteck/silicompressorr/videocompression/Mp4Movie;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iceteck/silicompressorr/videocompression/Track;

    iget v0, v0, Lcom/iceteck/silicompressorr/videocompression/Track;->h:I

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iceteck/silicompressorr/videocompression/Track;

    iget v2, v2, Lcom/iceteck/silicompressorr/videocompression/Track;->h:I

    int-to-long v2, v2

    invoke-static {v2, v3, v0, v1}, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->e(JJ)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    return-wide v0
.end method


# virtual methods
.method public final a(Landroid/media/MediaFormat;Z)I
    .locals 2

    iget-object p0, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->b:Lcom/iceteck/silicompressorr/videocompression/Mp4Movie;

    iget-object p0, p0, Lcom/iceteck/silicompressorr/videocompression/Mp4Movie;->b:Ljava/util/ArrayList;

    new-instance v0, Lcom/iceteck/silicompressorr/videocompression/Track;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1, p1, p2}, Lcom/iceteck/silicompressorr/videocompression/Track;-><init>(ILandroid/media/MediaFormat;Z)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public final b(Lcom/iceteck/silicompressorr/videocompression/Mp4Movie;)V
    .locals 6

    iput-object p1, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->b:Lcom/iceteck/silicompressorr/videocompression/Mp4Movie;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object p1, p1, Lcom/iceteck/silicompressorr/videocompression/Mp4Movie;->c:Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->d:Ljava/nio/channels/FileChannel;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    const-string v0, "isom"

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v1, "3gp4"

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/coremedia/iso/boxes/FileTypeBox;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v0, v2, v3, p1}, Lcom/coremedia/iso/boxes/FileTypeBox;-><init>(Ljava/lang/String;JLjava/util/List;)V

    iget-object p1, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->d:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, p1}, Lcom/googlecode/mp4parser/AbstractBox;->c(Ljava/nio/channels/WritableByteChannel;)V

    iget-wide v4, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->e:J

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/AbstractBox;->getSize()J

    move-result-wide v0

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->e:J

    iget-wide v4, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->f:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->f:J

    new-instance p1, Lcom/iceteck/silicompressorr/videocompression/MP4Builder$InterleaveChunkMdat;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x40000000

    iput-wide v0, p1, Lcom/iceteck/silicompressorr/videocompression/MP4Builder$InterleaveChunkMdat;->b:J

    iput-wide v2, p1, Lcom/iceteck/silicompressorr/videocompression/MP4Builder$InterleaveChunkMdat;->c:J

    iput-object p1, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->a:Lcom/iceteck/silicompressorr/videocompression/MP4Builder$InterleaveChunkMdat;

    const/4 p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->i:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final c()V
    .locals 29

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->a:Lcom/iceteck/silicompressorr/videocompression/MP4Builder$InterleaveChunkMdat;

    iget-wide v1, v1, Lcom/iceteck/silicompressorr/videocompression/MP4Builder$InterleaveChunkMdat;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->d()V

    :cond_0
    iget-object v1, v0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->b:Lcom/iceteck/silicompressorr/videocompression/Mp4Movie;

    iget-object v1, v1, Lcom/iceteck/silicompressorr/videocompression/Mp4Movie;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    iget-object v5, v0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->h:Ljava/util/HashMap;

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iceteck/silicompressorr/videocompression/Track;

    iget-object v7, v2, Lcom/iceteck/silicompressorr/videocompression/Track;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v9, v8, [J

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_1

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/iceteck/silicompressorr/videocompression/Sample;

    iget-wide v10, v10, Lcom/iceteck/silicompressorr/videocompression/Sample;->b:J

    aput-wide v10, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->b:Lcom/iceteck/silicompressorr/videocompression/Mp4Movie;

    new-instance v2, Lcom/coremedia/iso/boxes/MovieBox;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/MovieBox;-><init>()V

    new-instance v7, Lcom/coremedia/iso/boxes/MovieHeaderBox;

    invoke-direct {v7}, Lcom/coremedia/iso/boxes/MovieHeaderBox;-><init>()V

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    sget-object v9, Lcom/coremedia/iso/boxes/MovieHeaderBox;->L:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v9, v7, v7, v8}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v9

    invoke-static {v9}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iput-object v8, v7, Lcom/coremedia/iso/boxes/MovieHeaderBox;->o:Ljava/util/Date;

    invoke-static {v8}, Lcom/googlecode/mp4parser/util/DateHelper;->a(Ljava/util/Date;)J

    move-result-wide v8

    const-wide v10, 0x100000000L

    cmp-long v8, v8, v10

    if-ltz v8, :cond_3

    invoke-virtual {v7}, Lcom/googlecode/mp4parser/AbstractFullBox;->n()V

    :cond_3
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    sget-object v9, Lcom/coremedia/iso/boxes/MovieHeaderBox;->M:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v9, v7, v7, v8}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v9

    invoke-static {v9}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iput-object v8, v7, Lcom/coremedia/iso/boxes/MovieHeaderBox;->p:Ljava/util/Date;

    invoke-static {v8}, Lcom/googlecode/mp4parser/util/DateHelper;->a(Ljava/util/Date;)J

    move-result-wide v8

    cmp-long v8, v8, v10

    if-ltz v8, :cond_4

    invoke-virtual {v7}, Lcom/googlecode/mp4parser/AbstractFullBox;->n()V

    :cond_4
    sget-object v8, Lcom/googlecode/mp4parser/util/Matrix;->j:Lcom/googlecode/mp4parser/util/Matrix;

    sget-object v9, Lcom/coremedia/iso/boxes/MovieHeaderBox;->R:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v9, v7, v7, v8}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v9

    invoke-static {v9}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iput-object v8, v7, Lcom/coremedia/iso/boxes/MovieHeaderBox;->u:Lcom/googlecode/mp4parser/util/Matrix;

    invoke-static {v1}, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->f(Lcom/iceteck/silicompressorr/videocompression/Mp4Movie;)J

    move-result-wide v8

    iget-object v12, v1, Lcom/iceteck/silicompressorr/videocompression/Mp4Movie;->b:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/iceteck/silicompressorr/videocompression/Track;

    move-wide v15, v10

    iget-wide v10, v14, Lcom/iceteck/silicompressorr/videocompression/Track;->c:J

    mul-long/2addr v10, v8

    iget v14, v14, Lcom/iceteck/silicompressorr/videocompression/Track;->h:I

    move-object/from16 v17, v7

    int-to-long v6, v14

    div-long/2addr v10, v6

    cmp-long v6, v10, v3

    if-lez v6, :cond_5

    move-wide v3, v10

    :cond_5
    move-wide v10, v15

    move-object/from16 v7, v17

    goto :goto_2

    :cond_6
    move-object/from16 v17, v7

    move-wide v15, v10

    sget-object v6, Lcom/coremedia/iso/boxes/MovieHeaderBox;->O:Lorg/aspectj/lang/JoinPoint$StaticPart;

    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, v3, v4}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v10, v17

    invoke-static {v6, v10, v10, v7}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v6

    invoke-static {v6}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iput-wide v3, v10, Lcom/coremedia/iso/boxes/MovieHeaderBox;->r:J

    cmp-long v3, v3, v15

    if-ltz v3, :cond_7

    invoke-virtual {v10}, Lcom/googlecode/mp4parser/AbstractFullBox;->n()V

    :cond_7
    sget-object v3, Lcom/coremedia/iso/boxes/MovieHeaderBox;->N:Lorg/aspectj/lang/JoinPoint$StaticPart;

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v3, v10, v10, v4}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {v3}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iput-wide v8, v10, Lcom/coremedia/iso/boxes/MovieHeaderBox;->q:J

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    int-to-long v6, v3

    sget-object v3, Lcom/coremedia/iso/boxes/MovieHeaderBox;->S:Lorg/aspectj/lang/JoinPoint$StaticPart;

    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v3, v10, v10, v8}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {v3}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iput-wide v6, v10, Lcom/coremedia/iso/boxes/MovieHeaderBox;->v:J

    invoke-virtual {v2, v10}, Lcom/googlecode/mp4parser/BasicContainer;->g(Lcom/coremedia/iso/boxes/Box;)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iceteck/silicompressorr/videocompression/Track;

    new-instance v7, Lcom/coremedia/iso/boxes/TrackBox;

    invoke-direct {v7}, Lcom/coremedia/iso/boxes/TrackBox;-><init>()V

    new-instance v8, Lcom/coremedia/iso/boxes/TrackHeaderBox;

    invoke-direct {v8}, Lcom/coremedia/iso/boxes/TrackHeaderBox;-><init>()V

    sget-object v9, Lcom/coremedia/iso/boxes/TrackHeaderBox;->Z:Lorg/aspectj/lang/JoinPoint$StaticPart;

    new-instance v10, Ljava/lang/Boolean;

    invoke-direct {v10, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v9, v8, v8, v10}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v9

    invoke-static {v9}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iget-boolean v9, v8, Lcom/googlecode/mp4parser/AbstractBox;->c:Z

    if-nez v9, :cond_8

    invoke-virtual {v8}, Lcom/googlecode/mp4parser/AbstractBox;->i()V

    :cond_8
    iget v9, v8, Lcom/googlecode/mp4parser/AbstractFullBox;->l:I

    or-int/2addr v9, v4

    invoke-virtual {v8, v9}, Lcom/googlecode/mp4parser/AbstractFullBox;->m(I)V

    sget-object v9, Lcom/coremedia/iso/boxes/TrackHeaderBox;->h0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    new-instance v10, Ljava/lang/Boolean;

    invoke-direct {v10, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v9, v8, v8, v10}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v9

    invoke-static {v9}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iget-boolean v9, v8, Lcom/googlecode/mp4parser/AbstractBox;->c:Z

    if-nez v9, :cond_9

    invoke-virtual {v8}, Lcom/googlecode/mp4parser/AbstractBox;->i()V

    :cond_9
    iget v9, v8, Lcom/googlecode/mp4parser/AbstractFullBox;->l:I

    or-int/lit8 v9, v9, 0x2

    invoke-virtual {v8, v9}, Lcom/googlecode/mp4parser/AbstractFullBox;->m(I)V

    sget-object v9, Lcom/coremedia/iso/boxes/TrackHeaderBox;->t0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    new-instance v10, Ljava/lang/Boolean;

    invoke-direct {v10, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v9, v8, v8, v10}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v9

    invoke-static {v9}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iget-boolean v9, v8, Lcom/googlecode/mp4parser/AbstractBox;->c:Z

    if-nez v9, :cond_a

    invoke-virtual {v8}, Lcom/googlecode/mp4parser/AbstractBox;->i()V

    :cond_a
    iget v9, v8, Lcom/googlecode/mp4parser/AbstractFullBox;->l:I

    or-int/lit8 v9, v9, 0x4

    invoke-virtual {v8, v9}, Lcom/googlecode/mp4parser/AbstractFullBox;->m(I)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v9, v6, Lcom/iceteck/silicompressorr/videocompression/Track;->h:I

    iget-object v10, v1, Lcom/iceteck/silicompressorr/videocompression/Mp4Movie;->a:Lcom/googlecode/mp4parser/util/Matrix;

    sget-object v11, Lcom/coremedia/iso/boxes/TrackHeaderBox;->R:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v11, v8, v8, v10}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v11

    invoke-static {v11}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iput-object v10, v8, Lcom/coremedia/iso/boxes/TrackHeaderBox;->v:Lcom/googlecode/mp4parser/util/Matrix;

    sget-object v10, Lcom/coremedia/iso/boxes/TrackHeaderBox;->P:Lorg/aspectj/lang/JoinPoint$StaticPart;

    new-instance v11, Ljava/lang/Integer;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v10, v8, v8, v11}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v10

    invoke-static {v10}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iput v12, v8, Lcom/coremedia/iso/boxes/TrackHeaderBox;->t:I

    iget-object v10, v6, Lcom/iceteck/silicompressorr/videocompression/Track;->i:Ljava/util/Date;

    sget-object v11, Lcom/coremedia/iso/boxes/TrackHeaderBox;->K:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v11, v8, v8, v10}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v11

    invoke-static {v11}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iput-object v10, v8, Lcom/coremedia/iso/boxes/TrackHeaderBox;->o:Ljava/util/Date;

    invoke-static {v10}, Lcom/googlecode/mp4parser/util/DateHelper;->a(Ljava/util/Date;)J

    move-result-wide v11

    cmp-long v11, v11, v15

    if-ltz v11, :cond_b

    invoke-virtual {v8}, Lcom/googlecode/mp4parser/AbstractFullBox;->n()V

    :cond_b
    iget-wide v11, v6, Lcom/iceteck/silicompressorr/videocompression/Track;->c:J

    invoke-static {v1}, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->f(Lcom/iceteck/silicompressorr/videocompression/Mp4Movie;)J

    move-result-wide v13

    mul-long/2addr v13, v11

    int-to-long v11, v9

    div-long/2addr v13, v11

    sget-object v9, Lcom/coremedia/iso/boxes/TrackHeaderBox;->N:Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-wide/from16 v17, v15

    new-instance v15, Ljava/lang/Long;

    invoke-direct {v15, v13, v14}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v9, v8, v8, v15}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v9

    invoke-static {v9}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iput-wide v13, v8, Lcom/coremedia/iso/boxes/TrackHeaderBox;->r:J

    cmp-long v9, v13, v17

    if-ltz v9, :cond_c

    invoke-virtual {v8, v4}, Lcom/googlecode/mp4parser/AbstractFullBox;->m(I)V

    :cond_c
    iget v9, v6, Lcom/iceteck/silicompressorr/videocompression/Track;->j:I

    int-to-double v13, v9

    sget-object v9, Lcom/coremedia/iso/boxes/TrackHeaderBox;->T:Lorg/aspectj/lang/JoinPoint$StaticPart;

    new-instance v15, Ljava/lang/Double;

    invoke-direct {v15, v13, v14}, Ljava/lang/Double;-><init>(D)V

    invoke-static {v9, v8, v8, v15}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v9

    invoke-static {v9}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iput-wide v13, v8, Lcom/coremedia/iso/boxes/TrackHeaderBox;->x:D

    iget v9, v6, Lcom/iceteck/silicompressorr/videocompression/Track;->k:I

    int-to-double v13, v9

    sget-object v9, Lcom/coremedia/iso/boxes/TrackHeaderBox;->S:Lorg/aspectj/lang/JoinPoint$StaticPart;

    new-instance v15, Ljava/lang/Double;

    invoke-direct {v15, v13, v14}, Ljava/lang/Double;-><init>(D)V

    invoke-static {v9, v8, v8, v15}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v9

    invoke-static {v9}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iput-wide v13, v8, Lcom/coremedia/iso/boxes/TrackHeaderBox;->w:D

    sget-object v9, Lcom/coremedia/iso/boxes/TrackHeaderBox;->O:Lorg/aspectj/lang/JoinPoint$StaticPart;

    new-instance v13, Ljava/lang/Integer;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v9, v8, v8, v13}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v9

    invoke-static {v9}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iput v14, v8, Lcom/coremedia/iso/boxes/TrackHeaderBox;->s:I

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    sget-object v13, Lcom/coremedia/iso/boxes/TrackHeaderBox;->L:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v13, v8, v8, v9}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v13

    invoke-static {v13}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iput-object v9, v8, Lcom/coremedia/iso/boxes/TrackHeaderBox;->p:Ljava/util/Date;

    invoke-static {v9}, Lcom/googlecode/mp4parser/util/DateHelper;->a(Ljava/util/Date;)J

    move-result-wide v15

    cmp-long v9, v15, v17

    if-ltz v9, :cond_d

    invoke-virtual {v8}, Lcom/googlecode/mp4parser/AbstractFullBox;->n()V

    :cond_d
    iget-wide v14, v6, Lcom/iceteck/silicompressorr/videocompression/Track;->a:J

    move-object v9, v5

    const-wide/16 v4, 0x1

    add-long/2addr v14, v4

    sget-object v13, Lcom/coremedia/iso/boxes/TrackHeaderBox;->M:Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-wide/from16 v19, v4

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v14, v15}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v13, v8, v8, v4}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v4

    invoke-static {v4}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iput-wide v14, v8, Lcom/coremedia/iso/boxes/TrackHeaderBox;->q:J

    iget v4, v6, Lcom/iceteck/silicompressorr/videocompression/Track;->l:F

    sget-object v5, Lcom/coremedia/iso/boxes/TrackHeaderBox;->Q:Lorg/aspectj/lang/JoinPoint$StaticPart;

    new-instance v13, Ljava/lang/Float;

    invoke-direct {v13, v4}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v5, v8, v8, v13}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v5

    invoke-static {v5}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iput v4, v8, Lcom/coremedia/iso/boxes/TrackHeaderBox;->u:F

    invoke-virtual {v7, v8}, Lcom/googlecode/mp4parser/BasicContainer;->g(Lcom/coremedia/iso/boxes/Box;)V

    new-instance v4, Lcom/coremedia/iso/boxes/MediaBox;

    invoke-direct {v4}, Lcom/coremedia/iso/boxes/MediaBox;-><init>()V

    invoke-virtual {v7, v4}, Lcom/googlecode/mp4parser/BasicContainer;->g(Lcom/coremedia/iso/boxes/Box;)V

    new-instance v5, Lcom/coremedia/iso/boxes/MediaHeaderBox;

    invoke-direct {v5}, Lcom/coremedia/iso/boxes/MediaHeaderBox;-><init>()V

    sget-object v8, Lcom/coremedia/iso/boxes/MediaHeaderBox;->y:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v8, v5, v5, v10}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v8

    invoke-static {v8}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iput-object v10, v5, Lcom/coremedia/iso/boxes/MediaHeaderBox;->o:Ljava/util/Date;

    iget-wide v13, v6, Lcom/iceteck/silicompressorr/videocompression/Track;->c:J

    sget-object v8, Lcom/coremedia/iso/boxes/MediaHeaderBox;->B:Lorg/aspectj/lang/JoinPoint$StaticPart;

    new-instance v10, Ljava/lang/Long;

    invoke-direct {v10, v13, v14}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v8, v5, v5, v10}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v8

    invoke-static {v8}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iput-wide v13, v5, Lcom/coremedia/iso/boxes/MediaHeaderBox;->r:J

    sget-object v8, Lcom/coremedia/iso/boxes/MediaHeaderBox;->A:Lorg/aspectj/lang/JoinPoint$StaticPart;

    new-instance v10, Ljava/lang/Long;

    invoke-direct {v10, v11, v12}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v8, v5, v5, v10}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v8

    invoke-static {v8}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iput-wide v11, v5, Lcom/coremedia/iso/boxes/MediaHeaderBox;->q:J

    sget-object v8, Lcom/coremedia/iso/boxes/MediaHeaderBox;->C:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v10, "eng"

    invoke-static {v8, v5, v5, v10}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v8

    invoke-static {v8}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iput-object v10, v5, Lcom/coremedia/iso/boxes/MediaHeaderBox;->s:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/googlecode/mp4parser/BasicContainer;->g(Lcom/coremedia/iso/boxes/Box;)V

    new-instance v5, Lcom/coremedia/iso/boxes/HandlerBox;

    invoke-direct {v5}, Lcom/coremedia/iso/boxes/HandlerBox;-><init>()V

    sget-object v8, Lcom/coremedia/iso/boxes/HandlerBox;->x:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v10, "VideoHandle"

    invoke-static {v8, v5, v5, v10}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v8

    invoke-static {v8}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iput-object v10, v5, Lcom/coremedia/iso/boxes/HandlerBox;->p:Ljava/lang/String;

    iget-object v8, v6, Lcom/iceteck/silicompressorr/videocompression/Track;->d:Ljava/lang/String;

    sget-object v10, Lcom/coremedia/iso/boxes/HandlerBox;->y:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v10, v5, v5, v8}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v10

    invoke-static {v10}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iput-object v8, v5, Lcom/coremedia/iso/boxes/HandlerBox;->o:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/googlecode/mp4parser/BasicContainer;->g(Lcom/coremedia/iso/boxes/Box;)V

    new-instance v5, Lcom/coremedia/iso/boxes/MediaInformationBox;

    invoke-direct {v5}, Lcom/coremedia/iso/boxes/MediaInformationBox;-><init>()V

    iget-object v8, v6, Lcom/iceteck/silicompressorr/videocompression/Track;->e:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    invoke-virtual {v5, v8}, Lcom/googlecode/mp4parser/BasicContainer;->g(Lcom/coremedia/iso/boxes/Box;)V

    new-instance v8, Lcom/coremedia/iso/boxes/DataInformationBox;

    invoke-direct {v8}, Lcom/coremedia/iso/boxes/DataInformationBox;-><init>()V

    new-instance v10, Lcom/coremedia/iso/boxes/DataReferenceBox;

    invoke-direct {v10}, Lcom/coremedia/iso/boxes/DataReferenceBox;-><init>()V

    invoke-virtual {v8, v10}, Lcom/googlecode/mp4parser/BasicContainer;->g(Lcom/coremedia/iso/boxes/Box;)V

    new-instance v11, Lcom/coremedia/iso/boxes/DataEntryUrlBox;

    invoke-direct {v11}, Lcom/coremedia/iso/boxes/DataEntryUrlBox;-><init>()V

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Lcom/googlecode/mp4parser/AbstractFullBox;->m(I)V

    invoke-virtual {v10, v11}, Lcom/googlecode/mp4parser/BasicContainer;->g(Lcom/coremedia/iso/boxes/Box;)V

    invoke-virtual {v5, v8}, Lcom/googlecode/mp4parser/BasicContainer;->g(Lcom/coremedia/iso/boxes/Box;)V

    new-instance v8, Lcom/coremedia/iso/boxes/SampleTableBox;

    invoke-direct {v8}, Lcom/coremedia/iso/boxes/SampleTableBox;-><init>()V

    iget-object v10, v6, Lcom/iceteck/silicompressorr/videocompression/Track;->f:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    iget-object v11, v6, Lcom/iceteck/silicompressorr/videocompression/Track;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Lcom/googlecode/mp4parser/BasicContainer;->g(Lcom/coremedia/iso/boxes/Box;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v12, v6, Lcom/iceteck/silicompressorr/videocompression/Track;->m:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v15, 0x0

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    move-object/from16 v16, v1

    if-eqz v15, :cond_e

    iget-wide v0, v15, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->b:J

    cmp-long v0, v0, v13

    if-nez v0, :cond_e

    iget-wide v0, v15, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->a:J

    add-long v0, v0, v19

    iput-wide v0, v15, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->a:J

    move-wide/from16 v0, v19

    goto :goto_5

    :cond_e
    new-instance v15, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    move-wide/from16 v0, v19

    invoke-direct {v15, v0, v1, v13, v14}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    move-wide/from16 v19, v0

    move-object/from16 v1, v16

    move-object/from16 v0, p0

    goto :goto_4

    :cond_f
    move-object/from16 v16, v1

    new-instance v0, Lcom/coremedia/iso/boxes/TimeToSampleBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/TimeToSampleBox;-><init>()V

    sget-object v1, Lcom/coremedia/iso/boxes/TimeToSampleBox;->q:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v1, v0, v0, v10}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    invoke-static {v1}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iput-object v10, v0, Lcom/coremedia/iso/boxes/TimeToSampleBox;->o:Ljava/util/List;

    invoke-virtual {v8, v0}, Lcom/googlecode/mp4parser/BasicContainer;->g(Lcom/coremedia/iso/boxes/Box;)V

    iget-object v0, v6, Lcom/iceteck/silicompressorr/videocompression/Track;->g:Ljava/util/LinkedList;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_7

    :cond_10
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    new-array v14, v1, [J

    const/4 v12, 0x0

    :goto_6
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v12, v1, :cond_12

    invoke-virtual {v0, v12}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object v10, v0

    int-to-long v0, v1

    aput-wide v0, v14, v12

    add-int/lit8 v12, v12, 0x1

    move-object v0, v10

    goto :goto_6

    :cond_11
    :goto_7
    const/4 v14, 0x0

    :cond_12
    if-eqz v14, :cond_13

    array-length v0, v14

    if-lez v0, :cond_13

    new-instance v0, Lcom/coremedia/iso/boxes/SyncSampleBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SyncSampleBox;-><init>()V

    sget-object v1, Lcom/coremedia/iso/boxes/SyncSampleBox;->r:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v1, v0, v0, v14}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    invoke-static {v1}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iput-object v14, v0, Lcom/coremedia/iso/boxes/SyncSampleBox;->o:[J

    invoke-virtual {v8, v0}, Lcom/googlecode/mp4parser/BasicContainer;->g(Lcom/coremedia/iso/boxes/Box;)V

    :cond_13
    new-instance v0, Lcom/coremedia/iso/boxes/SampleToChunkBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SampleToChunkBox;-><init>()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sget-object v10, Lcom/coremedia/iso/boxes/SampleToChunkBox;->q:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v10, v0, v0, v1}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v10

    invoke-static {v10}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iput-object v1, v0, Lcom/coremedia/iso/boxes/SampleToChunkBox;->o:Ljava/util/List;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v10, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    :goto_8
    if-ge v12, v1, :cond_17

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/iceteck/silicompressorr/videocompression/Sample;

    move/from16 v20, v1

    move-object/from16 v19, v2

    iget-wide v1, v15, Lcom/iceteck/silicompressorr/videocompression/Sample;->a:J

    move-wide/from16 v22, v1

    iget-wide v1, v15, Lcom/iceteck/silicompressorr/videocompression/Sample;->b:J

    add-long v1, v22, v1

    const/16 v21, 0x1

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v15, v20, -0x1

    if-eq v12, v15, :cond_15

    add-int/lit8 v15, v12, 0x1

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/iceteck/silicompressorr/videocompression/Sample;

    move-wide/from16 v22, v1

    iget-wide v1, v15, Lcom/iceteck/silicompressorr/videocompression/Sample;->a:J

    cmp-long v1, v22, v1

    if-eqz v1, :cond_14

    goto :goto_9

    :cond_14
    move-object v15, v3

    goto :goto_b

    :cond_15
    :goto_9
    if-eq v10, v13, :cond_16

    sget-object v1, Lcom/coremedia/iso/boxes/SampleToChunkBox;->p:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v1, v0, v0}, Lorg/aspectj/runtime/reflect/Factory;->b(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    invoke-static {v1}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iget-object v1, v0, Lcom/coremedia/iso/boxes/SampleToChunkBox;->o:Ljava/util/List;

    new-instance v22, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;

    move-object v15, v3

    int-to-long v2, v14

    move-wide/from16 v23, v2

    int-to-long v2, v13

    const-wide/16 v27, 0x1

    move-wide/from16 v25, v2

    invoke-direct/range {v22 .. v28}, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;-><init>(JJJ)V

    move-object/from16 v2, v22

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v10, v13

    goto :goto_a

    :cond_16
    move-object v15, v3

    :goto_a
    add-int/lit8 v14, v14, 0x1

    const/4 v13, 0x0

    :goto_b
    add-int/lit8 v12, v12, 0x1

    move-object v3, v15

    move-object/from16 v2, v19

    move/from16 v1, v20

    goto :goto_8

    :cond_17
    move-object/from16 v19, v2

    move-object v15, v3

    const/16 v21, 0x1

    invoke-virtual {v8, v0}, Lcom/googlecode/mp4parser/BasicContainer;->g(Lcom/coremedia/iso/boxes/Box;)V

    new-instance v0, Lcom/coremedia/iso/boxes/SampleSizeBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SampleSizeBox;-><init>()V

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    sget-object v2, Lcom/coremedia/iso/boxes/SampleSizeBox;->w:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v2, v0, v0, v1}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {v2}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iput-object v1, v0, Lcom/coremedia/iso/boxes/SampleSizeBox;->p:[J

    invoke-virtual {v8, v0}, Lcom/googlecode/mp4parser/BasicContainer;->g(Lcom/coremedia/iso/boxes/Box;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, -0x1

    move-wide v10, v2

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iceteck/silicompressorr/videocompression/Sample;

    iget-wide v12, v6, Lcom/iceteck/silicompressorr/videocompression/Sample;->a:J

    cmp-long v14, v10, v2

    if-eqz v14, :cond_18

    cmp-long v14, v10, v12

    if-eqz v14, :cond_18

    move-wide v10, v2

    :cond_18
    cmp-long v10, v10, v2

    if-nez v10, :cond_19

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    iget-wide v10, v6, Lcom/iceteck/silicompressorr/videocompression/Sample;->b:J

    add-long/2addr v10, v12

    goto :goto_c

    :cond_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [J

    const/4 v12, 0x0

    :goto_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_1b

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    :cond_1b
    new-instance v0, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;-><init>()V

    sget-object v2, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;->r:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v2, v0, v0, v1}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {v2}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iput-object v1, v0, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;->p:[J

    invoke-virtual {v8, v0}, Lcom/googlecode/mp4parser/BasicContainer;->g(Lcom/coremedia/iso/boxes/Box;)V

    invoke-virtual {v5, v8}, Lcom/googlecode/mp4parser/BasicContainer;->g(Lcom/coremedia/iso/boxes/Box;)V

    invoke-virtual {v4, v5}, Lcom/googlecode/mp4parser/BasicContainer;->g(Lcom/coremedia/iso/boxes/Box;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/googlecode/mp4parser/BasicContainer;->g(Lcom/coremedia/iso/boxes/Box;)V

    move-object v2, v0

    move-object v5, v9

    move-object v3, v15

    move-object/from16 v1, v16

    move-wide/from16 v15, v17

    move/from16 v4, v21

    move-object/from16 v0, p0

    goto/16 :goto_3

    :cond_1c
    move-object v1, v0

    move-object v0, v2

    iget-object v2, v1, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->d:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/AbstractContainerBox;->c(Ljava/nio/channels/WritableByteChannel;)V

    iget-object v0, v1, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iget-object v0, v1, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->d:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    iget-object v0, v1, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method public final d()V
    .locals 5

    iget-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->d:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    iget-object v2, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->d:Ljava/nio/channels/FileChannel;

    iget-object v3, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->a:Lcom/iceteck/silicompressorr/videocompression/MP4Builder$InterleaveChunkMdat;

    iget-wide v3, v3, Lcom/iceteck/silicompressorr/videocompression/MP4Builder$InterleaveChunkMdat;->c:J

    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-object v2, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->a:Lcom/iceteck/silicompressorr/videocompression/MP4Builder$InterleaveChunkMdat;

    iget-object v3, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->d:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v3}, Lcom/iceteck/silicompressorr/videocompression/MP4Builder$InterleaveChunkMdat;->c(Ljava/nio/channels/WritableByteChannel;)V

    iget-object v2, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->d:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->a:Lcom/iceteck/silicompressorr/videocompression/MP4Builder$InterleaveChunkMdat;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder$InterleaveChunkMdat;->c:J

    iput-wide v1, v0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder$InterleaveChunkMdat;->b:J

    iget-object p0, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->c:Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public final g(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)Z
    .locals 10

    iget-boolean v0, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->a:Lcom/iceteck/silicompressorr/videocompression/MP4Builder$InterleaveChunkMdat;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder$InterleaveChunkMdat;->b:J

    iget-object v2, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->d:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, v2}, Lcom/iceteck/silicompressorr/videocompression/MP4Builder$InterleaveChunkMdat;->c(Ljava/nio/channels/WritableByteChannel;)V

    iget-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->a:Lcom/iceteck/silicompressorr/videocompression/MP4Builder$InterleaveChunkMdat;

    iget-wide v2, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->e:J

    iput-wide v2, v0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder$InterleaveChunkMdat;->c:J

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->e:J

    iget-wide v2, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->f:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->f:J

    iput-boolean v1, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->g:Z

    :cond_0
    iget-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->a:Lcom/iceteck/silicompressorr/videocompression/MP4Builder$InterleaveChunkMdat;

    iget-wide v2, v0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder$InterleaveChunkMdat;->b:J

    iget v4, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder$InterleaveChunkMdat;->b:J

    iget-wide v2, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->f:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->f:J

    const-wide/32 v4, 0x8000

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->d()V

    iput-boolean v2, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->g:Z

    iget-wide v6, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->f:J

    sub-long/2addr v6, v4

    iput-wide v6, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->f:J

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->b:Lcom/iceteck/silicompressorr/videocompression/Mp4Movie;

    iget-wide v4, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->e:J

    iget-object v3, v3, Lcom/iceteck/silicompressorr/videocompression/Mp4Movie;->b:Ljava/util/ArrayList;

    if-ltz p1, :cond_6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt p1, v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iceteck/silicompressorr/videocompression/Track;

    iget-object v3, p1, Lcom/iceteck/silicompressorr/videocompression/Track;->b:Ljava/util/ArrayList;

    iget v6, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_3

    move v6, v2

    goto :goto_1

    :cond_3
    move v6, v1

    :goto_1
    new-instance v7, Lcom/iceteck/silicompressorr/videocompression/Sample;

    iget v8, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v8, v8

    invoke-direct {v7, v4, v5, v8, v9}, Lcom/iceteck/silicompressorr/videocompression/Sample;-><init>(JJ)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p1, Lcom/iceteck/silicompressorr/videocompression/Track;->g:Ljava/util/LinkedList;

    if-eqz v4, :cond_4

    if-eqz v6, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-wide v3, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v5, p1, Lcom/iceteck/silicompressorr/videocompression/Track;->n:J

    sub-long v5, v3, v5

    iput-wide v3, p1, Lcom/iceteck/silicompressorr/videocompression/Track;->n:J

    iget v3, p1, Lcom/iceteck/silicompressorr/videocompression/Track;->h:I

    int-to-long v3, v3

    mul-long/2addr v5, v3

    const-wide/32 v3, 0x7a120

    add-long/2addr v5, v3

    const-wide/32 v3, 0xf4240

    div-long/2addr v5, v3

    iget-boolean v3, p1, Lcom/iceteck/silicompressorr/videocompression/Track;->o:Z

    if-nez v3, :cond_5

    iget-object v3, p1, Lcom/iceteck/silicompressorr/videocompression/Track;->m:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-wide v2, p1, Lcom/iceteck/silicompressorr/videocompression/Track;->c:J

    add-long/2addr v2, v5

    iput-wide v2, p1, Lcom/iceteck/silicompressorr/videocompression/Track;->c:J

    :cond_5
    iput-boolean v1, p1, Lcom/iceteck/silicompressorr/videocompression/Track;->o:Z

    :cond_6
    :goto_2
    iget p1, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    const/4 v2, 0x4

    if-eqz p4, :cond_7

    move v3, v1

    goto :goto_3

    :cond_7
    move v3, v2

    :goto_3
    add-int/2addr p1, v3

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget p1, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr p1, v3

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    if-nez p4, :cond_8

    iget-object p1, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->i:Ljava/nio/ByteBuffer;

    iget p4, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr p4, v2

    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->d:Ljava/nio/channels/FileChannel;

    iget-object p4, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    :cond_8
    iget-object p1, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->d:Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    iget-wide p1, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->e:J

    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->e:J

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->c:Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    :cond_9
    return v0
.end method
