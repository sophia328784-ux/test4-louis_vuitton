.class public final enum Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\u0008\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;",
        "",
        "VIDEO_STARTED",
        "PREROLL_FINISHED",
        "VIDEO_FINISHED",
        "VIDEO_PROGRESS",
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

.field private static final synthetic $VALUES:[Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;

.field public static final enum PREROLL_FINISHED:Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;

.field public static final enum VIDEO_FINISHED:Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;

.field public static final enum VIDEO_PROGRESS:Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;

.field public static final enum VIDEO_STARTED:Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;

    const-string v1, "VIDEO_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;->VIDEO_STARTED:Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;

    new-instance v1, Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;

    const-string v2, "PREROLL_FINISHED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;->PREROLL_FINISHED:Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;

    new-instance v2, Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;

    const-string v3, "VIDEO_FINISHED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;->VIDEO_FINISHED:Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;

    new-instance v3, Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;

    const-string v4, "VIDEO_PROGRESS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;->VIDEO_PROGRESS:Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;

    move-result-object v0

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;->$VALUES:[Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;
    .locals 1

    const-class v0, Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;

    return-object p0
.end method

.method public static values()[Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;
    .locals 1

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;->$VALUES:[Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;

    return-object v0
.end method
