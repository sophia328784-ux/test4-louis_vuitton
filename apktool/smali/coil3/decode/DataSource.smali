.class public final enum Lcoil3/decode/DataSource;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcoil3/decode/DataSource;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\u0008\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcoil3/decode/DataSource;",
        "",
        "MEMORY_CACHE",
        "MEMORY",
        "DISK",
        "NETWORK",
        "io.coil-kt.coil3:coil-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcoil3/decode/DataSource;

.field public static final enum DISK:Lcoil3/decode/DataSource;

.field public static final enum MEMORY:Lcoil3/decode/DataSource;

.field public static final enum MEMORY_CACHE:Lcoil3/decode/DataSource;

.field public static final enum NETWORK:Lcoil3/decode/DataSource;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcoil3/decode/DataSource;

    const-string v1, "MEMORY_CACHE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcoil3/decode/DataSource;->MEMORY_CACHE:Lcoil3/decode/DataSource;

    new-instance v1, Lcoil3/decode/DataSource;

    const-string v2, "MEMORY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcoil3/decode/DataSource;->MEMORY:Lcoil3/decode/DataSource;

    new-instance v2, Lcoil3/decode/DataSource;

    const-string v3, "DISK"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcoil3/decode/DataSource;->DISK:Lcoil3/decode/DataSource;

    new-instance v3, Lcoil3/decode/DataSource;

    const-string v4, "NETWORK"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcoil3/decode/DataSource;->NETWORK:Lcoil3/decode/DataSource;

    filled-new-array {v0, v1, v2, v3}, [Lcoil3/decode/DataSource;

    move-result-object v0

    sput-object v0, Lcoil3/decode/DataSource;->$VALUES:[Lcoil3/decode/DataSource;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcoil3/decode/DataSource;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcoil3/decode/DataSource;
    .locals 1

    const-class v0, Lcoil3/decode/DataSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcoil3/decode/DataSource;

    return-object p0
.end method

.method public static values()[Lcoil3/decode/DataSource;
    .locals 1

    sget-object v0, Lcoil3/decode/DataSource;->$VALUES:[Lcoil3/decode/DataSource;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcoil3/decode/DataSource;

    return-object v0
.end method
