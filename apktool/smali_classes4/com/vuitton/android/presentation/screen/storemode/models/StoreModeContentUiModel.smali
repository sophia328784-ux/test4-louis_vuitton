.class public final enum Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel$Companion;,
        Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u0000 \u00072\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;",
        "",
        "",
        "label",
        "I",
        "c",
        "()I",
        "Companion",
        "STORE",
        "ONLINE",
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

.field private static final synthetic $VALUES:[Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

.field public static final Companion:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel$Companion;

.field public static final enum ONLINE:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

.field public static final enum STORE:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

.field private static final initialValue:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;


# instance fields
.field private final label:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    const/4 v1, 0x0

    const v2, 0x7f1412f1

    const-string v3, "STORE"

    invoke-direct {v0, v3, v1, v2}, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;->STORE:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    new-instance v1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    const/4 v2, 0x1

    const v3, 0x7f1412f2

    const-string v4, "ONLINE"

    invoke-direct {v1, v4, v2, v3}, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;->ONLINE:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    filled-new-array {v0, v1}, [Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    move-result-object v1

    sput-object v1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;->$VALUES:[Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;->Companion:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel$Companion;

    sput-object v0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;->initialValue:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;->label:I

    return-void
.end method

.method public static final synthetic a()Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;->initialValue:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    return-object v0
.end method

.method public static b()Lkotlin/enums/EnumEntries;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;
    .locals 1

    const-class v0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;->$VALUES:[Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    return-object v0
.end method


# virtual methods
.method public final c()I
    .locals 0

    iget p0, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;->label:I

    return p0
.end method
