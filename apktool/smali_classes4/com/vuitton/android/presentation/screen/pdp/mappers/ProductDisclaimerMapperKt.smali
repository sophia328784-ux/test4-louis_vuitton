.class public abstract Lcom/vuitton/android/presentation/screen/pdp/mappers/ProductDisclaimerMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
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
.method public static final a(ZZZZLcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;
    .locals 4

    const/4 v0, 0x0

    const v1, 0x7f140fd1

    const v2, 0x7f140fce

    const/4 v3, 0x2

    if-eqz p1, :cond_9

    if-eqz p5, :cond_9

    if-eqz p6, :cond_9

    if-eqz p7, :cond_9

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p8, Lcom/vuitton/android/presentation/utils/BackOrderUtils$WhenMappings;->a:[I

    invoke-virtual {p7}, Ljava/lang/Enum;->ordinal()I

    move-result p7

    aget p7, p8, p7

    const/4 p8, 0x1

    if-eq p7, p8, :cond_6

    if-eq p7, v3, :cond_3

    const/4 p8, 0x3

    if-ne p7, p8, :cond_2

    if-eqz p0, :cond_1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    filled-new-array {p5, p6}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const p5, 0x7f140fcf

    invoke-direct {p0, p5, p1}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;)V

    goto/16 :goto_4

    :cond_1
    :goto_0
    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const p1, 0x7f140fd2

    invoke-static {p6}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p5

    invoke-direct {p0, p1, p5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;)V

    goto/16 :goto_4

    :cond_2
    invoke-static {}, Lv40;->g()V

    return-object v0

    :cond_3
    if-eqz p0, :cond_5

    if-ne p0, p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    filled-new-array {p5, p6}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const p5, 0x7f140fd0

    invoke-direct {p0, p5, p1}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;)V

    goto :goto_4

    :cond_5
    :goto_1
    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const p1, 0x7f140fd3

    invoke-static {p6}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p5

    invoke-direct {p0, p1, p5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;)V

    goto :goto_4

    :cond_6
    if-eqz p0, :cond_8

    if-ne p0, p1, :cond_7

    goto :goto_2

    :cond_7
    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    filled-new-array {p5, p6}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;)V

    goto :goto_4

    :cond_8
    :goto_2
    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    invoke-static {p6}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;)V

    goto :goto_4

    :cond_9
    if-eqz p0, :cond_d

    if-eqz p8, :cond_d

    if-eqz p9, :cond_d

    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p9}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gtz p1, :cond_a

    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const p1, 0x7f140fd8

    invoke-direct {p0, p1, v0, v3, v0}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_4

    :cond_a
    if-lez p0, :cond_c

    if-ne p0, p1, :cond_b

    goto :goto_3

    :cond_b
    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    filled-new-array {p8, p9}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;)V

    goto :goto_4

    :cond_c
    :goto_3
    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    invoke-static {p9}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;)V

    goto :goto_4

    :cond_d
    move-object p0, v0

    :goto_4
    if-nez p0, :cond_e

    return-object v0

    :cond_e
    if-eqz p4, :cond_f

    invoke-static {p4, p2, p3}, Lcom/vuitton/android/presentation/screen/pdp/mappers/ProductDisclaimerMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;ZZ)Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    move-result-object p1

    goto :goto_5

    :cond_f
    move-object p1, v0

    :goto_5
    if-eqz p4, :cond_10

    invoke-static {p4, p2, p3}, Lcom/vuitton/android/presentation/screen/pdp/mappers/ProductDisclaimerMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;ZZ)Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    move-result-object v0

    :cond_10
    new-instance p2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;

    if-nez p1, :cond_11

    sget-object p1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Empty;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Empty;

    :cond_11
    if-nez v0, :cond_12

    sget-object v0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Empty;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Empty;

    :cond_12
    invoke-direct {p2, p0, p1, v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V

    return-object p2
.end method

.method public static final b(Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;ZZ)Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;->b:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/vuitton/android/presentation/extensions/StringAndroidExtKt;->b(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1
    const/4 p0, 0x2

    if-eqz p1, :cond_2

    new-instance p1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const p2, 0x7f140a64

    invoke-direct {p1, p2, v0, p0, v0}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    :cond_2
    if-eqz p2, :cond_3

    new-instance p1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const p2, 0x7f14102a

    invoke-direct {p1, p2, v0, p0, v0}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    :cond_3
    sget-object p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Empty;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Empty;

    return-object p0
.end method

.method public static final c(Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;ZZ)Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;->c:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/vuitton/android/presentation/extensions/StringAndroidExtKt;->b(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1
    const/4 p0, 0x2

    if-eqz p1, :cond_2

    new-instance p1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const p2, 0x7f140a65

    invoke-direct {p1, p2, v0, p0, v0}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    :cond_2
    if-eqz p2, :cond_3

    new-instance p1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const p2, 0x7f14102b

    invoke-direct {p1, p2, v0, p0, v0}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    :cond_3
    sget-object p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Empty;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Empty;

    return-object p0
.end method

.method public static final d(Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;ZZZ)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;->a:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/mappers/ProductDisclaimerMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;ZZ)Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    move-result-object p3

    invoke-static {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/mappers/ProductDisclaimerMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;ZZ)Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    move-result-object p1

    new-instance p2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;

    new-instance v0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0, p3, p1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V

    return-object p2

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
