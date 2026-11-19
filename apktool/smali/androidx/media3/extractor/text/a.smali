.class public final synthetic Landroidx/media3/extractor/text/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/media3/extractor/text/CuesWithTiming;

    sget-object p0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->d:Lcom/google/common/collect/Ordering;

    iget-wide p0, p1, Landroidx/media3/extractor/text/CuesWithTiming;->b:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-wide/16 p0, 0x0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
