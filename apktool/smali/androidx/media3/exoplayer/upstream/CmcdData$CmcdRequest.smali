.class final Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/CmcdData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CmcdRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:Z

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;->a:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest;->a:J

    iget-wide v0, p1, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;->b:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest;->b:J

    iget-wide v0, p1, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;->c:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest;->c:J

    iget-boolean v0, p1, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;->d:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest;->d:Z

    iget-object v0, p1, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;->e:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest;->e:Ljava/lang/String;

    iget-object v0, p1, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;->f:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest;->f:Ljava/lang/String;

    iget-object p1, p1, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;->g:Lcom/google/common/collect/ImmutableList;

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest;->g:Lcom/google/common/collect/ImmutableList;

    return-void
.end method
