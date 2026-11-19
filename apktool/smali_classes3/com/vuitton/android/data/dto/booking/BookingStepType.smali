.class final enum Lcom/vuitton/android/data/dto/booking/BookingStepType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/booking/BookingStepType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/android/data/dto/booking/BookingStepType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0082\u0081\u0002\u0018\u0000 \u00072\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/booking/BookingStepType;",
        "",
        "",
        "typeName",
        "Ljava/lang/String;",
        "b",
        "()Ljava/lang/String;",
        "Companion",
        "SINGLE_TEXT",
        "DATE",
        "SLOT",
        "MULTIPLE_TEXT",
        "UNKNOWN",
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

.field private static final synthetic $VALUES:[Lcom/vuitton/android/data/dto/booking/BookingStepType;

.field public static final Companion:Lcom/vuitton/android/data/dto/booking/BookingStepType$Companion;

.field public static final enum DATE:Lcom/vuitton/android/data/dto/booking/BookingStepType;

.field public static final enum MULTIPLE_TEXT:Lcom/vuitton/android/data/dto/booking/BookingStepType;

.field public static final enum SINGLE_TEXT:Lcom/vuitton/android/data/dto/booking/BookingStepType;

.field public static final enum SLOT:Lcom/vuitton/android/data/dto/booking/BookingStepType;

.field public static final enum UNKNOWN:Lcom/vuitton/android/data/dto/booking/BookingStepType;


# instance fields
.field private final typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/vuitton/android/data/dto/booking/BookingStepType;

    const/4 v1, 0x0

    const-string v2, "singleText"

    const-string v3, "SINGLE_TEXT"

    invoke-direct {v0, v3, v1, v2}, Lcom/vuitton/android/data/dto/booking/BookingStepType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vuitton/android/data/dto/booking/BookingStepType;->SINGLE_TEXT:Lcom/vuitton/android/data/dto/booking/BookingStepType;

    new-instance v1, Lcom/vuitton/android/data/dto/booking/BookingStepType;

    const/4 v2, 0x1

    const-string v3, "date"

    const-string v4, "DATE"

    invoke-direct {v1, v4, v2, v3}, Lcom/vuitton/android/data/dto/booking/BookingStepType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/vuitton/android/data/dto/booking/BookingStepType;->DATE:Lcom/vuitton/android/data/dto/booking/BookingStepType;

    new-instance v2, Lcom/vuitton/android/data/dto/booking/BookingStepType;

    const/4 v3, 0x2

    const-string v4, "slot"

    const-string v5, "SLOT"

    invoke-direct {v2, v5, v3, v4}, Lcom/vuitton/android/data/dto/booking/BookingStepType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/vuitton/android/data/dto/booking/BookingStepType;->SLOT:Lcom/vuitton/android/data/dto/booking/BookingStepType;

    new-instance v3, Lcom/vuitton/android/data/dto/booking/BookingStepType;

    const/4 v4, 0x3

    const-string v5, "multipleText"

    const-string v6, "MULTIPLE_TEXT"

    invoke-direct {v3, v6, v4, v5}, Lcom/vuitton/android/data/dto/booking/BookingStepType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/vuitton/android/data/dto/booking/BookingStepType;->MULTIPLE_TEXT:Lcom/vuitton/android/data/dto/booking/BookingStepType;

    new-instance v4, Lcom/vuitton/android/data/dto/booking/BookingStepType;

    const/4 v5, 0x4

    const-string v6, "unknown"

    const-string v7, "UNKNOWN"

    invoke-direct {v4, v7, v5, v6}, Lcom/vuitton/android/data/dto/booking/BookingStepType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/vuitton/android/data/dto/booking/BookingStepType;->UNKNOWN:Lcom/vuitton/android/data/dto/booking/BookingStepType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/vuitton/android/data/dto/booking/BookingStepType;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/dto/booking/BookingStepType;->$VALUES:[Lcom/vuitton/android/data/dto/booking/BookingStepType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/dto/booking/BookingStepType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/vuitton/android/data/dto/booking/BookingStepType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/booking/BookingStepType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/booking/BookingStepType;->Companion:Lcom/vuitton/android/data/dto/booking/BookingStepType$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/vuitton/android/data/dto/booking/BookingStepType;->typeName:Ljava/lang/String;

    return-void
.end method

.method public static a()Lkotlin/enums/EnumEntries;
    .locals 1

    sget-object v0, Lcom/vuitton/android/data/dto/booking/BookingStepType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/android/data/dto/booking/BookingStepType;
    .locals 1

    const-class v0, Lcom/vuitton/android/data/dto/booking/BookingStepType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/dto/booking/BookingStepType;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/android/data/dto/booking/BookingStepType;
    .locals 1

    sget-object v0, Lcom/vuitton/android/data/dto/booking/BookingStepType;->$VALUES:[Lcom/vuitton/android/data/dto/booking/BookingStepType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/data/dto/booking/BookingStepType;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/data/dto/booking/BookingStepType;->typeName:Ljava/lang/String;

    return-object p0
.end method
