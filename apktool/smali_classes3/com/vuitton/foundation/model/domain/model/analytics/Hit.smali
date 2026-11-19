.class public interface abstract Lcom/vuitton/foundation/model/domain/model/analytics/Hit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ABTestHit;,
        Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit;,
        Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;,
        Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit;,
        Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ViewSearchResultHit;,
        Lcom/vuitton/foundation/model/domain/model/analytics/Hit$WebViewHit;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008v\u0018\u00002\u00020\u0001:\u0006\u0002\u0003\u0004\u0005\u0006\u0007\u0082\u0001\u0006\u0008\t\n\u000b\u000c\r\u00a8\u0006\u000e\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/analytics/Hit;",
        "",
        "ScreenHit",
        "EventHit",
        "ViewSearchResultHit",
        "ABTestHit",
        "AnomalyHit",
        "WebViewHit",
        "Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ABTestHit;",
        "Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit;",
        "Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;",
        "Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit;",
        "Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ViewSearchResultHit;",
        "Lcom/vuitton/foundation/model/domain/model/analytics/Hit$WebViewHit;",
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


# virtual methods
.method public abstract g()Ljava/util/List;
.end method

.method public abstract getType()Lcom/vuitton/foundation/model/domain/model/analytics/HitType;
.end method
