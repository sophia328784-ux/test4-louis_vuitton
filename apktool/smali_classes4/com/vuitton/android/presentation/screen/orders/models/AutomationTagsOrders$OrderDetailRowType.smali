.class public final enum Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007R\u0017\u0010\u0008\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0005\u001a\u0004\u0008\t\u0010\u0007R\u0017\u0010\n\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0005\u001a\u0004\u0008\u000b\u0010\u0007j\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType",
        "",
        "Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;",
        "",
        "viewTag",
        "Ljava/lang/String;",
        "c",
        "()Ljava/lang/String;",
        "titleTag",
        "a",
        "valueTag",
        "b",
        "PRODUCT_NAME",
        "SHIPPING_ADDRESS",
        "SHIPPING_METHOD",
        "ORDER_DATE",
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

.field private static final synthetic $VALUES:[Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;

.field public static final enum ORDER_DATE:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;

.field public static final enum PRODUCT_NAME:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;

.field public static final enum SHIPPING_ADDRESS:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;

.field public static final enum SHIPPING_METHOD:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;


# instance fields
.field private final titleTag:Ljava/lang/String;

.field private final valueTag:Ljava/lang/String;

.field private final viewTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;

    const-string v4, "MyOrder_ProductNameText_text"

    const-string v5, "MyOrder_OrderedProductNameText_text"

    const-string v1, "PRODUCT_NAME"

    const/4 v2, 0x0

    const-string v3, "MyOrder_ProductNameItem_view"

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;->PRODUCT_NAME:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;

    new-instance v1, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;

    const-string v5, "MyOrder_ShippingAddressText_text"

    const-string v6, "MyOrder_OrderedProductShippingAddress_text"

    const-string v2, "SHIPPING_ADDRESS"

    const/4 v3, 0x1

    const-string v4, "MyOrder_ShippingAddressItem_view"

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;->SHIPPING_ADDRESS:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;

    new-instance v2, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;

    const-string v6, "MyOrder_ShippingMethodText_text"

    const-string v7, "MyOrder_OrderedProductShippingMethod_text"

    const-string v3, "SHIPPING_METHOD"

    const/4 v4, 0x2

    const-string v5, "MyOrder_ShippingMethodItem_view"

    invoke-direct/range {v2 .. v7}, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;->SHIPPING_METHOD:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;

    new-instance v3, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;

    const-string v7, "MyOrder_OrderDateText_text"

    const-string v8, "MyOrder_OrderedProductDate_text"

    const-string v4, "ORDER_DATE"

    const/4 v5, 0x3

    const-string v6, "MyOrder_OrderDateItem_view"

    invoke-direct/range {v3 .. v8}, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;->ORDER_DATE:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;->$VALUES:[Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;->viewTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;->titleTag:Ljava/lang/String;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;->valueTag:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;
    .locals 1

    const-class v0, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;->$VALUES:[Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;->titleTag:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;->valueTag:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;->viewTag:Ljava/lang/String;

    return-object p0
.end method
