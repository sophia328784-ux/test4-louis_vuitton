.class public abstract Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;,
        Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToWishlist;,
        Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$Purchase;,
        Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$RemoveFromCart;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent;",
        "",
        "AddToCart",
        "RemoveFromCart",
        "Purchase",
        "AddToWishlist",
        "Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;",
        "Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToWishlist;",
        "Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$Purchase;",
        "Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$RemoveFromCart;",
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


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent;->a:Ljava/lang/String;

    return-void
.end method
