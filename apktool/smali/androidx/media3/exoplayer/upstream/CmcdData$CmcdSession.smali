.class final Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/CmcdData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CmcdSession"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:F

.field public final f:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession$Builder;->a:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession;->a:Ljava/lang/String;

    iget-object v0, p1, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession$Builder;->b:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession;->b:Ljava/lang/String;

    iget-object v0, p1, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession$Builder;->c:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession;->c:Ljava/lang/String;

    iget-object v0, p1, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession$Builder;->d:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession;->d:Ljava/lang/String;

    iget v0, p1, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession$Builder;->e:F

    iput v0, p0, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession;->e:F

    iget-object p1, p1, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession$Builder;->f:Lcom/google/common/collect/ImmutableList;

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession;->f:Lcom/google/common/collect/ImmutableList;

    return-void
.end method
