.class public abstract Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "data"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/android/data/dto/common/AssetDto;)Lcom/vuitton/foundation/model/domain/model/common/Asset;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/common/Asset;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/AssetDto;->a:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/data/dto/common/AssetDto;->b:Lcom/vuitton/android/data/dto/common/AssetVideoDto;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->c(Lcom/vuitton/android/data/dto/common/AssetVideoDto;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v2, p0

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    :cond_1
    invoke-direct {v0, v1, v2}, Lcom/vuitton/foundation/model/domain/model/common/Asset;-><init>(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;)V

    return-object v0
.end method

.method public static final b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/common/AssetImageDto;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/AssetImageDto;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    iget-object v2, p0, Lcom/vuitton/android/data/dto/common/AssetImageDto;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/common/AssetImageDto;->d:Lcom/vuitton/android/data/dto/common/ScaleDto;

    const/4 v3, 0x0

    if-eqz p0, :cond_3

    sget-object v4, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v4, p0

    const/4 v4, 0x1

    if-eq p0, v4, :cond_2

    const/4 v4, 0x2

    if-ne p0, v4, :cond_1

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/common/Scale;->FILL:Lcom/vuitton/foundation/model/domain/model/common/Scale;

    :goto_0
    move-object v3, p0

    goto :goto_1

    :cond_1
    invoke-static {}, Lv40;->g()V

    return-object v3

    :cond_2
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/common/Scale;->FIT:Lcom/vuitton/foundation/model/domain/model/common/Scale;

    goto :goto_0

    :cond_3
    :goto_1
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Scale;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final c(Lcom/vuitton/android/data/dto/common/AssetVideoDto;)Ljava/lang/Object;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/common/AssetVideoDto;->f:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lcom/vuitton/android/data/dto/common/AssetVideoDto;->a:Ljava/lang/String;

    if-eqz v2, :cond_8

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/video/VideoId;->a:Lcom/vuitton/foundation/model/domain/model/video/VideoId$Companion;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/common/AssetVideoDto;->e:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/AssetVideoDto;->g:Ljava/lang/Boolean;

    if-eqz v6, :cond_1

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/time/Instant;->compareTo(Ljava/time/Instant;)I

    move-result v3

    if-gez v3, :cond_1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;->LIVE_UPCOMING:Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;

    :goto_2
    move-object v7, v0

    goto :goto_3

    :cond_1
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;->LIVE_DONE:Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;->LIVE:Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;->LIVE_REPLAY:Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lcom/vuitton/android/data/dto/common/AssetVideoDto;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, ""

    if-nez v0, :cond_4

    move-object v4, v1

    goto :goto_4

    :cond_4
    move-object v4, v0

    :goto_4
    :try_start_1
    iget-object v0, p0, Lcom/vuitton/android/data/dto/common/AssetVideoDto;->d:Ljava/lang/String;

    if-nez v0, :cond_5

    move-object v5, v1

    goto :goto_5

    :cond_5
    move-object v5, v0

    :goto_5
    iget-object v0, p0, Lcom/vuitton/android/data/dto/common/AssetVideoDto;->b:Ljava/lang/String;

    if-nez v0, :cond_6

    move-object v3, v1

    goto :goto_6

    :cond_6
    move-object v3, v0

    :goto_6
    iget-object p0, p0, Lcom/vuitton/android/data/dto/common/AssetVideoDto;->h:Ljava/lang/String;

    if-nez p0, :cond_7

    move-object v8, v1

    goto :goto_7

    :cond_7
    move-object v8, p0

    :goto_7
    new-instance v1, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/time/Instant;Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, v1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_8

    :cond_8
    const-string p0, "Required value was null."

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_8
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_9

    :cond_9
    instance-of p0, v0, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_a

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_9
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_a
    throw v0
.end method
