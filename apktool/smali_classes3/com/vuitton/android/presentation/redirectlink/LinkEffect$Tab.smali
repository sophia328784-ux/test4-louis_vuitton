.class public abstract Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/redirectlink/LinkEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Tab"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog;,
        Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Feed;,
        Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Services;,
        Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Wishlist;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab;",
        "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation;",
        "Feed",
        "Wishlist",
        "Services",
        "Catalog",
        "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog;",
        "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Feed;",
        "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Services;",
        "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Wishlist;",
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


# instance fields
.field public final a:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab;->a:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    return-void
.end method
