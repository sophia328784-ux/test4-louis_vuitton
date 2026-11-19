.class public final enum Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\u0008\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;",
        "",
        "FULL_WIDTH",
        "MARIELOUISE_CENTERED",
        "MARIELOUISE_LEFT",
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

.field private static final synthetic $VALUES:[Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;

.field public static final enum FULL_WIDTH:Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;

.field public static final enum MARIELOUISE_CENTERED:Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;

.field public static final enum MARIELOUISE_LEFT:Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;

    const-string v1, "FULL_WIDTH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;->FULL_WIDTH:Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;

    new-instance v1, Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;

    const-string v2, "MARIELOUISE_CENTERED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;->MARIELOUISE_CENTERED:Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;

    new-instance v2, Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;

    const-string v3, "MARIELOUISE_LEFT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;->MARIELOUISE_LEFT:Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;

    filled-new-array {v0, v1, v2}, [Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;->$VALUES:[Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;
    .locals 1

    const-class v0, Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;->$VALUES:[Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;

    return-object v0
.end method
