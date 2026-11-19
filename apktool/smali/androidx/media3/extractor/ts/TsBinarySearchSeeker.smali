.class final Landroidx/media3/extractor/ts/TsBinarySearchSeeker;
.super Landroidx/media3/extractor/BinarySearchSeeker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/TimestampAdjuster;JJII)V
    .locals 14

    new-instance v1, Landroidx/media3/extractor/BinarySearchSeeker$DefaultSeekTimestampConverter;

    invoke-direct {v1}, Landroidx/media3/extractor/BinarySearchSeeker$DefaultSeekTimestampConverter;-><init>()V

    new-instance v2, Landroidx/media3/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;

    move/from16 v0, p6

    move/from16 v3, p7

    invoke-direct {v2, v0, p1, v3}, Landroidx/media3/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;-><init>(ILandroidx/media3/common/util/TimestampAdjuster;I)V

    const-wide/16 v3, 0x1

    add-long v5, p2, v3

    const-wide/16 v11, 0xbc

    const/16 v13, 0x3ac

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide/from16 v3, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v0 .. v13}, Landroidx/media3/extractor/BinarySearchSeeker;-><init>(Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJI)V

    return-void
.end method
