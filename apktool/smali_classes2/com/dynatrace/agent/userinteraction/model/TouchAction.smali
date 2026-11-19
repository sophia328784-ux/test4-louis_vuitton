.class public final enum Lcom/dynatrace/agent/userinteraction/model/TouchAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dynatrace/agent/userinteraction/model/TouchAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0080\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\u0008\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/dynatrace/agent/userinteraction/model/TouchAction;",
        "",
        "DOWN",
        "UP",
        "MOVE",
        "POINTER_DOWN",
        "POINTER_UP",
        "UNKNOWN",
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

.field private static final synthetic $VALUES:[Lcom/dynatrace/agent/userinteraction/model/TouchAction;

.field public static final enum DOWN:Lcom/dynatrace/agent/userinteraction/model/TouchAction;

.field public static final enum MOVE:Lcom/dynatrace/agent/userinteraction/model/TouchAction;

.field public static final enum POINTER_DOWN:Lcom/dynatrace/agent/userinteraction/model/TouchAction;

.field public static final enum POINTER_UP:Lcom/dynatrace/agent/userinteraction/model/TouchAction;

.field public static final enum UNKNOWN:Lcom/dynatrace/agent/userinteraction/model/TouchAction;

.field public static final enum UP:Lcom/dynatrace/agent/userinteraction/model/TouchAction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/dynatrace/agent/userinteraction/model/TouchAction;

    const-string v1, "DOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dynatrace/agent/userinteraction/model/TouchAction;->DOWN:Lcom/dynatrace/agent/userinteraction/model/TouchAction;

    new-instance v1, Lcom/dynatrace/agent/userinteraction/model/TouchAction;

    const-string v2, "UP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dynatrace/agent/userinteraction/model/TouchAction;->UP:Lcom/dynatrace/agent/userinteraction/model/TouchAction;

    new-instance v2, Lcom/dynatrace/agent/userinteraction/model/TouchAction;

    const-string v3, "MOVE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dynatrace/agent/userinteraction/model/TouchAction;->MOVE:Lcom/dynatrace/agent/userinteraction/model/TouchAction;

    new-instance v3, Lcom/dynatrace/agent/userinteraction/model/TouchAction;

    const-string v4, "POINTER_DOWN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dynatrace/agent/userinteraction/model/TouchAction;->POINTER_DOWN:Lcom/dynatrace/agent/userinteraction/model/TouchAction;

    new-instance v4, Lcom/dynatrace/agent/userinteraction/model/TouchAction;

    const-string v5, "POINTER_UP"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dynatrace/agent/userinteraction/model/TouchAction;->POINTER_UP:Lcom/dynatrace/agent/userinteraction/model/TouchAction;

    new-instance v5, Lcom/dynatrace/agent/userinteraction/model/TouchAction;

    const-string v6, "UNKNOWN"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dynatrace/agent/userinteraction/model/TouchAction;->UNKNOWN:Lcom/dynatrace/agent/userinteraction/model/TouchAction;

    filled-new-array/range {v0 .. v5}, [Lcom/dynatrace/agent/userinteraction/model/TouchAction;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/agent/userinteraction/model/TouchAction;->$VALUES:[Lcom/dynatrace/agent/userinteraction/model/TouchAction;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/agent/userinteraction/model/TouchAction;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dynatrace/agent/userinteraction/model/TouchAction;
    .locals 1

    const-class v0, Lcom/dynatrace/agent/userinteraction/model/TouchAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/agent/userinteraction/model/TouchAction;

    return-object p0
.end method

.method public static values()[Lcom/dynatrace/agent/userinteraction/model/TouchAction;
    .locals 1

    sget-object v0, Lcom/dynatrace/agent/userinteraction/model/TouchAction;->$VALUES:[Lcom/dynatrace/agent/userinteraction/model/TouchAction;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dynatrace/agent/userinteraction/model/TouchAction;

    return-object v0
.end method
