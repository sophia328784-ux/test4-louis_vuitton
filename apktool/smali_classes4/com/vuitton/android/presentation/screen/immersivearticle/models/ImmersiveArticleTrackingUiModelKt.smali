.class public abstract Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt$WhenMappings;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;)Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;
    .locals 2

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    sget-object v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const-string p0, "recommendation"

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string p0, "feed_article"

    :goto_0
    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string p0, "fashion_show_article"

    return-object p0
.end method

.method public static final c(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const-string p0, "recommendation"

    return-object p0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public static final d(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "recommendation"

    return-object p0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string p0, "immersive_article"

    return-object p0
.end method

.method public static final e(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const-string p0, "seo_landing_page"

    return-object p0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object p1
.end method
