.class public final enum Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0087\u0081\u0002\u0018\u0000 \u00072\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;",
        "",
        "",
        "valueStr",
        "Ljava/lang/String;",
        "a",
        "()Ljava/lang/String;",
        "Companion",
        "CUSTOM_JSON",
        "RECS_DECISION",
        "QSR_PRODUCT_RECS",
        "SORTING_DECISION",
        "SEARCH",
        "ASSISTANT",
        "DY-Sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
    with = Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/DecisionTypeSerializer;
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

.field public static final enum ASSISTANT:Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

.field public static final enum CUSTOM_JSON:Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

.field public static final Companion:Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType$Companion;

.field public static final enum QSR_PRODUCT_RECS:Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

.field public static final enum RECS_DECISION:Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

.field public static final enum SEARCH:Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

.field public static final enum SORTING_DECISION:Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;


# instance fields
.field private final valueStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

    const-string v1, "CUSTOM_JSON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;->CUSTOM_JSON:Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

    new-instance v1, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

    const/4 v2, 0x1

    const-string v3, "RECS"

    const-string v4, "RECS_DECISION"

    invoke-direct {v1, v4, v2, v3}, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;->RECS_DECISION:Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

    new-instance v2, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

    const-string v3, "QSR_PRODUCT_RECS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v3}, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;->QSR_PRODUCT_RECS:Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

    new-instance v3, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

    const/4 v4, 0x3

    const-string v5, "SORT"

    const-string v6, "SORTING_DECISION"

    invoke-direct {v3, v6, v4, v5}, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;->SORTING_DECISION:Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

    new-instance v4, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

    const-string v5, "SEARCH"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v5}, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;->SEARCH:Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

    new-instance v5, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

    const/4 v6, 0x5

    const-string v7, "SHOPPING_MUSE"

    const-string v8, "ASSISTANT"

    invoke-direct {v5, v8, v6, v7}, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;->ASSISTANT:Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

    filled-new-array/range {v0 .. v5}, [Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

    move-result-object v0

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;->$VALUES:[Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;->Companion:Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;->valueStr:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;
    .locals 1

    const-class v0, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

    return-object p0
.end method

.method public static values()[Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;
    .locals 1

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;->$VALUES:[Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;->valueStr:Ljava/lang/String;

    return-object p0
.end method
