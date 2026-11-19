.class public final enum Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002R\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;",
        "",
        "",
        "",
        "level",
        "I",
        "getLevel",
        "()I",
        "VERBOSE",
        "DEBUG",
        "INFO",
        "WARN",
        "ERROR",
        "ASSERT",
        "OFF",
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

.field private static final synthetic $VALUES:[Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

.field public static final enum ASSERT:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

.field public static final enum DEBUG:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

.field public static final enum ERROR:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

.field public static final enum INFO:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

.field public static final enum OFF:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

.field public static final enum VERBOSE:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

.field public static final enum WARN:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;


# instance fields
.field private final level:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    const-string v1, "VERBOSE"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;->VERBOSE:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    new-instance v1, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    const-string v2, "DEBUG"

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-direct {v1, v2, v4, v5}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;->DEBUG:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    new-instance v2, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    const-string v4, "INFO"

    const/4 v6, 0x4

    invoke-direct {v2, v4, v3, v6}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;->INFO:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    new-instance v3, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    const-string v4, "WARN"

    const/4 v7, 0x5

    invoke-direct {v3, v4, v5, v7}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;->WARN:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    new-instance v4, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    const-string v5, "ERROR"

    const/4 v8, 0x6

    invoke-direct {v4, v5, v6, v8}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;->ERROR:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    new-instance v5, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    const-string v6, "ASSERT"

    const/4 v9, 0x7

    invoke-direct {v5, v6, v7, v9}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;->ASSERT:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    new-instance v6, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    const-string v7, "OFF"

    const/16 v9, 0x8

    invoke-direct {v6, v7, v8, v9}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;->OFF:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    filled-new-array/range {v0 .. v6}, [Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    move-result-object v0

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;->$VALUES:[Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;->level:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;
    .locals 1

    const-class v0, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;
    .locals 1

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;->$VALUES:[Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    return-object v0
.end method
