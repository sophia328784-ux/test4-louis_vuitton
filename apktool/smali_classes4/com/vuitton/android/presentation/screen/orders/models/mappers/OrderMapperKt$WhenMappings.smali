.class public abstract synthetic Lcom/vuitton/android/presentation/screen/orders/models/mappers/OrderMapperKt$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/orders/models/mappers/OrderMapperKt;
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


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/vuitton/foundation/model/domain/model/account/orders/Channel;->values()[Lcom/vuitton/foundation/model/domain/model/account/orders/Channel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/account/orders/Channel;->RETAIL:Lcom/vuitton/foundation/model/domain/model/account/orders/Channel;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v2, 0x2

    :try_start_1
    sget-object v3, Lcom/vuitton/foundation/model/domain/model/account/orders/Channel;->WEB:Lcom/vuitton/foundation/model/domain/model/account/orders/Channel;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v3, 0x3

    :try_start_2
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/account/orders/Channel;->CONTACT_CENTER:Lcom/vuitton/foundation/model/domain/model/account/orders/Channel;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    sput-object v0, Lcom/vuitton/android/presentation/screen/orders/models/mappers/OrderMapperKt$WhenMappings;->a:[I

    invoke-static {}, Lcom/vuitton/foundation/model/domain/model/account/orders/OrderOrigin;->values()[Lcom/vuitton/foundation/model/domain/model/account/orders/OrderOrigin;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_3
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/account/orders/OrderOrigin;->CLASSIC:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderOrigin;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/account/orders/OrderOrigin;->X_STORE:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderOrigin;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v0, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    invoke-static {}, Lcom/vuitton/foundation/model/domain/model/account/orders/ShippingType;->values()[Lcom/vuitton/foundation/model/domain/model/account/orders/ShippingType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_5
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/account/orders/ShippingType;->STANDARD:Lcom/vuitton/foundation/model/domain/model/account/orders/ShippingType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/account/orders/ShippingType;->CLICK_COLLECT:Lcom/vuitton/foundation/model/domain/model/account/orders/ShippingType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v0, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    sput-object v0, Lcom/vuitton/android/presentation/screen/orders/models/mappers/OrderMapperKt$WhenMappings;->b:[I

    invoke-static {}, Lcom/vuitton/foundation/model/domain/model/account/orders/Validation;->values()[Lcom/vuitton/foundation/model/domain/model/account/orders/Validation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/account/orders/Validation;->VALIDATED:Lcom/vuitton/foundation/model/domain/model/account/orders/Validation;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/account/orders/Validation;->PENDING:Lcom/vuitton/foundation/model/domain/model/account/orders/Validation;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v0, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/account/orders/Validation;->CANCELLED:Lcom/vuitton/foundation/model/domain/model/account/orders/Validation;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    sput-object v0, Lcom/vuitton/android/presentation/screen/orders/models/mappers/OrderMapperKt$WhenMappings;->c:[I

    invoke-static {}, Lcom/vuitton/foundation/model/domain/model/account/orders/State;->values()[Lcom/vuitton/foundation/model/domain/model/account/orders/State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_a
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/account/orders/State;->PAST:Lcom/vuitton/foundation/model/domain/model/account/orders/State;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/account/orders/State;->CURRENT:Lcom/vuitton/foundation/model/domain/model/account/orders/State;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v0, v4
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/account/orders/State;->FUTURE:Lcom/vuitton/foundation/model/domain/model/account/orders/State;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    sput-object v0, Lcom/vuitton/android/presentation/screen/orders/models/mappers/OrderMapperKt$WhenMappings;->d:[I

    invoke-static {}, Lcom/vuitton/foundation/model/domain/model/account/orders/ReturnValidation;->values()[Lcom/vuitton/foundation/model/domain/model/account/orders/ReturnValidation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_d
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/account/orders/ReturnValidation;->PENDING:Lcom/vuitton/foundation/model/domain/model/account/orders/ReturnValidation;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/account/orders/ReturnValidation;->FINALIZED:Lcom/vuitton/foundation/model/domain/model/account/orders/ReturnValidation;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v0, v4
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/account/orders/ReturnValidation;->CANCELLED:Lcom/vuitton/foundation/model/domain/model/account/orders/ReturnValidation;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    invoke-static {}, Lcom/vuitton/foundation/model/domain/model/account/orders/CategoryType;->values()[Lcom/vuitton/foundation/model/domain/model/account/orders/CategoryType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_10
    sget-object v3, Lcom/vuitton/foundation/model/domain/model/account/orders/CategoryType;->TEXT:Lcom/vuitton/foundation/model/domain/model/account/orders/CategoryType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/account/orders/CategoryType;->IMAGE:Lcom/vuitton/foundation/model/domain/model/account/orders/CategoryType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    sput-object v0, Lcom/vuitton/android/presentation/screen/orders/models/mappers/OrderMapperKt$WhenMappings;->e:[I

    return-void
.end method
