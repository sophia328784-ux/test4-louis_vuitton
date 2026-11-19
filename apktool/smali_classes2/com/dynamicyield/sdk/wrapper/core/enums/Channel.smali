.class public final enum Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/enums/Channel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0087\u0081\u0002\u0018\u0000 \u00072\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;",
        "",
        "",
        "valueStr",
        "Ljava/lang/String;",
        "a",
        "()Ljava/lang/String;",
        "Companion",
        "APP",
        "KIOSK",
        "DRIVE_THRU",
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
    with = Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ChannelSerializer;
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;

.field public static final enum APP:Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;

.field public static final Companion:Lcom/dynamicyield/sdk/wrapper/core/enums/Channel$Companion;

.field public static final enum DRIVE_THRU:Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;

.field public static final enum KIOSK:Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;


# instance fields
.field private final valueStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;

    const-string v1, "APP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;->APP:Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;

    new-instance v1, Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;

    const-string v2, "KIOSK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;->KIOSK:Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;

    new-instance v2, Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;

    const/4 v3, 0x2

    const-string v4, "DRIVE-THRU"

    const-string v5, "DRIVE_THRU"

    invoke-direct {v2, v5, v3, v4}, Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;->DRIVE_THRU:Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;

    filled-new-array {v0, v1, v2}, [Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;

    move-result-object v0

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;->$VALUES:[Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/enums/Channel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/enums/Channel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;->Companion:Lcom/dynamicyield/sdk/wrapper/core/enums/Channel$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;->valueStr:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;
    .locals 1

    const-class v0, Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;

    return-object p0
.end method

.method public static values()[Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;
    .locals 1

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;->$VALUES:[Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;->valueStr:Ljava/lang/String;

    return-object p0
.end method
