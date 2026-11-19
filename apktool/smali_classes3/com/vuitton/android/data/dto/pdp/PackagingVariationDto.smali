.class public final enum Lcom/vuitton/android/data/dto/pdp/PackagingVariationDto;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/pdp/PackagingVariationDto$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/android/data/dto/pdp/PackagingVariationDto;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0087\u0081\u0002\u0018\u0000 \u00072\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/pdp/PackagingVariationDto;",
        "",
        "",
        "value",
        "Ljava/lang/String;",
        "b",
        "()Ljava/lang/String;",
        "Companion",
        "BABY",
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

.field private static final synthetic $VALUES:[Lcom/vuitton/android/data/dto/pdp/PackagingVariationDto;

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

.field public static final enum BABY:Lcom/vuitton/android/data/dto/pdp/PackagingVariationDto;

.field public static final Companion:Lcom/vuitton/android/data/dto/pdp/PackagingVariationDto$Companion;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/vuitton/android/data/dto/pdp/PackagingVariationDto;

    invoke-direct {v0}, Lcom/vuitton/android/data/dto/pdp/PackagingVariationDto;-><init>()V

    sput-object v0, Lcom/vuitton/android/data/dto/pdp/PackagingVariationDto;->BABY:Lcom/vuitton/android/data/dto/pdp/PackagingVariationDto;

    filled-new-array {v0}, [Lcom/vuitton/android/data/dto/pdp/PackagingVariationDto;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/dto/pdp/PackagingVariationDto;->$VALUES:[Lcom/vuitton/android/data/dto/pdp/PackagingVariationDto;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/dto/pdp/PackagingVariationDto;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/vuitton/android/data/dto/pdp/PackagingVariationDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/pdp/PackagingVariationDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/pdp/PackagingVariationDto;->Companion:Lcom/vuitton/android/data/dto/pdp/PackagingVariationDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lii0;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lii0;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/dto/pdp/PackagingVariationDto;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "BABY"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-string v0, "NEW-BORN"

    iput-object v0, p0, Lcom/vuitton/android/data/dto/pdp/PackagingVariationDto;->value:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/vuitton/android/data/dto/pdp/PackagingVariationDto;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/android/data/dto/pdp/PackagingVariationDto;
    .locals 1

    const-class v0, Lcom/vuitton/android/data/dto/pdp/PackagingVariationDto;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/dto/pdp/PackagingVariationDto;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/android/data/dto/pdp/PackagingVariationDto;
    .locals 1

    sget-object v0, Lcom/vuitton/android/data/dto/pdp/PackagingVariationDto;->$VALUES:[Lcom/vuitton/android/data/dto/pdp/PackagingVariationDto;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/data/dto/pdp/PackagingVariationDto;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/data/dto/pdp/PackagingVariationDto;->value:Ljava/lang/String;

    return-object p0
.end method
