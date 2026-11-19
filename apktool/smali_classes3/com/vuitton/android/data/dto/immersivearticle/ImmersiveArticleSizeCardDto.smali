.class public final enum Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0087\u0081\u0002\u0018\u0000 \u00022\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;",
        "",
        "Companion",
        "FULLSCREEN",
        "RATIO_16_9",
        "RATIO_9_16",
        "RATIO_2_3",
        "RATIO_4_5",
        "RATIO_1_1",
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

.field private static final synthetic $VALUES:[Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

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

.field public static final Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto$Companion;

.field public static final enum FULLSCREEN:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum RATIO_16_9:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum RATIO_1_1:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum RATIO_2_3:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum RATIO_4_5:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum RATIO_9_16:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    const-string v1, "FULLSCREEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;->FULLSCREEN:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    new-instance v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    const-string v2, "RATIO_16_9"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;->RATIO_16_9:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    new-instance v2, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    const-string v3, "RATIO_9_16"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;->RATIO_9_16:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    new-instance v3, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    const-string v4, "RATIO_2_3"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;->RATIO_2_3:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    new-instance v4, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    const-string v5, "RATIO_4_5"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;->RATIO_4_5:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    new-instance v5, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    const-string v6, "RATIO_1_1"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;->RATIO_1_1:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    filled-new-array/range {v0 .. v5}, [Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;->$VALUES:[Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Ll30;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ll30;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;
    .locals 1

    const-class v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;
    .locals 1

    sget-object v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;->$VALUES:[Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    return-object v0
.end method
