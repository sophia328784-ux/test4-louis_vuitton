.class public final Lkotlin/internal/jdk8/JDK8PlatformImplementations$getSystemClock$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/time/Clock;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "kotlin/internal/jdk8/JDK8PlatformImplementations$getSystemClock$2",
        "Lkotlin/time/Clock;",
        "kotlin-stdlib-jdk8"
    }
    k = 0x1
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public final now()Lkotlin/time/Instant;
    .locals 10

    sget-object p0, Lkotlin/time/Instant;->d:Lkotlin/time/Instant$Companion;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    xor-long v6, v0, v2

    const-wide/16 v8, 0x0

    cmp-long p0, v6, v8

    if-gez p0, :cond_0

    mul-long v6, v4, v2

    cmp-long p0, v6, v0

    if-eqz p0, :cond_0

    const-wide/16 v6, -0x1

    add-long/2addr v4, v6

    :cond_0
    rem-long/2addr v0, v2

    xor-long v6, v0, v2

    neg-long v8, v0

    or-long/2addr v8, v0

    and-long/2addr v6, v8

    const/16 p0, 0x3f

    shr-long/2addr v6, p0

    and-long/2addr v2, v6

    add-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    long-to-int p0, v0

    const-wide v0, -0x701cefeb9bec00L

    cmp-long v0, v4, v0

    if-gez v0, :cond_1

    sget-object p0, Lkotlin/time/Instant;->e:Lkotlin/time/Instant;

    return-object p0

    :cond_1
    const-wide v0, 0x701cd2fa9578ffL

    cmp-long v0, v4, v0

    if-lez v0, :cond_2

    sget-object p0, Lkotlin/time/Instant;->f:Lkotlin/time/Instant;

    return-object p0

    :cond_2
    invoke-static {p0, v4, v5}, Lkotlin/time/Instant$Companion;->a(IJ)Lkotlin/time/Instant;

    move-result-object p0

    return-object p0
.end method
