.class public final enum Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\u0008\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;",
        "",
        "COLOR",
        "MATERIAL",
        "MODEL_SIZE",
        "CARAT",
        "SIZE",
        "LANGUAGE",
        "FINISH",
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

.field private static final synthetic $VALUES:[Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

.field public static final enum CARAT:Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

.field public static final enum COLOR:Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

.field public static final enum FINISH:Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

.field public static final enum LANGUAGE:Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

.field public static final enum MATERIAL:Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

.field public static final enum MODEL_SIZE:Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

.field public static final enum SIZE:Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    const-string v1, "COLOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;->COLOR:Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    const-string v2, "MATERIAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;->MATERIAL:Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    const-string v3, "MODEL_SIZE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;->MODEL_SIZE:Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    const-string v4, "CARAT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;->CARAT:Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    const-string v5, "SIZE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;->SIZE:Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    const-string v6, "LANGUAGE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;->LANGUAGE:Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    const-string v7, "FINISH"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;->FINISH:Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    filled-new-array/range {v0 .. v6}, [Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;->$VALUES:[Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public static a()Lkotlin/enums/EnumEntries;
    .locals 1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;
    .locals 1

    const-class v0, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;
    .locals 1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;->$VALUES:[Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    return-object v0
.end method
