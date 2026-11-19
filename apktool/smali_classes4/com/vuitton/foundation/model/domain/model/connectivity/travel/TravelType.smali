.class public final enum Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\u0008\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;",
        "",
        "FLIGHT",
        "TRAIN",
        "HOTEL",
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

.field private static final synthetic $VALUES:[Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;

.field public static final enum FLIGHT:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;

.field public static final enum HOTEL:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;

.field public static final enum TRAIN:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;

    const-string v1, "FLIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;->FLIGHT:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;

    const-string v2, "TRAIN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;->TRAIN:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;

    const-string v3, "HOTEL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;->HOTEL:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;

    filled-new-array {v0, v1, v2}, [Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;->$VALUES:[Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;
    .locals 1

    const-class v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;
    .locals 1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;->$VALUES:[Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;

    return-object v0
.end method
