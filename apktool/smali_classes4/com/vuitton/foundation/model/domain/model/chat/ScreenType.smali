.class public final enum Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u0008\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/chat/ScreenOrigin;",
        "origin",
        "Lcom/vuitton/foundation/model/domain/model/chat/ScreenOrigin;",
        "a",
        "()Lcom/vuitton/foundation/model/domain/model/chat/ScreenOrigin;",
        "",
        "screen",
        "Ljava/lang/String;",
        "b",
        "()Ljava/lang/String;",
        "FEED",
        "SERVICES",
        "CART",
        "DISTANT_CARE",
        "CHECKOUT",
        "CERTIFICATES",
        "OTHER",
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


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

.field public static final enum CART:Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

.field public static final enum CERTIFICATES:Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

.field public static final enum CHECKOUT:Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

.field public static final enum DISTANT_CARE:Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

.field public static final enum FEED:Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

.field public static final enum OTHER:Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

.field public static final enum SERVICES:Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;


# instance fields
.field private final origin:Lcom/vuitton/foundation/model/domain/model/chat/ScreenOrigin;

.field private final screen:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/chat/ScreenOrigin;->HOME:Lcom/vuitton/foundation/model/domain/model/chat/ScreenOrigin;

    const-string v2, "Feed"

    const-string v3, "FEED"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;-><init>(Ljava/lang/String;ILcom/vuitton/foundation/model/domain/model/chat/ScreenOrigin;Ljava/lang/String;)V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;->FEED:Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/chat/ScreenOrigin;->OTHER:Lcom/vuitton/foundation/model/domain/model/chat/ScreenOrigin;

    const-string v3, "Services"

    const-string v4, "SERVICES"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;-><init>(Ljava/lang/String;ILcom/vuitton/foundation/model/domain/model/chat/ScreenOrigin;Ljava/lang/String;)V

    sput-object v1, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;->SERVICES:Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

    move-object v3, v2

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

    const/4 v4, 0x2

    const-string v5, "Cart"

    const-string v6, "CART"

    invoke-direct {v2, v6, v4, v3, v5}, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;-><init>(Ljava/lang/String;ILcom/vuitton/foundation/model/domain/model/chat/ScreenOrigin;Ljava/lang/String;)V

    sput-object v2, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;->CART:Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

    move-object v4, v3

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

    const/4 v5, 0x3

    const-string v6, "Distant Care"

    const-string v7, "DISTANT_CARE"

    invoke-direct {v3, v7, v5, v4, v6}, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;-><init>(Ljava/lang/String;ILcom/vuitton/foundation/model/domain/model/chat/ScreenOrigin;Ljava/lang/String;)V

    sput-object v3, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;->DISTANT_CARE:Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

    move-object v5, v4

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

    sget-object v6, Lcom/vuitton/foundation/model/domain/model/chat/ScreenOrigin;->CHECKOUT:Lcom/vuitton/foundation/model/domain/model/chat/ScreenOrigin;

    const-string v7, "Checkout"

    const-string v8, "CHECKOUT"

    const/4 v9, 0x4

    invoke-direct {v4, v8, v9, v6, v7}, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;-><init>(Ljava/lang/String;ILcom/vuitton/foundation/model/domain/model/chat/ScreenOrigin;Ljava/lang/String;)V

    sput-object v4, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;->CHECKOUT:Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

    move-object v6, v5

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

    const/4 v7, 0x5

    const-string v8, "Certificates"

    const-string v9, "CERTIFICATES"

    invoke-direct {v5, v9, v7, v6, v8}, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;-><init>(Ljava/lang/String;ILcom/vuitton/foundation/model/domain/model/chat/ScreenOrigin;Ljava/lang/String;)V

    sput-object v5, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;->CERTIFICATES:Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

    move-object v7, v6

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

    const/4 v8, 0x6

    const-string v9, "Other"

    const-string v10, "OTHER"

    invoke-direct {v6, v10, v8, v7, v9}, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;-><init>(Ljava/lang/String;ILcom/vuitton/foundation/model/domain/model/chat/ScreenOrigin;Ljava/lang/String;)V

    sput-object v6, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;->OTHER:Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

    filled-new-array/range {v0 .. v6}, [Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;->$VALUES:[Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/vuitton/foundation/model/domain/model/chat/ScreenOrigin;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;->origin:Lcom/vuitton/foundation/model/domain/model/chat/ScreenOrigin;

    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;->screen:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;
    .locals 1

    const-class v0, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;
    .locals 1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;->$VALUES:[Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/vuitton/foundation/model/domain/model/chat/ScreenOrigin;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;->origin:Lcom/vuitton/foundation/model/domain/model/chat/ScreenOrigin;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;->screen:Ljava/lang/String;

    return-object p0
.end method
