.class public final enum Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\u0008\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;",
        "",
        "ADDRESS_ATG",
        "ADDRESS_TWIST",
        "GUEST_APPOINTMENT",
        "PROFILE_ATG",
        "PROFILE_TWIST",
        "forms"
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

.field private static final synthetic $VALUES:[Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;

.field public static final enum ADDRESS_ATG:Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;

.field public static final enum ADDRESS_TWIST:Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;

.field public static final enum GUEST_APPOINTMENT:Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;

.field public static final enum PROFILE_ATG:Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;

.field public static final enum PROFILE_TWIST:Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;

    const-string v1, "ADDRESS_ATG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;->ADDRESS_ATG:Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;

    new-instance v1, Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;

    const-string v2, "ADDRESS_TWIST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;->ADDRESS_TWIST:Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;

    new-instance v2, Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;

    const-string v3, "GUEST_APPOINTMENT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;->GUEST_APPOINTMENT:Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;

    new-instance v3, Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;

    const-string v4, "PROFILE_ATG"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;->PROFILE_ATG:Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;

    new-instance v4, Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;

    const-string v5, "PROFILE_TWIST"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;->PROFILE_TWIST:Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;

    move-result-object v0

    sput-object v0, Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;->$VALUES:[Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;
    .locals 1

    const-class v0, Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;
    .locals 1

    sget-object v0, Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;->$VALUES:[Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;

    return-object v0
.end method
