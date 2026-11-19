.class public final enum Lcom/vuitton/android/data/net/BffApi;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/android/data/net/BffApi;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\u0008\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vuitton/android/data/net/BffApi;",
        "",
        "PUBLICATION_API",
        "CATALOG_API",
        "USER_API",
        "data"
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

.field private static final synthetic $VALUES:[Lcom/vuitton/android/data/net/BffApi;

.field public static final enum CATALOG_API:Lcom/vuitton/android/data/net/BffApi;

.field public static final enum PUBLICATION_API:Lcom/vuitton/android/data/net/BffApi;

.field public static final enum USER_API:Lcom/vuitton/android/data/net/BffApi;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vuitton/android/data/net/BffApi;

    const-string v1, "PUBLICATION_API"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vuitton/android/data/net/BffApi;->PUBLICATION_API:Lcom/vuitton/android/data/net/BffApi;

    new-instance v1, Lcom/vuitton/android/data/net/BffApi;

    const-string v2, "CATALOG_API"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vuitton/android/data/net/BffApi;->CATALOG_API:Lcom/vuitton/android/data/net/BffApi;

    new-instance v2, Lcom/vuitton/android/data/net/BffApi;

    const-string v3, "USER_API"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/vuitton/android/data/net/BffApi;->USER_API:Lcom/vuitton/android/data/net/BffApi;

    filled-new-array {v0, v1, v2}, [Lcom/vuitton/android/data/net/BffApi;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/net/BffApi;->$VALUES:[Lcom/vuitton/android/data/net/BffApi;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/net/BffApi;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/android/data/net/BffApi;
    .locals 1

    const-class v0, Lcom/vuitton/android/data/net/BffApi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/net/BffApi;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/android/data/net/BffApi;
    .locals 1

    sget-object v0, Lcom/vuitton/android/data/net/BffApi;->$VALUES:[Lcom/vuitton/android/data/net/BffApi;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/data/net/BffApi;

    return-object v0
.end method
