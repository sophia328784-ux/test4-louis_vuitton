.class public Lcom/iceteck/silicompressorr/videocompression/Track;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final p:Ljava/util/HashMap;


# instance fields
.field public final a:J

.field public final b:Ljava/util/ArrayList;

.field public c:J

.field public final d:Ljava/lang/String;

.field public final e:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

.field public final f:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

.field public final g:Ljava/util/LinkedList;

.field public final h:I

.field public final i:Ljava/util/Date;

.field public final j:I

.field public final k:I

.field public final l:F

.field public final m:Ljava/util/ArrayList;

.field public n:J

.field public o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/iceteck/silicompressorr/videocompression/Track;->p:Ljava/util/HashMap;

    const v1, 0x17700

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x15888

    invoke-static {v2, v0, v1, v3}, La;->h(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0xfa00

    invoke-static {v2, v0, v1, v3}, La;->h(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    const v3, 0xbb80

    invoke-static {v2, v0, v1, v3}, La;->h(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    const v3, 0xac44

    invoke-static {v2, v0, v1, v3}, La;->h(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    const/16 v3, 0x7d00

    invoke-static {v2, v0, v1, v3}, La;->h(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    const/16 v3, 0x5dc0

    invoke-static {v2, v0, v1, v3}, La;->h(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    const/16 v3, 0x5622

    invoke-static {v2, v0, v1, v3}, La;->h(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    const/16 v3, 0x3e80

    invoke-static {v2, v0, v1, v3}, La;->h(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    const/16 v3, 0x2ee0

    invoke-static {v2, v0, v1, v3}, La;->h(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    const/16 v3, 0x2b11

    invoke-static {v2, v0, v1, v3}, La;->h(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    const/16 v3, 0x1f40

    invoke-static {v2, v0, v1, v3}, La;->h(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILandroid/media/MediaFormat;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/iceteck/silicompressorr/videocompression/Track;->a:J

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/iceteck/silicompressorr/videocompression/Track;->b:Ljava/util/ArrayList;

    iput-wide v2, v0, Lcom/iceteck/silicompressorr/videocompression/Track;->c:J

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/iceteck/silicompressorr/videocompression/Track;->e:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    iput-object v4, v0, Lcom/iceteck/silicompressorr/videocompression/Track;->f:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    iput-object v4, v0, Lcom/iceteck/silicompressorr/videocompression/Track;->g:Ljava/util/LinkedList;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    iput-object v5, v0, Lcom/iceteck/silicompressorr/videocompression/Track;->i:Ljava/util/Date;

    const/4 v5, 0x0

    iput v5, v0, Lcom/iceteck/silicompressorr/videocompression/Track;->l:F

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/iceteck/silicompressorr/videocompression/Track;->m:Ljava/util/ArrayList;

    iput-wide v2, v0, Lcom/iceteck/silicompressorr/videocompression/Track;->n:J

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/iceteck/silicompressorr/videocompression/Track;->o:Z

    move/from16 v3, p1

    int-to-long v6, v3

    iput-wide v6, v0, Lcom/iceteck/silicompressorr/videocompression/Track;->a:J

    const/16 v3, 0xd

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-nez p3, :cond_3

    const-wide/16 v9, 0xbc7

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-wide v9, v0, Lcom/iceteck/silicompressorr/videocompression/Track;->c:J

    const-string v4, "width"

    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/iceteck/silicompressorr/videocompression/Track;->k:I

    const-string v5, "height"

    invoke-virtual {v1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/iceteck/silicompressorr/videocompression/Track;->j:I

    const v9, 0x15f90

    iput v9, v0, Lcom/iceteck/silicompressorr/videocompression/Track;->h:I

    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    iput-object v9, v0, Lcom/iceteck/silicompressorr/videocompression/Track;->g:Ljava/util/LinkedList;

    const-string v9, "vide"

    iput-object v9, v0, Lcom/iceteck/silicompressorr/videocompression/Track;->d:Ljava/lang/String;

    new-instance v9, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;

    invoke-direct {v9}, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;-><init>()V

    iput-object v9, v0, Lcom/iceteck/silicompressorr/videocompression/Track;->e:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    new-instance v9, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {v9}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    iput-object v9, v0, Lcom/iceteck/silicompressorr/videocompression/Track;->f:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    const-string v0, "mime"

    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "video/avc"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/16 v11, 0x18

    const-wide/high16 v12, 0x4052000000000000L    # 72.0

    if-eqz v10, :cond_1

    new-instance v0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    const-string v10, "avc1"

    invoke-direct {v0, v10}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;-><init>(Ljava/lang/String;)V

    iput v2, v0, Lcom/coremedia/iso/boxes/sampleentry/AbstractSampleEntry;->k:I

    iput v11, v0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->r:I

    iput v2, v0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->p:I

    iput-wide v12, v0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->n:D

    iput-wide v12, v0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->o:D

    iput v4, v0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->l:I

    iput v5, v0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->m:I

    new-instance v4, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;

    invoke-direct {v4}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;-><init>()V

    const-string v5, "csd-0"

    invoke-virtual {v1, v5}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v10

    if-eqz v10, :cond_0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v5}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    move-result v11

    new-array v11, v11, [B

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v11, "csd-1"

    invoke-virtual {v1, v11}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    new-array v7, v7, [B

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->x:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v1, v4, v4, v10}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    invoke-static {v1}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iget-object v1, v4, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->k:Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;

    iput-object v10, v1, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->f:Ljava/util/ArrayList;

    sget-object v1, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->y:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v1, v4, v4, v5}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    invoke-static {v1}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iget-object v1, v4, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->k:Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;

    iput-object v5, v1, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->g:Ljava/util/ArrayList;

    :cond_0
    sget-object v1, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->v:Lorg/aspectj/lang/JoinPoint$StaticPart;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v1, v4, v4, v5}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    invoke-static {v1}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iget-object v1, v4, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->k:Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;

    iput v3, v1, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->d:I

    sget-object v1, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->t:Lorg/aspectj/lang/JoinPoint$StaticPart;

    new-instance v3, Ljava/lang/Integer;

    const/16 v5, 0x64

    invoke-direct {v3, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v1, v4, v4, v3}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    invoke-static {v1}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iget-object v1, v4, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->k:Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;

    iput v5, v1, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->b:I

    sget-object v1, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->C:Lorg/aspectj/lang/JoinPoint$StaticPart;

    new-instance v3, Ljava/lang/Integer;

    const/4 v5, -0x1

    invoke-direct {v3, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v1, v4, v4, v3}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    invoke-static {v1}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iget-object v1, v4, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->k:Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;

    iput v5, v1, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->j:I

    sget-object v1, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->E:Lorg/aspectj/lang/JoinPoint$StaticPart;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v1, v4, v4, v3}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    invoke-static {v1}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iget-object v1, v4, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->k:Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;

    iput v5, v1, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->k:I

    sget-object v1, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->A:Lorg/aspectj/lang/JoinPoint$StaticPart;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v1, v4, v4, v3}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    invoke-static {v1}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iget-object v1, v4, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->k:Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;

    iput v5, v1, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->i:I

    sget-object v1, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->s:Lorg/aspectj/lang/JoinPoint$StaticPart;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v1, v4, v4, v3}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    invoke-static {v1}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iget-object v1, v4, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->k:Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;

    iput v2, v1, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->a:I

    sget-object v1, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->w:Lorg/aspectj/lang/JoinPoint$StaticPart;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v1, v4, v4, v2}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    invoke-static {v1}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iget-object v1, v4, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->k:Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;

    iput v6, v1, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->e:I

    sget-object v1, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->u:Lorg/aspectj/lang/JoinPoint$StaticPart;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v1, v4, v4, v2}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    invoke-static {v1}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iget-object v1, v4, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->k:Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;

    iput v8, v1, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->c:I

    invoke-virtual {v0, v4}, Lcom/googlecode/mp4parser/BasicContainer;->g(Lcom/coremedia/iso/boxes/Box;)V

    invoke-virtual {v9, v0}, Lcom/googlecode/mp4parser/BasicContainer;->g(Lcom/coremedia/iso/boxes/Box;)V

    return-void

    :cond_1
    const-string v1, "video/mp4v"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    const-string v1, "mp4v"

    invoke-direct {v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;-><init>(Ljava/lang/String;)V

    iput v2, v0, Lcom/coremedia/iso/boxes/sampleentry/AbstractSampleEntry;->k:I

    iput v11, v0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->r:I

    iput v2, v0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->p:I

    iput-wide v12, v0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->n:D

    iput-wide v12, v0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->o:D

    iput v4, v0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->l:I

    iput v5, v0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->m:I

    invoke-virtual {v9, v0}, Lcom/googlecode/mp4parser/BasicContainer;->g(Lcom/coremedia/iso/boxes/Box;)V

    :cond_2
    return-void

    :cond_3
    const-wide/16 v9, 0x400

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-wide v9, v0, Lcom/iceteck/silicompressorr/videocompression/Track;->c:J

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v0, Lcom/iceteck/silicompressorr/videocompression/Track;->l:F

    const-string v5, "sample-rate"

    invoke-virtual {v1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/iceteck/silicompressorr/videocompression/Track;->h:I

    const-string v9, "soun"

    iput-object v9, v0, Lcom/iceteck/silicompressorr/videocompression/Track;->d:Ljava/lang/String;

    new-instance v9, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;

    invoke-direct {v9}, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;-><init>()V

    iput-object v9, v0, Lcom/iceteck/silicompressorr/videocompression/Track;->e:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    new-instance v9, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {v9}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    iput-object v9, v0, Lcom/iceteck/silicompressorr/videocompression/Track;->f:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    new-instance v0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    const-string v10, "mp4a"

    invoke-direct {v0, v10}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;-><init>(Ljava/lang/String;)V

    const-string v10, "channel-count"

    invoke-virtual {v1, v10}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v10

    iput v10, v0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->l:I

    invoke-virtual {v1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    int-to-long v10, v1

    iput-wide v10, v0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->n:J

    iput v2, v0, Lcom/coremedia/iso/boxes/sampleentry/AbstractSampleEntry;->k:I

    const/16 v1, 0x10

    iput v1, v0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->m:I

    new-instance v1, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;-><init>()V

    new-instance v5, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    invoke-direct {v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;-><init>()V

    iput v8, v5, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->d:I

    new-instance v10, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    invoke-direct {v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;-><init>()V

    const/4 v11, 0x2

    iput v11, v10, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;->d:I

    iput-object v10, v5, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->n:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    new-instance v10, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    invoke-direct {v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;-><init>()V

    const/16 v12, 0x40

    iput v12, v10, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->d:I

    const/4 v12, 0x5

    iput v12, v10, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->e:I

    const/16 v13, 0x600

    iput v13, v10, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->g:I

    const-wide/32 v13, 0x17700

    iput-wide v13, v10, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->h:J

    iput-wide v13, v10, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->i:J

    new-instance v13, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    invoke-direct {v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;-><init>()V

    iput v11, v13, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->e:I

    iget-wide v14, v0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->n:J

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    sget-object v15, Lcom/iceteck/silicompressorr/videocompression/Track;->p:Ljava/util/HashMap;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iput v14, v13, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->f:I

    iget v14, v0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->l:I

    iput v14, v13, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->h:I

    iput-object v13, v10, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->k:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    iput-object v10, v5, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->m:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    invoke-virtual {v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->c()I

    move-result v10

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/coremedia/iso/IsoTypeWriter;->f(ILjava/nio/ByteBuffer;)V

    invoke-virtual {v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->c()I

    move-result v13

    sub-int/2addr v13, v11

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    invoke-virtual {v10, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v13, v5, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->d:I

    invoke-static {v13, v10}, Lcom/coremedia/iso/IsoTypeWriter;->d(ILjava/nio/ByteBuffer;)V

    iget v13, v5, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->e:I

    shl-int/lit8 v13, v13, 0x7

    iget v14, v5, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->f:I

    const/4 v15, 0x6

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    iget v14, v5, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->g:I

    shl-int/2addr v14, v12

    or-int/2addr v13, v14

    iget v14, v5, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->h:I

    and-int/lit8 v14, v14, 0x1f

    or-int/2addr v13, v14

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    invoke-virtual {v10, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v13, v5, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->e:I

    if-lez v13, :cond_4

    iget v13, v5, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->k:I

    invoke-static {v13, v10}, Lcom/coremedia/iso/IsoTypeWriter;->d(ILjava/nio/ByteBuffer;)V

    :cond_4
    iget v13, v5, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->f:I

    if-lez v13, :cond_5

    iget v13, v5, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->i:I

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    invoke-virtual {v10, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v13, v5, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->j:Ljava/lang/String;

    invoke-static {v13}, Lcom/coremedia/iso/Utf8;->a(Ljava/lang/String;)[B

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_5
    iget v13, v5, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->g:I

    if-lez v13, :cond_6

    iget v13, v5, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->l:I

    invoke-static {v13, v10}, Lcom/coremedia/iso/IsoTypeWriter;->d(ILjava/nio/ByteBuffer;)V

    :cond_6
    iget-object v13, v5, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->m:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    iget-object v14, v13, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->k:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    const-string v16, "can\'t serialize that yet"

    if-nez v14, :cond_7

    move v14, v8

    :goto_0
    move/from16 p1, v3

    goto :goto_1

    :cond_7
    iget v14, v14, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->e:I

    if-ne v14, v11, :cond_e

    move v14, v7

    goto :goto_0

    :goto_1
    const/16 v3, 0xf

    add-int/2addr v14, v3

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-static {v7, v14}, Lcom/coremedia/iso/IsoTypeWriter;->f(ILjava/nio/ByteBuffer;)V

    move-object/from16 v17, v4

    iget-object v4, v13, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->k:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    if-nez v4, :cond_8

    goto :goto_2

    :cond_8
    iget v4, v4, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->e:I

    if-ne v4, v11, :cond_d

    move v8, v7

    :goto_2
    add-int/lit8 v8, v8, 0xd

    and-int/lit16 v4, v8, 0xff

    int-to-byte v4, v4

    invoke-virtual {v14, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v4, v13, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->d:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-virtual {v14, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v4, v13, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->e:I

    shl-int/2addr v4, v11

    iget v8, v13, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->f:I

    shl-int/2addr v8, v2

    or-int/2addr v4, v8

    or-int/2addr v4, v2

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-virtual {v14, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v4, v13, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->g:I

    invoke-static {v4, v14}, Lcom/coremedia/iso/IsoTypeWriter;->e(ILjava/nio/ByteBuffer;)V

    iget-wide v2, v13, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->h:J

    long-to-int v2, v2

    invoke-virtual {v14, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-wide v2, v13, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->i:J

    long-to-int v2, v2

    invoke-virtual {v14, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v2, v13, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->k:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    if-eqz v2, :cond_c

    iget v3, v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->e:I

    if-ne v3, v11, :cond_b

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/coremedia/iso/IsoTypeWriter;->f(ILjava/nio/ByteBuffer;)V

    iget v8, v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->e:I

    if-ne v8, v11, :cond_a

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    new-instance v8, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;

    invoke-direct {v8, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    iget v11, v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->e:I

    invoke-virtual {v8, v11, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->a(II)V

    iget v11, v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->f:I

    invoke-virtual {v8, v11, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->a(II)V

    iget v11, v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->f:I

    const/16 v12, 0xf

    if-eq v11, v12, :cond_9

    iget v2, v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->h:I

    invoke-virtual {v8, v2, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->a(II)V

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_3

    :cond_9
    invoke-static/range {v16 .. v16}, Lmt;->i(Ljava/lang/String;)V

    throw v17

    :cond_a
    invoke-static/range {v16 .. v16}, Lmt;->i(Ljava/lang/String;)V

    throw v17

    :cond_b
    invoke-static/range {v16 .. v16}, Lmt;->i(Ljava/lang/String;)V

    throw v17

    :cond_c
    :goto_3
    iget-object v2, v5, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->n:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/coremedia/iso/IsoTypeWriter;->f(ILjava/nio/ByteBuffer;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v2, v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;->d:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    sget-object v2, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->w:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v2, v1, v1, v5}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {v2}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    sget-object v2, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->t:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v2, v1, v1, v5}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {v2}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    sget-object v2, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->u:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v2, v1, v1, v10}, Lorg/aspectj/runtime/reflect/Factory;->c(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {v2}, Ltr;->B(Lorg/aspectj/lang/JoinPoint;)V

    iput-object v10, v1, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/BasicContainer;->g(Lcom/coremedia/iso/boxes/Box;)V

    invoke-virtual {v9, v0}, Lcom/googlecode/mp4parser/BasicContainer;->g(Lcom/coremedia/iso/boxes/Box;)V

    return-void

    :cond_d
    invoke-static/range {v16 .. v16}, Lmt;->i(Ljava/lang/String;)V

    throw v17

    :cond_e
    move-object/from16 v17, v4

    invoke-static/range {v16 .. v16}, Lmt;->i(Ljava/lang/String;)V

    throw v17
.end method
