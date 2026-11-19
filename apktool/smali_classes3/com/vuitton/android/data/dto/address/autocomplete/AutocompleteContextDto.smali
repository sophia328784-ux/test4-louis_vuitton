.class public final enum Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0087\u0081\u0002\u0018\u0000 \u00052\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;",
        "",
        "",
        "value",
        "Ljava/lang/String;",
        "Companion",
        "REGISTER",
        "ADDRESS_BOOK",
        "ONLINE_STORE_APPOINTMENT",
        "TRAVEL",
        "FIND_IN_STORE",
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

.field private static final synthetic $VALUES:[Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;

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

.field public static final enum ADDRESS_BOOK:Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final Companion:Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto$Companion;

.field public static final enum FIND_IN_STORE:Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum ONLINE_STORE_APPOINTMENT:Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum REGISTER:Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum TRAVEL:Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;

    const/4 v1, 0x0

    const-string v2, "register"

    const-string v3, "REGISTER"

    invoke-direct {v0, v3, v1, v2}, Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;->REGISTER:Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;

    new-instance v1, Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;

    const/4 v2, 0x1

    const-string v3, "addressBook"

    const-string v4, "ADDRESS_BOOK"

    invoke-direct {v1, v4, v2, v3}, Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;->ADDRESS_BOOK:Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;

    new-instance v2, Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;

    const/4 v3, 0x2

    const-string v4, "onlineStoreAppointment"

    const-string v5, "ONLINE_STORE_APPOINTMENT"

    invoke-direct {v2, v5, v3, v4}, Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;->ONLINE_STORE_APPOINTMENT:Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;

    new-instance v3, Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;

    const/4 v4, 0x3

    const-string v5, "travel"

    const-string v6, "TRAVEL"

    invoke-direct {v3, v6, v4, v5}, Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;->TRAVEL:Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;

    new-instance v4, Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;

    const/4 v5, 0x4

    const-string v6, "findInStore"

    const-string v7, "FIND_IN_STORE"

    invoke-direct {v4, v7, v5, v6}, Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;->FIND_IN_STORE:Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;->$VALUES:[Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;->Companion:Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lw9;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lw9;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;->value:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;
    .locals 1

    const-class v0, Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;
    .locals 1

    sget-object v0, Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;->$VALUES:[Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;->value:Ljava/lang/String;

    return-object p0
.end method
