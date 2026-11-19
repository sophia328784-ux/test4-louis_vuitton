.class public interface abstract Lcom/vuitton/foundation/model/domain/model/analytics/HitType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ABTest;,
        Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ActivateStore;,
        Lcom/vuitton/foundation/model/domain/model/analytics/HitType$AddToCart;,
        Lcom/vuitton/foundation/model/domain/model/analytics/HitType$AddToWishlist;,
        Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Anomaly;,
        Lcom/vuitton/foundation/model/domain/model/analytics/HitType$BeginCheckout;,
        Lcom/vuitton/foundation/model/domain/model/analytics/HitType$CloseStore;,
        Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Custom;,
        Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Interaction;,
        Lcom/vuitton/foundation/model/domain/model/analytics/HitType$LegalConsents;,
        Lcom/vuitton/foundation/model/domain/model/analytics/HitType$LiveChat;,
        Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Login;,
        Lcom/vuitton/foundation/model/domain/model/analytics/HitType$PasswordResetSuccess;,
        Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Purchase;,
        Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Register;,
        Lcom/vuitton/foundation/model/domain/model/analytics/HitType$RemoveFromWishlist;,
        Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Screen;,
        Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Scroll;,
        Lcom/vuitton/foundation/model/domain/model/analytics/HitType$SelectItem;,
        Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ViewItem;,
        Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ViewItemList;,
        Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ViewSearchResults;,
        Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Vto;,
        Lcom/vuitton/foundation/model/domain/model/analytics/HitType$VtoLaunch;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008v\u0018\u00002\u00020\u0001:\u0018\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u0082\u0001\u0018\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&\'()*+,-./01\u00a8\u00062\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/analytics/HitType;",
        "",
        "AddToCart",
        "AddToWishlist",
        "BeginCheckout",
        "Purchase",
        "Screen",
        "SelectItem",
        "ViewItem",
        "ViewItemList",
        "ViewSearchResults",
        "ABTest",
        "ActivateStore",
        "Anomaly",
        "CloseStore",
        "Custom",
        "Interaction",
        "Scroll",
        "LegalConsents",
        "LiveChat",
        "Login",
        "PasswordResetSuccess",
        "RemoveFromWishlist",
        "Register",
        "Vto",
        "VtoLaunch",
        "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ABTest;",
        "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ActivateStore;",
        "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$AddToCart;",
        "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$AddToWishlist;",
        "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Anomaly;",
        "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$BeginCheckout;",
        "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$CloseStore;",
        "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Custom;",
        "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Interaction;",
        "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$LegalConsents;",
        "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$LiveChat;",
        "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Login;",
        "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$PasswordResetSuccess;",
        "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Purchase;",
        "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Register;",
        "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$RemoveFromWishlist;",
        "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Screen;",
        "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Scroll;",
        "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$SelectItem;",
        "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ViewItem;",
        "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ViewItemList;",
        "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ViewSearchResults;",
        "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Vto;",
        "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$VtoLaunch;",
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
