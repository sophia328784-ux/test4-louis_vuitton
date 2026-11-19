.class public Lokio/ForwardingTimeout;
.super Lokio/Timeout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lokio/ForwardingTimeout;",
        "Lokio/Timeout;",
        "delegate",
        "<init>",
        "(Lokio/Timeout;)V",
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
.field public e:Lokio/Timeout;


# direct methods
.method public constructor <init>(Lokio/Timeout;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lokio/Timeout;-><init>()V

    iput-object p1, p0, Lokio/ForwardingTimeout;->e:Lokio/Timeout;

    return-void
.end method


# virtual methods
.method public final a()Lokio/Timeout;
    .locals 0

    iget-object p0, p0, Lokio/ForwardingTimeout;->e:Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->a()Lokio/Timeout;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lokio/Timeout;
    .locals 0

    iget-object p0, p0, Lokio/ForwardingTimeout;->e:Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->b()Lokio/Timeout;

    move-result-object p0

    return-object p0
.end method

.method public final c()J
    .locals 2

    iget-object p0, p0, Lokio/ForwardingTimeout;->e:Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(J)Lokio/Timeout;
    .locals 0

    iget-object p0, p0, Lokio/ForwardingTimeout;->e:Lokio/Timeout;

    invoke-virtual {p0, p1, p2}, Lokio/Timeout;->d(J)Lokio/Timeout;

    move-result-object p0

    return-object p0
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, Lokio/ForwardingTimeout;->e:Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->e()Z

    move-result p0

    return p0
.end method

.method public final f()V
    .locals 0

    iget-object p0, p0, Lokio/ForwardingTimeout;->e:Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->f()V

    return-void
.end method

.method public final g(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lokio/ForwardingTimeout;->e:Lokio/Timeout;

    invoke-virtual {p0, p1, p2, p3}, Lokio/Timeout;->g(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object p0

    return-object p0
.end method

.method public final h()J
    .locals 2

    iget-object p0, p0, Lokio/ForwardingTimeout;->e:Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->h()J

    move-result-wide v0

    return-wide v0
.end method
