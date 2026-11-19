.class public final enum Lcom/vuitton/foundation/model/domain/model/portal/PortalSlideType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/foundation/model/domain/model/portal/PortalSlideType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/portal/PortalSlideType;",
        "",
        "CONTENT",
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

.field private static final synthetic $VALUES:[Lcom/vuitton/foundation/model/domain/model/portal/PortalSlideType;

.field public static final enum CONTENT:Lcom/vuitton/foundation/model/domain/model/portal/PortalSlideType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/portal/PortalSlideType;

    const-string v1, "CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/portal/PortalSlideType;->CONTENT:Lcom/vuitton/foundation/model/domain/model/portal/PortalSlideType;

    filled-new-array {v0}, [Lcom/vuitton/foundation/model/domain/model/portal/PortalSlideType;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/portal/PortalSlideType;->$VALUES:[Lcom/vuitton/foundation/model/domain/model/portal/PortalSlideType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/portal/PortalSlideType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/portal/PortalSlideType;
    .locals 1

    const-class v0, Lcom/vuitton/foundation/model/domain/model/portal/PortalSlideType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/portal/PortalSlideType;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/foundation/model/domain/model/portal/PortalSlideType;
    .locals 1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/portal/PortalSlideType;->$VALUES:[Lcom/vuitton/foundation/model/domain/model/portal/PortalSlideType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/foundation/model/domain/model/portal/PortalSlideType;

    return-object v0
.end method
