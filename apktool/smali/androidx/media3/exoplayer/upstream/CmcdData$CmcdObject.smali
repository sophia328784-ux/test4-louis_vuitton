.class final Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/CmcdData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CmcdObject"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject$Builder;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:Ljava/lang/String;

.field public final e:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject$Builder;->a:I

    iput v0, p0, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject;->a:I

    iget v0, p1, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject$Builder;->b:I

    iput v0, p0, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject;->b:I

    iget-wide v0, p1, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject$Builder;->c:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject;->c:J

    iget-object v0, p1, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject$Builder;->d:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject;->d:Ljava/lang/String;

    iget-object p1, p1, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject$Builder;->e:Lcom/google/common/collect/ImmutableList;

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject;->e:Lcom/google/common/collect/ImmutableList;

    return-void
.end method
