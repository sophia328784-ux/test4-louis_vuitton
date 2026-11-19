.class public final enum Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\u0008\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;",
        "",
        "WATCH",
        "WATCH_V3",
        "EARPHONE",
        "KEEPALL",
        "SNEAKERS",
        "TRUNK_SPEAKER",
        "HORIZON_SPEAKER",
        "presentation"
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

.field private static final synthetic $VALUES:[Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

.field public static final enum EARPHONE:Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

.field public static final enum HORIZON_SPEAKER:Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

.field public static final enum KEEPALL:Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

.field public static final enum SNEAKERS:Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

.field public static final enum TRUNK_SPEAKER:Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

.field public static final enum WATCH:Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

.field public static final enum WATCH_V3:Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

    const-string v1, "WATCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;->WATCH:Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

    const-string v2, "WATCH_V3"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;->WATCH_V3:Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

    const-string v3, "EARPHONE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;->EARPHONE:Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

    const-string v4, "KEEPALL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;->KEEPALL:Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

    new-instance v4, Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

    const-string v5, "SNEAKERS"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;->SNEAKERS:Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

    new-instance v5, Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

    const-string v6, "TRUNK_SPEAKER"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;->TRUNK_SPEAKER:Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

    new-instance v6, Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

    const-string v7, "HORIZON_SPEAKER"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;->HORIZON_SPEAKER:Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

    filled-new-array/range {v0 .. v6}, [Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;->$VALUES:[Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;
    .locals 1

    const-class v0, Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;->$VALUES:[Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

    return-object v0
.end method
