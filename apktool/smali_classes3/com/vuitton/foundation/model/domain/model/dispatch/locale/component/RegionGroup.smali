.class public final enum Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u0000 \u00072\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;",
        "",
        "",
        "groupName",
        "Ljava/lang/String;",
        "b",
        "()Ljava/lang/String;",
        "Companion",
        "APAC",
        "EURO_LAND",
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

.field private static final synthetic $VALUES:[Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;

.field public static final enum APAC:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;

.field public static final Companion:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup$Companion;

.field public static final enum EURO_LAND:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;


# instance fields
.field private final groupName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;

    const/4 v1, 0x0

    const-string v2, "apac"

    const-string v3, "APAC"

    invoke-direct {v0, v3, v1, v2}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;->APAC:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;

    const/4 v2, 0x1

    const-string v3, "euroland"

    const-string v4, "EURO_LAND"

    invoke-direct {v1, v4, v2, v3}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;->EURO_LAND:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;

    filled-new-array {v0, v1}, [Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;->$VALUES:[Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;->Companion:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;->groupName:Ljava/lang/String;

    return-void
.end method

.method public static a()Lkotlin/enums/EnumEntries;
    .locals 1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;
    .locals 1

    const-class v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;
    .locals 1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;->$VALUES:[Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;->groupName:Ljava/lang/String;

    return-object p0
.end method
