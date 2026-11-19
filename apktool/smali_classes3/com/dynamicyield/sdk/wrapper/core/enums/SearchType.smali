.class public final enum Lcom/dynamicyield/sdk/wrapper/core/enums/SearchType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/enums/SearchType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dynamicyield/sdk/wrapper/core/enums/SearchType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u0000 \u00072\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/enums/SearchType;",
        "",
        "",
        "valueStr",
        "Ljava/lang/String;",
        "getValueStr",
        "()Ljava/lang/String;",
        "Companion",
        "SEMANTIC",
        "VISUAL",
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


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/dynamicyield/sdk/wrapper/core/enums/SearchType;

.field public static final Companion:Lcom/dynamicyield/sdk/wrapper/core/enums/SearchType$Companion;

.field public static final enum SEMANTIC:Lcom/dynamicyield/sdk/wrapper/core/enums/SearchType;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum VISUAL:Lcom/dynamicyield/sdk/wrapper/core/enums/SearchType;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field


# instance fields
.field private final valueStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/enums/SearchType;

    const/4 v1, 0x0

    const-string v2, "Semantic Search"

    const-string v3, "SEMANTIC"

    invoke-direct {v0, v3, v1, v2}, Lcom/dynamicyield/sdk/wrapper/core/enums/SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/enums/SearchType;->SEMANTIC:Lcom/dynamicyield/sdk/wrapper/core/enums/SearchType;

    new-instance v1, Lcom/dynamicyield/sdk/wrapper/core/enums/SearchType;

    const/4 v2, 0x1

    const-string v3, "Visual Search"

    const-string v4, "VISUAL"

    invoke-direct {v1, v4, v2, v3}, Lcom/dynamicyield/sdk/wrapper/core/enums/SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dynamicyield/sdk/wrapper/core/enums/SearchType;->VISUAL:Lcom/dynamicyield/sdk/wrapper/core/enums/SearchType;

    filled-new-array {v0, v1}, [Lcom/dynamicyield/sdk/wrapper/core/enums/SearchType;

    move-result-object v0

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/enums/SearchType;->$VALUES:[Lcom/dynamicyield/sdk/wrapper/core/enums/SearchType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/enums/SearchType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/enums/SearchType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/enums/SearchType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/enums/SearchType;->Companion:Lcom/dynamicyield/sdk/wrapper/core/enums/SearchType$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/enums/SearchType;->valueStr:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dynamicyield/sdk/wrapper/core/enums/SearchType;
    .locals 1

    const-class v0, Lcom/dynamicyield/sdk/wrapper/core/enums/SearchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dynamicyield/sdk/wrapper/core/enums/SearchType;

    return-object p0
.end method

.method public static values()[Lcom/dynamicyield/sdk/wrapper/core/enums/SearchType;
    .locals 1

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/enums/SearchType;->$VALUES:[Lcom/dynamicyield/sdk/wrapper/core/enums/SearchType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dynamicyield/sdk/wrapper/core/enums/SearchType;

    return-object v0
.end method
