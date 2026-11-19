.class public final enum Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\u0008\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;",
        "",
        "DYNAMIC_YIELD",
        "LAST_VIEWED_PRODUCTS",
        "MOST_PURCHASED_WITH",
        "SKUS",
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

.field private static final synthetic $VALUES:[Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

.field public static final enum DYNAMIC_YIELD:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

.field public static final enum LAST_VIEWED_PRODUCTS:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

.field public static final enum MOST_PURCHASED_WITH:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

.field public static final enum SKUS:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    const-string v1, "DYNAMIC_YIELD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;->DYNAMIC_YIELD:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    const-string v2, "LAST_VIEWED_PRODUCTS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;->LAST_VIEWED_PRODUCTS:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    const-string v3, "MOST_PURCHASED_WITH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;->MOST_PURCHASED_WITH:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    const-string v4, "SKUS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;->SKUS:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;->$VALUES:[Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;
    .locals 1

    const-class v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;
    .locals 1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;->$VALUES:[Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    return-object v0
.end method
