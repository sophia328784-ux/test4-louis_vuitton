.class final Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/CmcdData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CmcdStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;->a:I

    iput v0, p0, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus;->a:I

    iget-boolean v0, p1, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;->b:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus;->b:Z

    iget-object p1, p1, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;->c:Lcom/google/common/collect/ImmutableList;

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus;->c:Lcom/google/common/collect/ImmutableList;

    return-void
.end method
