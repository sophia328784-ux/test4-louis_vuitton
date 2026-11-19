.class public abstract Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;->c:Lcom/vuitton/foundation/model/domain/model/common/Scale;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    sget-object v4, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt$WhenMappings;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v4, v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    sget-object v2, Lcom/vuitton/android/presentation/model/common/ScaleUiModel;->FILL:Lcom/vuitton/android/presentation/model/common/ScaleUiModel;

    :goto_0
    move-object v3, v2

    goto :goto_1

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-object v3

    :cond_1
    sget-object v2, Lcom/vuitton/android/presentation/model/common/ScaleUiModel;->FIT:Lcom/vuitton/android/presentation/model/common/ScaleUiModel;

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v3, p0}, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/ScaleUiModel;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/Asset;->a:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/common/Asset;->b:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;)Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    move-result-object v2

    :cond_1
    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/presentation/model/common/AssetUiModel;-><init>(Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;)V

    return-object v0
.end method

.method public static final c(Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;)Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;->c:Lcom/vuitton/android/presentation/model/common/VideoIdUiModel$Companion;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->e:Ljava/time/Instant;

    iget-object v7, p0, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->f:Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;

    iget-object v8, p0, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->g:Ljava/lang/String;

    new-instance v1, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/time/Instant;Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method
