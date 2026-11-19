.class public final enum Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u0008\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;",
        "",
        "",
        "displayName",
        "Ljava/lang/String;",
        "a",
        "()Ljava/lang/String;",
        "",
        "value",
        "F",
        "b",
        "()F",
        "SPEED_1X",
        "SPEED_1_5X",
        "SPEED_2X",
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

.field private static final synthetic $VALUES:[Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;

.field public static final enum SPEED_1X:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;

.field public static final enum SPEED_1_5X:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;

.field public static final enum SPEED_2X:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;


# instance fields
.field private final displayName:Ljava/lang/String;

.field private final value:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;

    const-string v1, "x1"

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "SPEED_1X"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;-><init>(Ljava/lang/String;ILjava/lang/String;F)V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;->SPEED_1X:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;

    const-string v2, "x1.5"

    const/high16 v3, 0x3fc00000    # 1.5f

    const-string v4, "SPEED_1_5X"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;-><init>(Ljava/lang/String;ILjava/lang/String;F)V

    sput-object v1, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;->SPEED_1_5X:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;

    const-string v3, "x2"

    const/high16 v4, 0x40000000    # 2.0f

    const-string v5, "SPEED_2X"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3, v4}, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;-><init>(Ljava/lang/String;ILjava/lang/String;F)V

    sput-object v2, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;->SPEED_2X:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;

    filled-new-array {v0, v1, v2}, [Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;->$VALUES:[Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;->displayName:Ljava/lang/String;

    iput p4, p0, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;->value:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;
    .locals 1

    const-class v0, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;
    .locals 1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;->$VALUES:[Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public final b()F
    .locals 0

    iget p0, p0, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;->value:F

    return p0
.end method
