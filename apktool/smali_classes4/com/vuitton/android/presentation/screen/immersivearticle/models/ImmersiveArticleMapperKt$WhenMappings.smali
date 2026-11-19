.class public abstract synthetic Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation

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

.field public static final synthetic b:[I

.field public static final synthetic c:[I

.field public static final synthetic d:[I

.field public static final synthetic e:[I

.field public static final synthetic f:[I

.field public static final synthetic g:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/LookSkuType;->values()[Lcom/vuitton/foundation/model/domain/model/immersivearticle/LookSkuType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/immersivearticle/LookSkuType;->PRODUCT:Lcom/vuitton/foundation/model/domain/model/immersivearticle/LookSkuType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v2, 0x2

    :try_start_1
    sget-object v3, Lcom/vuitton/foundation/model/domain/model/immersivearticle/LookSkuType;->LOOK:Lcom/vuitton/foundation/model/domain/model/immersivearticle/LookSkuType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    sput-object v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt$WhenMappings;->a:[I

    invoke-static {}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTextModuleType;->values()[Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTextModuleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_2
    sget-object v3, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTextModuleType;->CITATION:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTextModuleType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v3, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTextModuleType;->PARAGRAPH:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTextModuleType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    sput-object v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt$WhenMappings;->b:[I

    invoke-static {}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTextModuleAlignment;->values()[Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTextModuleAlignment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_4
    sget-object v3, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTextModuleAlignment;->CENTER:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTextModuleAlignment;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTextModuleAlignment;->RIGHT:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTextModuleAlignment;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v3, 0x3

    :try_start_6
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTextModuleAlignment;->LEFT:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTextModuleAlignment;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    sput-object v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt$WhenMappings;->c:[I

    invoke-static {}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductImageStyle;->values()[Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductImageStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductImageStyle;->REGULAR:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductImageStyle;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductImageStyle;->MARIE_LOUISE:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductImageStyle;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v0, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    sput-object v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt$WhenMappings;->d:[I

    invoke-static {}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductDisplayStyle;->values()[Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductDisplayStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_9
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductDisplayStyle;->FULL_DETAILS:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductDisplayStyle;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductDisplayStyle;->IMAGE_ONLY:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductDisplayStyle;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v0, v4
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    sput-object v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt$WhenMappings;->e:[I

    invoke-static {}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;->values()[Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_b
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;->DEFAULT:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;->HANLEY_PRO:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v0, v4
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;->ANGLAISE_F:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    const/4 v4, 0x4

    :try_start_e
    sget-object v5, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;->COND:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    sput-object v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt$WhenMappings;->f:[I

    invoke-static {}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;->values()[Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_f
    sget-object v5, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;->FULLSCREEN:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;->RATIO_16_9:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;->RATIO_9_16:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;->RATIO_2_3:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;->RATIO_4_5:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;->RATIO_1_1:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    sput-object v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleMapperKt$WhenMappings;->g:[I

    return-void
.end method
