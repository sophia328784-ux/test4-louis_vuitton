.class public final enum Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\u0008\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;",
        "",
        "FULLSCREEN",
        "RATIO_16_9",
        "RATIO_9_16",
        "RATIO_2_3",
        "RATIO_4_5",
        "RATIO_1_1",
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

.field private static final synthetic $VALUES:[Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

.field public static final enum FULLSCREEN:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

.field public static final enum RATIO_16_9:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

.field public static final enum RATIO_1_1:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

.field public static final enum RATIO_2_3:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

.field public static final enum RATIO_4_5:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

.field public static final enum RATIO_9_16:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    const-string v1, "FULLSCREEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;->FULLSCREEN:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    const-string v2, "RATIO_16_9"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;->RATIO_16_9:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    const-string v3, "RATIO_9_16"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;->RATIO_9_16:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    const-string v4, "RATIO_2_3"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;->RATIO_2_3:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    const-string v5, "RATIO_4_5"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;->RATIO_4_5:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    const-string v6, "RATIO_1_1"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;->RATIO_1_1:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    filled-new-array/range {v0 .. v5}, [Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;->$VALUES:[Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;
    .locals 1

    const-class v0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;
    .locals 1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;->$VALUES:[Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    return-object v0
.end method
