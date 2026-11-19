.class public final enum Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

.field public static final enum Alert:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

.field public static final enum Article:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

.field public static final enum Chat:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

.field public static final enum Checkout:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

.field public static final enum Data:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

.field public static final enum Home:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

.field public static final enum Lead:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

.field public static final enum LeadConfirmed:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

.field public static final enum Login:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

.field public static final enum NotFound:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

.field public static final enum OrderConfirmed:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

.field public static final enum Other:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

.field public static final enum Product:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

.field public static final enum ProductCategory:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

.field public static final enum Search:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;


# instance fields
.field private final text:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    const-string v1, "Product"

    const/4 v2, 0x0

    const-string v3, "product"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;->Product:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    new-instance v1, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    const-string v2, "Chat"

    const-string v3, "chat"

    const/16 v5, 0xe

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;->Chat:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    new-instance v2, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    const/4 v3, 0x2

    const-string v4, "productcategory"

    const-string v6, "ProductCategory"

    invoke-direct {v2, v6, v3, v4, v3}, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;->ProductCategory:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    new-instance v3, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    const/4 v4, 0x3

    const-string v6, "article"

    const-string v7, "Article"

    invoke-direct {v3, v7, v4, v6, v4}, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;->Article:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    new-instance v4, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    const/4 v6, 0x4

    const-string v7, "search"

    const-string v8, "Search"

    invoke-direct {v4, v8, v6, v7, v6}, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;->Search:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    new-instance v6, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    const/4 v7, 0x5

    const-string v8, "homepage"

    const-string v9, "Home"

    invoke-direct {v6, v9, v7, v8, v7}, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;->Home:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    move-object v7, v6

    new-instance v6, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    const/4 v8, 0x6

    const-string v9, "checkout"

    const-string v10, "Checkout"

    invoke-direct {v6, v10, v8, v9, v8}, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;->Checkout:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    move-object v8, v7

    new-instance v7, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    const/4 v9, 0x7

    const-string v10, "other"

    const-string v11, "Other"

    invoke-direct {v7, v11, v9, v10, v9}, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;->Other:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    move-object v9, v8

    new-instance v8, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    const/16 v10, 0x8

    const-string v11, "pagenotfound"

    const-string v12, "NotFound"

    invoke-direct {v8, v12, v10, v11, v10}, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v8, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;->NotFound:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    move-object v10, v9

    new-instance v9, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    const/16 v11, 0x9

    const-string v12, "login"

    const-string v13, "Login"

    invoke-direct {v9, v13, v11, v12, v11}, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;->Login:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    move-object v11, v10

    new-instance v10, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    const/16 v12, 0xa

    const-string v13, "orderconfirmed"

    const-string v14, "OrderConfirmed"

    invoke-direct {v10, v14, v12, v13, v12}, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v10, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;->OrderConfirmed:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    move-object v12, v11

    new-instance v11, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    const/16 v13, 0xb

    const-string v14, "lead"

    const-string v15, "Lead"

    invoke-direct {v11, v15, v13, v14, v13}, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v11, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;->Lead:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    move-object v13, v12

    new-instance v12, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    const/16 v14, 0xc

    const-string v15, "leadconfirmed"

    const-string v5, "LeadConfirmed"

    invoke-direct {v12, v5, v14, v15, v14}, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v12, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;->LeadConfirmed:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    move-object v5, v13

    new-instance v13, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    const-string v14, "data"

    const/16 v15, 0x190

    move-object/from16 v16, v0

    const-string v0, "Data"

    move-object/from16 v17, v1

    const/16 v1, 0xd

    invoke-direct {v13, v0, v1, v14, v15}, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v13, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;->Data:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    new-instance v14, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    const-string v0, "alert"

    const/16 v1, 0x191

    const-string v15, "Alert"

    move-object/from16 v18, v2

    const/16 v2, 0xe

    invoke-direct {v14, v15, v2, v0, v1}, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v14, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;->Alert:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    filled-new-array/range {v0 .. v14}, [Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    move-result-object v0

    sput-object v0, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;->$VALUES:[Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;->text:Ljava/lang/String;

    iput p4, p0, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;
    .locals 1

    const-class v0, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    return-object p0
.end method

.method public static values()[Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;
    .locals 1

    sget-object v0, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;->$VALUES:[Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    invoke-virtual {v0}, [Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;->text:Ljava/lang/String;

    return-object p0
.end method
