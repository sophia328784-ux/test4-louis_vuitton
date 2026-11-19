.class public final enum Lcom/vuitton/android/data/dto/repair/RepairTypeDto;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/repair/RepairTypeDto$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/android/data/dto/repair/RepairTypeDto;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0087\u0081\u0002\u0018\u0000 \u00072\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/repair/RepairTypeDto;",
        "",
        "",
        "value",
        "Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/String;",
        "Companion",
        "DISTANT_CARE_SERVICE",
        "STORE_CARE_SERVICE",
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

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/vuitton/android/data/dto/repair/RepairTypeDto;

.field private static final $cachedSerializer$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/vuitton/android/data/dto/repair/RepairTypeDto$Companion;

.field public static final enum DISTANT_CARE_SERVICE:Lcom/vuitton/android/data/dto/repair/RepairTypeDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum STORE_CARE_SERVICE:Lcom/vuitton/android/data/dto/repair/RepairTypeDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vuitton/android/data/dto/repair/RepairTypeDto;

    const/4 v1, 0x0

    const-string v2, "Distant Care Service"

    const-string v3, "DISTANT_CARE_SERVICE"

    invoke-direct {v0, v3, v1, v2}, Lcom/vuitton/android/data/dto/repair/RepairTypeDto;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vuitton/android/data/dto/repair/RepairTypeDto;->DISTANT_CARE_SERVICE:Lcom/vuitton/android/data/dto/repair/RepairTypeDto;

    new-instance v1, Lcom/vuitton/android/data/dto/repair/RepairTypeDto;

    const/4 v2, 0x1

    const-string v3, "Store Care Service"

    const-string v4, "STORE_CARE_SERVICE"

    invoke-direct {v1, v4, v2, v3}, Lcom/vuitton/android/data/dto/repair/RepairTypeDto;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/vuitton/android/data/dto/repair/RepairTypeDto;->STORE_CARE_SERVICE:Lcom/vuitton/android/data/dto/repair/RepairTypeDto;

    filled-new-array {v0, v1}, [Lcom/vuitton/android/data/dto/repair/RepairTypeDto;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/dto/repair/RepairTypeDto;->$VALUES:[Lcom/vuitton/android/data/dto/repair/RepairTypeDto;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/dto/repair/RepairTypeDto;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/vuitton/android/data/dto/repair/RepairTypeDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/repair/RepairTypeDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/repair/RepairTypeDto;->Companion:Lcom/vuitton/android/data/dto/repair/RepairTypeDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lwq0;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Lwq0;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/dto/repair/RepairTypeDto;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/vuitton/android/data/dto/repair/RepairTypeDto;->value:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/vuitton/android/data/dto/repair/RepairTypeDto;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/android/data/dto/repair/RepairTypeDto;
    .locals 1

    const-class v0, Lcom/vuitton/android/data/dto/repair/RepairTypeDto;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/dto/repair/RepairTypeDto;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/android/data/dto/repair/RepairTypeDto;
    .locals 1

    sget-object v0, Lcom/vuitton/android/data/dto/repair/RepairTypeDto;->$VALUES:[Lcom/vuitton/android/data/dto/repair/RepairTypeDto;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/data/dto/repair/RepairTypeDto;

    return-object v0
.end method
