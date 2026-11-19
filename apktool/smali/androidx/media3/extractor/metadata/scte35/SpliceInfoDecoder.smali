.class public final Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;
.super Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;

.field public final b:Landroidx/media3/common/util/ParsableBitArray;

.field public c:Landroidx/media3/common/util/TimestampAdjuster;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;-><init>()V

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->a:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->b:Landroidx/media3/common/util/ParsableBitArray;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/media3/extractor/metadata/MetadataInputBuffer;Ljava/nio/ByteBuffer;)Landroidx/media3/common/Metadata;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->a:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v3, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->b:Landroidx/media3/common/util/ParsableBitArray;

    iget-object v4, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->c:Landroidx/media3/common/util/TimestampAdjuster;

    if-eqz v4, :cond_0

    iget-wide v5, v1, Landroidx/media3/extractor/metadata/MetadataInputBuffer;->k:J

    monitor-enter v4

    :try_start_0
    iget-wide v7, v4, Landroidx/media3/common/util/TimestampAdjuster;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    cmp-long v4, v5, v7

    if-eqz v4, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :goto_0
    new-instance v4, Landroidx/media3/common/util/TimestampAdjuster;

    iget-wide v5, v1, Landroidx/media3/decoder/DecoderInputBuffer;->g:J

    invoke-direct {v4, v5, v6}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    iput-object v4, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->c:Landroidx/media3/common/util/TimestampAdjuster;

    iget-wide v5, v1, Landroidx/media3/decoder/DecoderInputBuffer;->g:J

    iget-wide v7, v1, Landroidx/media3/extractor/metadata/MetadataInputBuffer;->k:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Landroidx/media3/common/util/TimestampAdjuster;->a(J)J

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->limit()I

    move-result v4

    invoke-virtual {v2, v4, v1}, Landroidx/media3/common/util/ParsableByteArray;->L(I[B)V

    invoke-virtual {v3, v4, v1}, Landroidx/media3/common/util/ParsableBitArray;->k(I[B)V

    const/16 v1, 0x27

    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    invoke-virtual {v3, v6}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v6

    int-to-long v6, v6

    or-long/2addr v4, v6

    const/16 v6, 0x14

    invoke-virtual {v3, v6}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    const/16 v6, 0xc

    invoke-virtual {v3, v6}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v6

    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v3

    const/16 v7, 0xe

    invoke-virtual {v2, v7}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    const/4 v7, 0x0

    if-eqz v3, :cond_19

    const/16 v8, 0xff

    const/4 v9, 0x4

    if-eq v3, v8, :cond_18

    if-eq v3, v9, :cond_e

    const/4 v6, 0x5

    if-eq v3, v6, :cond_3

    const/4 v6, 0x6

    if-eq v3, v6, :cond_2

    const/4 v0, 0x0

    goto/16 :goto_f

    :cond_2
    iget-object v0, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->c:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-static {v4, v5, v2}, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;->d(JLandroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/media3/common/util/TimestampAdjuster;->b(J)J

    move-result-wide v4

    new-instance v0, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;

    invoke-direct {v0, v2, v3, v4, v5}, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;-><init>(JJ)V

    goto/16 :goto_f

    :cond_3
    iget-object v0, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->c:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_4

    move v3, v1

    goto :goto_1

    :cond_4
    move v3, v7

    :goto_1
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-nez v3, :cond_d

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v3

    and-int/lit8 v10, v3, 0x40

    if-eqz v10, :cond_5

    move v10, v1

    goto :goto_2

    :cond_5
    move v10, v7

    :goto_2
    and-int/lit8 v11, v3, 0x20

    if-eqz v11, :cond_6

    move v11, v1

    goto :goto_3

    :cond_6
    move v11, v7

    :goto_3
    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_7

    move v3, v1

    goto :goto_4

    :cond_7
    move v3, v7

    :goto_4
    if-eqz v10, :cond_8

    if-nez v3, :cond_8

    invoke-static {v4, v5, v2}, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;->d(JLandroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide v12

    goto :goto_5

    :cond_8
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    :goto_5
    if-nez v10, :cond_b

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v6

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v14, v7

    :goto_6
    if-ge v14, v6, :cond_a

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    if-nez v3, :cond_9

    invoke-static {v4, v5, v2}, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;->d(JLandroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide v15

    move-wide v8, v15

    goto :goto_7

    :cond_9
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    :goto_7
    new-instance v15, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;

    invoke-virtual {v0, v8, v9}, Landroidx/media3/common/util/TimestampAdjuster;->b(J)J

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_a
    move-object v6, v10

    :cond_b
    if-eqz v11, :cond_c

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    :cond_c
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-wide v8, v12

    :goto_8
    move-object v15, v6

    goto :goto_9

    :cond_d
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_8

    :goto_9
    new-instance v14, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;

    invoke-virtual {v0, v8, v9}, Landroidx/media3/common/util/TimestampAdjuster;->b(J)J

    move-result-wide v18

    move-wide/from16 v16, v8

    invoke-direct/range {v14 .. v19}, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;-><init>(Ljava/util/List;JJ)V

    move-object v0, v14

    goto/16 :goto_f

    :cond_e
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v7

    :goto_a
    if-ge v4, v0, :cond_17

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_f

    move v5, v1

    goto :goto_b

    :cond_f
    move v5, v7

    :goto_b
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-nez v5, :cond_16

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v5

    and-int/lit8 v8, v5, 0x40

    if-eqz v8, :cond_10

    move v8, v1

    goto :goto_c

    :cond_10
    move v8, v7

    :goto_c
    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_11

    move v5, v1

    goto :goto_d

    :cond_11
    move v5, v7

    :goto_d
    if-eqz v8, :cond_12

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    :cond_12
    if-nez v8, :cond_14

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v6

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v9, v7

    :goto_e
    if-ge v9, v6, :cond_13

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    new-instance v10, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    :cond_13
    move-object v6, v8

    :cond_14
    if-eqz v5, :cond_15

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    :cond_15
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    :cond_16
    new-instance v5, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;

    invoke-direct {v5, v6}, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_17
    new-instance v0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;

    invoke-direct {v0, v3}, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;-><init>(Ljava/util/ArrayList;)V

    goto :goto_f

    :cond_18
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v10

    sub-int/2addr v6, v9

    new-array v0, v6, [B

    invoke-virtual {v2, v7, v6, v0}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    new-instance v0, Landroidx/media3/extractor/metadata/scte35/PrivateCommand;

    invoke-direct {v0, v10, v11, v4, v5}, Landroidx/media3/extractor/metadata/scte35/PrivateCommand;-><init>(JJ)V

    goto :goto_f

    :cond_19
    new-instance v0, Landroidx/media3/extractor/metadata/scte35/SpliceNullCommand;

    invoke-direct {v0}, Landroidx/media3/extractor/metadata/scte35/SpliceNullCommand;-><init>()V

    :goto_f
    if-nez v0, :cond_1a

    new-instance v0, Landroidx/media3/common/Metadata;

    new-array v1, v7, [Landroidx/media3/common/Metadata$Entry;

    invoke-direct {v0, v1}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    return-object v0

    :cond_1a
    new-instance v2, Landroidx/media3/common/Metadata;

    new-array v1, v1, [Landroidx/media3/common/Metadata$Entry;

    aput-object v0, v1, v7

    invoke-direct {v2, v1}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    return-object v2
.end method
