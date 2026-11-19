.class public abstract synthetic Lcom/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$Button$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$CardType;->values()[Lcom/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$CardType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$CardType;->PACKAGING:Lcom/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$CardType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$CardType;->GIFT_MESSAGE:Lcom/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$CardType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$CardType;->SHOPPING_BAG:Lcom/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$CardType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$CardType;->SAMPLE:Lcom/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$CardType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    sput-object v0, Lcom/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$Button$WhenMappings;->a:[I

    return-void
.end method
