.class public abstract Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog;
.super Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Catalog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogDefault;,
        Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogPlp;,
        Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogProduct;,
        Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogSection;,
        Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogSkuList;,
        Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$StoreMode;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u00002\u00020\u0001:\u0006\u0002\u0003\u0004\u0005\u0006\u0007\u0082\u0001\u0006\u0008\t\n\u000b\u000c\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog;",
        "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab;",
        "StoreMode",
        "CatalogProduct",
        "CatalogPlp",
        "CatalogSkuList",
        "CatalogSection",
        "CatalogDefault",
        "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogDefault;",
        "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogPlp;",
        "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogProduct;",
        "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogSection;",
        "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogSkuList;",
        "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$StoreMode;",
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
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    sget-object p1, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->CATALOG:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab;-><init>(Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
