.class public final enum Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue$Companion;,
        Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0087\u0081\u0002\u0018\u0000 \u00022\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;",
        "",
        "Companion",
        "GIVEN",
        "REFUSED",
        "UNSET",
        "MANDATORY",
        "domain"
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

.field private static final synthetic $VALUES:[Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

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

.field public static final Companion:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue$Companion;

.field public static final enum GIVEN:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

.field public static final enum MANDATORY:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

.field public static final enum REFUSED:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

.field public static final enum UNSET:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    const-string v1, "GIVEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->GIVEN:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    const-string v2, "REFUSED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->REFUSED:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    const-string v3, "UNSET"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->UNSET:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    const-string v4, "MANDATORY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->MANDATORY:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    filled-new-array {v0, v1, v2, v3}, [Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->$VALUES:[Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->Companion:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Llp;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Llp;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;
    .locals 1

    const-class v0, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;
    .locals 1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->$VALUES:[Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 2

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method
