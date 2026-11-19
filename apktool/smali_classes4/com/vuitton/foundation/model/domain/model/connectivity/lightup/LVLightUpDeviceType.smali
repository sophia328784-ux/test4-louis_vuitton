.class public final enum Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u0000 \u00072\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;",
        "",
        "",
        "value",
        "I",
        "a",
        "()I",
        "Companion",
        "KEEPALL",
        "X408PAIR",
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

.field private static final synthetic $VALUES:[Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

.field public static final Companion:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType$Companion;

.field public static final enum KEEPALL:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

.field public static final enum X408PAIR:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    const-string v1, "KEEPALL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;->KEEPALL:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    const-string v2, "X408PAIR"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;->X408PAIR:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    filled-new-array {v0, v1}, [Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;->$VALUES:[Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;->Companion:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;
    .locals 1

    const-class v0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;
    .locals 1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;->$VALUES:[Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;->value:I

    return p0
.end method
