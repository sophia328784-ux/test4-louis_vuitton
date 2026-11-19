.class public abstract Lcom/vuitton/foundation/model/domain/model/analytics/AnalyticsConstants$Values;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0000\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/foundation/model/domain/model/analytics/AnalyticsConstants$Values",
        "",
        "domain"
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
.method public static a(ZZZZLjava/lang/Boolean;)Ljava/lang/String;
    .locals 6

    const-string v0, "0"

    const-string v1, "1"

    if-eqz p0, :cond_0

    move-object p0, v1

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    const-string v2, "functional"

    invoke-static {v2, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AnalyticsConstants$Values;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_1

    move-object p1, v1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    const-string v2, "analytics"

    invoke-static {v2, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AnalyticsConstants$Values;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_2

    move-object p2, v1

    goto :goto_2

    :cond_2
    move-object p2, v0

    :goto_2
    const-string v2, "customization"

    invoke-static {v2, p2}, Lcom/vuitton/foundation/model/domain/model/analytics/AnalyticsConstants$Values;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p3, :cond_3

    move-object p3, v1

    goto :goto_3

    :cond_3
    move-object p3, v0

    :goto_3
    const-string v2, "advertising"

    invoke-static {v2, p3}, Lcom/vuitton/foundation/model/domain/model/analytics/AnalyticsConstants$Values;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_4

    move-object v0, v1

    :cond_4
    const-string p4, "augmented_reality"

    invoke-static {p4, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AnalyticsConstants$Values;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_4

    :cond_5
    const/4 p4, 0x0

    :goto_4
    filled-new-array {p0, p1, p2, p3, p4}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->v([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v4, 0x0

    const/16 v5, 0x3e

    const-string v1, "|"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ":"

    invoke-static {p0, v0, p1}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
