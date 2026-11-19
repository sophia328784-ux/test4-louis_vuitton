.class public final Lokio/internal/FixedLengthSource;
.super Lokio/ForwardingSource;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lokio/internal/FixedLengthSource;",
        "Lokio/ForwardingSource;",
        "Lokio/Source;",
        "delegate",
        "",
        "size",
        "",
        "truncate",
        "<init>",
        "(Lokio/Source;JZ)V",
        "okio"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final h:J

.field public final i:Z

.field public j:J


# direct methods
.method public constructor <init>(Lokio/Source;JZ)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    iput-wide p2, p0, Lokio/internal/FixedLengthSource;->h:J

    iput-boolean p4, p0, Lokio/internal/FixedLengthSource;->i:Z

    return-void
.end method


# virtual methods
.method public final read(Lokio/Buffer;J)J
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, p0, Lokio/internal/FixedLengthSource;->j:J

    iget-wide v3, p0, Lokio/internal/FixedLengthSource;->h:J

    cmp-long v2, v0, v3

    const-wide/16 v5, -0x1

    const-wide/16 v8, 0x0

    if-lez v2, :cond_0

    move-wide p2, v8

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lokio/internal/FixedLengthSource;->i:Z

    if-eqz v2, :cond_2

    sub-long v0, v3, v0

    cmp-long v2, v0, v8

    if-nez v2, :cond_1

    return-wide v5

    :cond_1
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide p2

    cmp-long v0, p2, v5

    if-eqz v0, :cond_3

    iget-wide v1, p0, Lokio/internal/FixedLengthSource;->j:J

    add-long/2addr v1, p2

    iput-wide v1, p0, Lokio/internal/FixedLengthSource;->j:J

    :cond_3
    iget-wide v1, p0, Lokio/internal/FixedLengthSource;->j:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    cmp-long v0, v1, v3

    if-lez v0, :cond_7

    :cond_5
    cmp-long p2, p2, v8

    if-lez p2, :cond_6

    cmp-long p2, v1, v3

    if-lez p2, :cond_6

    iget-wide p2, p1, Lokio/Buffer;->c:J

    sub-long/2addr v1, v3

    sub-long/2addr p2, v1

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lokio/Buffer;->u0(Lokio/Source;)J

    invoke-virtual {p1, v0, p2, p3}, Lokio/Buffer;->D(Lokio/Buffer;J)V

    invoke-virtual {v0}, Lokio/Buffer;->h()V

    :cond_6
    const-string v5, " bytes but got "

    iget-wide v6, p0, Lokio/internal/FixedLengthSource;->j:J

    const-string v2, "expected "

    invoke-static/range {v2 .. v7}, Lno0;->p(Ljava/lang/String;JLjava/lang/Object;J)V

    return-wide v8

    :cond_7
    return-wide p2
.end method
