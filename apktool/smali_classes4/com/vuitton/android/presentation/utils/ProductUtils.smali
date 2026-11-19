.class public abstract Lcom/vuitton/android/presentation/utils/ProductUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageRatio;,
        Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;,
        Lcom/vuitton/android/presentation/utils/ProductUtils$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/utils/ProductUtils;",
        "",
        "ProductImageRatio",
        "ProductImageTypeItemView",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static a(Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageRatio;)I
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;->FRONT:Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;

    if-ne p0, v0, :cond_4

    if-nez p1, :cond_0

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;->DEFAULT:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    :cond_0
    sget-object p0, Lcom/vuitton/android/presentation/utils/ProductUtils$WhenMappings;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_3

    sget-object p0, Lcom/vuitton/android/presentation/utils/ProductUtils$WhenMappings;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    if-eq p0, p1, :cond_2

    if-ne p0, v1, :cond_1

    const p0, 0x7f08008a

    return p0

    :cond_1
    invoke-static {}, Lv40;->g()V

    return v0

    :cond_2
    const p0, 0x7f080089

    return p0

    :cond_3
    invoke-static {}, Lv40;->g()V

    return v0

    :cond_4
    const p0, 0x7f080088

    return p0
.end method

.method public static b(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageRatio;)I
    .locals 4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;->a()Lkotlin/enums/EnumEntries;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1, p1, p2}, Lcom/vuitton/android/presentation/utils/ProductUtils;->a(Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageRatio;)I

    move-result p0

    return p0
.end method
