.class public final enum Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderHeaderType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderHeaderType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007R\u0017\u0010\u0008\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0005\u001a\u0004\u0008\t\u0010\u0007j\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderHeaderType",
        "",
        "Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderHeaderType;",
        "",
        "labelTag",
        "Ljava/lang/String;",
        "a",
        "()Ljava/lang/String;",
        "titleTag",
        "b",
        "DELIVERY_DATE",
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


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderHeaderType;

.field public static final enum DELIVERY_DATE:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderHeaderType;


# instance fields
.field private final labelTag:Ljava/lang/String;

.field private final titleTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderHeaderType;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderHeaderType;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderHeaderType;->DELIVERY_DATE:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderHeaderType;

    filled-new-array {v0}, [Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderHeaderType;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderHeaderType;->$VALUES:[Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderHeaderType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderHeaderType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "DELIVERY_DATE"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-string v0, "MyOrder_EstimatedDeliveryDateItem_text"

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderHeaderType;->labelTag:Ljava/lang/String;

    const-string v0, "MyOrder_EstimatedDeliveryDateItemTitle_text"

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderHeaderType;->titleTag:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderHeaderType;
    .locals 1

    const-class v0, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderHeaderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderHeaderType;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderHeaderType;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderHeaderType;->$VALUES:[Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderHeaderType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderHeaderType;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderHeaderType;->labelTag:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderHeaderType;->titleTag:Ljava/lang/String;

    return-object p0
.end method
