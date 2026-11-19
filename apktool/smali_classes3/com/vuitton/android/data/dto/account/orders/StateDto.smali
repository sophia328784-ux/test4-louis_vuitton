.class public final enum Lcom/vuitton/android/data/dto/account/orders/StateDto;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/account/orders/StateDto$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/android/data/dto/account/orders/StateDto;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0087\u0081\u0002\u0018\u0000 \u00022\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/account/orders/StateDto;",
        "",
        "Companion",
        "PAST",
        "CURRENT",
        "FUTURE",
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

.field private static final synthetic $VALUES:[Lcom/vuitton/android/data/dto/account/orders/StateDto;

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

.field public static final enum CURRENT:Lcom/vuitton/android/data/dto/account/orders/StateDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final Companion:Lcom/vuitton/android/data/dto/account/orders/StateDto$Companion;

.field public static final enum FUTURE:Lcom/vuitton/android/data/dto/account/orders/StateDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum PAST:Lcom/vuitton/android/data/dto/account/orders/StateDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vuitton/android/data/dto/account/orders/StateDto;

    const-string v1, "PAST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vuitton/android/data/dto/account/orders/StateDto;->PAST:Lcom/vuitton/android/data/dto/account/orders/StateDto;

    new-instance v1, Lcom/vuitton/android/data/dto/account/orders/StateDto;

    const-string v2, "CURRENT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vuitton/android/data/dto/account/orders/StateDto;->CURRENT:Lcom/vuitton/android/data/dto/account/orders/StateDto;

    new-instance v2, Lcom/vuitton/android/data/dto/account/orders/StateDto;

    const-string v3, "FUTURE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/vuitton/android/data/dto/account/orders/StateDto;->FUTURE:Lcom/vuitton/android/data/dto/account/orders/StateDto;

    filled-new-array {v0, v1, v2}, [Lcom/vuitton/android/data/dto/account/orders/StateDto;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/dto/account/orders/StateDto;->$VALUES:[Lcom/vuitton/android/data/dto/account/orders/StateDto;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/dto/account/orders/StateDto;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/vuitton/android/data/dto/account/orders/StateDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/account/orders/StateDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/account/orders/StateDto;->Companion:Lcom/vuitton/android/data/dto/account/orders/StateDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lnw0;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lnw0;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/dto/account/orders/StateDto;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/vuitton/android/data/dto/account/orders/StateDto;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/android/data/dto/account/orders/StateDto;
    .locals 1

    const-class v0, Lcom/vuitton/android/data/dto/account/orders/StateDto;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/dto/account/orders/StateDto;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/android/data/dto/account/orders/StateDto;
    .locals 1

    sget-object v0, Lcom/vuitton/android/data/dto/account/orders/StateDto;->$VALUES:[Lcom/vuitton/android/data/dto/account/orders/StateDto;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/data/dto/account/orders/StateDto;

    return-object v0
.end method
