.class public final enum Lcom/dynatrace/agent/common/connectivity/NetworkType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/agent/common/connectivity/NetworkType$Companion;,
        Lcom/dynatrace/agent/common/connectivity/NetworkType$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dynatrace/agent/common/connectivity/NetworkType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0080\u0081\u0002\u0018\u0000 \u00022\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/dynatrace/agent/common/connectivity/NetworkType;",
        "",
        "Companion",
        "WIFI",
        "CELLULAR",
        "ETHERNET",
        "OTHER",
        "NONE",
        "com.dynatrace.agent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/dynatrace/agent/common/connectivity/NetworkType;

.field public static final enum CELLULAR:Lcom/dynatrace/agent/common/connectivity/NetworkType;

.field public static final Companion:Lcom/dynatrace/agent/common/connectivity/NetworkType$Companion;

.field public static final enum ETHERNET:Lcom/dynatrace/agent/common/connectivity/NetworkType;

.field public static final enum NONE:Lcom/dynatrace/agent/common/connectivity/NetworkType;

.field public static final enum OTHER:Lcom/dynatrace/agent/common/connectivity/NetworkType;

.field public static final enum WIFI:Lcom/dynatrace/agent/common/connectivity/NetworkType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/dynatrace/agent/common/connectivity/NetworkType;

    const-string v1, "WIFI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dynatrace/agent/common/connectivity/NetworkType;->WIFI:Lcom/dynatrace/agent/common/connectivity/NetworkType;

    new-instance v1, Lcom/dynatrace/agent/common/connectivity/NetworkType;

    const-string v2, "CELLULAR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dynatrace/agent/common/connectivity/NetworkType;->CELLULAR:Lcom/dynatrace/agent/common/connectivity/NetworkType;

    new-instance v2, Lcom/dynatrace/agent/common/connectivity/NetworkType;

    const-string v3, "ETHERNET"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dynatrace/agent/common/connectivity/NetworkType;->ETHERNET:Lcom/dynatrace/agent/common/connectivity/NetworkType;

    new-instance v3, Lcom/dynatrace/agent/common/connectivity/NetworkType;

    const-string v4, "OTHER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dynatrace/agent/common/connectivity/NetworkType;->OTHER:Lcom/dynatrace/agent/common/connectivity/NetworkType;

    new-instance v4, Lcom/dynatrace/agent/common/connectivity/NetworkType;

    const-string v5, "NONE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dynatrace/agent/common/connectivity/NetworkType;->NONE:Lcom/dynatrace/agent/common/connectivity/NetworkType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/dynatrace/agent/common/connectivity/NetworkType;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/agent/common/connectivity/NetworkType;->$VALUES:[Lcom/dynatrace/agent/common/connectivity/NetworkType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/agent/common/connectivity/NetworkType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/dynatrace/agent/common/connectivity/NetworkType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/common/connectivity/NetworkType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynatrace/agent/common/connectivity/NetworkType;->Companion:Lcom/dynatrace/agent/common/connectivity/NetworkType$Companion;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dynatrace/agent/common/connectivity/NetworkType;
    .locals 1

    const-class v0, Lcom/dynatrace/agent/common/connectivity/NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/agent/common/connectivity/NetworkType;

    return-object p0
.end method

.method public static values()[Lcom/dynatrace/agent/common/connectivity/NetworkType;
    .locals 1

    sget-object v0, Lcom/dynatrace/agent/common/connectivity/NetworkType;->$VALUES:[Lcom/dynatrace/agent/common/connectivity/NetworkType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dynatrace/agent/common/connectivity/NetworkType;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dynatrace/agent/common/connectivity/NetworkType$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const-string p0, "unavailable"

    return-object p0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string p0, "unknown"

    return-object p0

    :cond_2
    const-string p0, "wired"

    return-object p0

    :cond_3
    const-string p0, "cell"

    return-object p0

    :cond_4
    const-string p0, "wifi"

    return-object p0
.end method
