.class public final enum Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007R\u0017\u0010\u0008\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0005\u001a\u0004\u0008\t\u0010\u0007j\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType",
        "",
        "Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;",
        "",
        "buttonTag",
        "Ljava/lang/String;",
        "a",
        "()Ljava/lang/String;",
        "textTag",
        "b",
        "RETURN_OR_EXCHANGE",
        "DOWNLOAD_INVOICE",
        "RETURN",
        "TRACK_ORDER",
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

.field private static final synthetic $VALUES:[Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;

.field public static final enum DOWNLOAD_INVOICE:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;

.field public static final enum RETURN:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;

.field public static final enum RETURN_OR_EXCHANGE:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;

.field public static final enum TRACK_ORDER:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;


# instance fields
.field private final buttonTag:Ljava/lang/String;

.field private final textTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;

    const-string v1, "shortcut_returnOrExchange_button"

    const-string v2, "shortcut_returnOrExchange_text"

    const-string v3, "RETURN_OR_EXCHANGE"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;->RETURN_OR_EXCHANGE:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;

    new-instance v1, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;

    const-string v2, "shortcut_downloadInvoice_button"

    const-string v3, "shortcut_downloadInvoice_text"

    const-string v4, "DOWNLOAD_INVOICE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;->DOWNLOAD_INVOICE:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;

    new-instance v2, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;

    const-string v3, "shortcut_return_button"

    const-string v4, "shorcut_return_text"

    const-string v5, "RETURN"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3, v4}, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;->RETURN:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;

    new-instance v3, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;

    const-string v4, "shortcut_trackTheOrder_button"

    const-string v5, "shorcut_trackTheOrder_text"

    const-string v6, "TRACK_ORDER"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7, v4, v5}, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;->TRACK_ORDER:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;->$VALUES:[Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;->buttonTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;->textTag:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;
    .locals 1

    const-class v0, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;->$VALUES:[Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;->buttonTag:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;->textTag:Ljava/lang/String;

    return-object p0
.end method
