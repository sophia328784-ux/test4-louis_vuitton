.class public final enum Lcom/kizitonwose/calendar/compose/ContentHeightMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kizitonwose/calendar/compose/ContentHeightMode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0003\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\u0008\u0002j\u0002\u0008\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/kizitonwose/calendar/compose/ContentHeightMode;",
        "",
        "Wrap",
        "Fill",
        "compose_release"
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

.field private static final synthetic $VALUES:[Lcom/kizitonwose/calendar/compose/ContentHeightMode;

.field public static final enum Fill:Lcom/kizitonwose/calendar/compose/ContentHeightMode;

.field public static final enum Wrap:Lcom/kizitonwose/calendar/compose/ContentHeightMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/kizitonwose/calendar/compose/ContentHeightMode;

    const-string v1, "Wrap"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kizitonwose/calendar/compose/ContentHeightMode;->Wrap:Lcom/kizitonwose/calendar/compose/ContentHeightMode;

    new-instance v1, Lcom/kizitonwose/calendar/compose/ContentHeightMode;

    const-string v2, "Fill"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kizitonwose/calendar/compose/ContentHeightMode;->Fill:Lcom/kizitonwose/calendar/compose/ContentHeightMode;

    filled-new-array {v0, v1}, [Lcom/kizitonwose/calendar/compose/ContentHeightMode;

    move-result-object v0

    sput-object v0, Lcom/kizitonwose/calendar/compose/ContentHeightMode;->$VALUES:[Lcom/kizitonwose/calendar/compose/ContentHeightMode;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/kizitonwose/calendar/compose/ContentHeightMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kizitonwose/calendar/compose/ContentHeightMode;
    .locals 1

    const-class v0, Lcom/kizitonwose/calendar/compose/ContentHeightMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kizitonwose/calendar/compose/ContentHeightMode;

    return-object p0
.end method

.method public static values()[Lcom/kizitonwose/calendar/compose/ContentHeightMode;
    .locals 1

    sget-object v0, Lcom/kizitonwose/calendar/compose/ContentHeightMode;->$VALUES:[Lcom/kizitonwose/calendar/compose/ContentHeightMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kizitonwose/calendar/compose/ContentHeightMode;

    return-object v0
.end method
