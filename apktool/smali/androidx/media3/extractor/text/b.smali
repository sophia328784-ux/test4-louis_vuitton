.class public final synthetic Landroidx/media3/extractor/text/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic b:Landroidx/media3/extractor/text/SubtitleExtractor;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/extractor/text/SubtitleExtractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/text/b;->b:Landroidx/media3/extractor/text/SubtitleExtractor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    check-cast p1, Landroidx/media3/extractor/text/CuesWithTiming;

    new-instance v0, Landroidx/media3/extractor/text/SubtitleExtractor$Sample;

    iget-wide v1, p1, Landroidx/media3/extractor/text/CuesWithTiming;->b:J

    iget-object p0, p0, Landroidx/media3/extractor/text/b;->b:Landroidx/media3/extractor/text/SubtitleExtractor;

    iget-object v3, p0, Landroidx/media3/extractor/text/SubtitleExtractor;->b:Landroidx/media3/extractor/text/CueEncoder;

    iget-object v4, p1, Landroidx/media3/extractor/text/CuesWithTiming;->a:Lcom/google/common/collect/ImmutableList;

    iget-wide v5, p1, Landroidx/media3/extractor/text/CuesWithTiming;->c:J

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5, v6}, Landroidx/media3/extractor/text/CueEncoder;->a(Lcom/google/common/collect/ImmutableList;J)[B

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/extractor/text/SubtitleExtractor$Sample;-><init>(J[B)V

    iget-object v1, p0, Landroidx/media3/extractor/text/SubtitleExtractor;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v1, p0, Landroidx/media3/extractor/text/SubtitleExtractor;->k:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    iget-wide v3, p1, Landroidx/media3/extractor/text/CuesWithTiming;->d:J

    cmp-long p1, v3, v1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/media3/extractor/text/SubtitleExtractor;->g(Landroidx/media3/extractor/text/SubtitleExtractor$Sample;)V

    return-void
.end method
