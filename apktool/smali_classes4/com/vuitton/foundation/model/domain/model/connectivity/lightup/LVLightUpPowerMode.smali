.class public final enum Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u0000 \u00072\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;",
        "",
        "",
        "modeIdentifier",
        "I",
        "a",
        "()I",
        "Companion",
        "ECO",
        "STANDARD",
        "STANDBY",
        "ALWAYS_ON",
        "WALKING",
        "DISCREET",
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

.field private static final synthetic $VALUES:[Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

.field public static final enum ALWAYS_ON:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

.field public static final Companion:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode$Companion;

.field public static final enum DISCREET:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

.field public static final enum ECO:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

.field public static final enum STANDARD:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

.field public static final enum STANDBY:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

.field public static final enum WALKING:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;


# instance fields
.field private final modeIdentifier:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    const-string v1, "ECO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;->ECO:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    const-string v2, "STANDARD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;->STANDARD:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    const-string v3, "STANDBY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;->STANDBY:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    const-string v4, "ALWAYS_ON"

    const/4 v5, 0x3

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;->ALWAYS_ON:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    const-string v5, "WALKING"

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7}, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;->WALKING:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    const-string v6, "DISCREET"

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;->DISCREET:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    filled-new-array/range {v0 .. v5}, [Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;->$VALUES:[Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;->Companion:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;->modeIdentifier:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;
    .locals 1

    const-class v0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;
    .locals 1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;->$VALUES:[Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;->modeIdentifier:I

    return p0
.end method
