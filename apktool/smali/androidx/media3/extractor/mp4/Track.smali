.class public final Landroidx/media3/extractor/mp4/Track;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mp4/Track$Transformation;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:Landroidx/media3/common/Format;

.field public final h:I

.field public final i:[J

.field public final j:[J

.field public final k:I

.field public final l:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;


# direct methods
.method public constructor <init>(IIJJJJLandroidx/media3/common/Format;I[Landroidx/media3/extractor/mp4/TrackEncryptionBox;I[J[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/mp4/Track;->a:I

    iput p2, p0, Landroidx/media3/extractor/mp4/Track;->b:I

    iput-wide p3, p0, Landroidx/media3/extractor/mp4/Track;->c:J

    iput-wide p5, p0, Landroidx/media3/extractor/mp4/Track;->d:J

    iput-wide p7, p0, Landroidx/media3/extractor/mp4/Track;->e:J

    iput-wide p9, p0, Landroidx/media3/extractor/mp4/Track;->f:J

    iput-object p11, p0, Landroidx/media3/extractor/mp4/Track;->g:Landroidx/media3/common/Format;

    iput p12, p0, Landroidx/media3/extractor/mp4/Track;->h:I

    iput-object p13, p0, Landroidx/media3/extractor/mp4/Track;->l:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iput p14, p0, Landroidx/media3/extractor/mp4/Track;->k:I

    iput-object p15, p0, Landroidx/media3/extractor/mp4/Track;->i:[J

    move-object/from16 p1, p16

    iput-object p1, p0, Landroidx/media3/extractor/mp4/Track;->j:[J

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/Format;)Landroidx/media3/extractor/mp4/Track;
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Landroidx/media3/extractor/mp4/Track;

    iget-object v15, v0, Landroidx/media3/extractor/mp4/Track;->i:[J

    iget-object v2, v0, Landroidx/media3/extractor/mp4/Track;->j:[J

    move-object v3, v1

    iget v1, v0, Landroidx/media3/extractor/mp4/Track;->a:I

    move-object/from16 v16, v2

    iget v2, v0, Landroidx/media3/extractor/mp4/Track;->b:I

    move-object v5, v3

    iget-wide v3, v0, Landroidx/media3/extractor/mp4/Track;->c:J

    move-object v7, v5

    iget-wide v5, v0, Landroidx/media3/extractor/mp4/Track;->d:J

    move-object v9, v7

    iget-wide v7, v0, Landroidx/media3/extractor/mp4/Track;->e:J

    move-object v11, v9

    iget-wide v9, v0, Landroidx/media3/extractor/mp4/Track;->f:J

    iget v12, v0, Landroidx/media3/extractor/mp4/Track;->h:I

    iget-object v13, v0, Landroidx/media3/extractor/mp4/Track;->l:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget v14, v0, Landroidx/media3/extractor/mp4/Track;->k:I

    move-object v0, v11

    move-object/from16 v11, p1

    invoke-direct/range {v0 .. v16}, Landroidx/media3/extractor/mp4/Track;-><init>(IIJJJJLandroidx/media3/common/Format;I[Landroidx/media3/extractor/mp4/TrackEncryptionBox;I[J[J)V

    return-object v0
.end method
