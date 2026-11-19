.class public abstract synthetic Lcom/vuitton/android/presentation/common/editorial/mapper/EditorialModuleUiModelMapperKt$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/common/editorial/mapper/EditorialModuleUiModelMapperKt;
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


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/vuitton/foundation/model/domain/model/common/editorial/AssetLayout;->values()[Lcom/vuitton/foundation/model/domain/model/common/editorial/AssetLayout;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/AssetLayout;->FULL_WIDTH:Lcom/vuitton/foundation/model/domain/model/common/editorial/AssetLayout;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v2, 0x2

    :try_start_1
    sget-object v3, Lcom/vuitton/foundation/model/domain/model/common/editorial/AssetLayout;->MARIELOUISE_CENTERED:Lcom/vuitton/foundation/model/domain/model/common/editorial/AssetLayout;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v3, 0x3

    :try_start_2
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/common/editorial/AssetLayout;->MARIELOUISE_LEFT:Lcom/vuitton/foundation/model/domain/model/common/editorial/AssetLayout;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    sput-object v0, Lcom/vuitton/android/presentation/common/editorial/mapper/EditorialModuleUiModelMapperKt$WhenMappings;->a:[I

    invoke-static {}, Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;->values()[Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_3
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;->RATIO_2X3:Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;->RATIO_4X5:Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v0, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;->RATIO_16X9:Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v3, Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;->RATIO_9X16:Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v0, v3
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v3, Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;->RATIO_1X1:Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x5

    aput v4, v0, v3
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v3, Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;->FULLSCREEN:Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x6

    aput v4, v0, v3
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    sput-object v0, Lcom/vuitton/android/presentation/common/editorial/mapper/EditorialModuleUiModelMapperKt$WhenMappings;->b:[I

    invoke-static {}, Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;->values()[Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_9
    sget-object v3, Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;->LANDSCAPE:Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;->PORTRAIT:Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    sput-object v0, Lcom/vuitton/android/presentation/common/editorial/mapper/EditorialModuleUiModelMapperKt$WhenMappings;->c:[I

    return-void
.end method
