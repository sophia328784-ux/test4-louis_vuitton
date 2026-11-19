.class public final enum Lcom/vuitton/android/data/dto/repair/RepairStatusDto;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/repair/RepairStatusDto$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/android/data/dto/repair/RepairStatusDto;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u001e\u0008\u0087\u0081\u0002\u0018\u0000 \u00022\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/repair/RepairStatusDto;",
        "",
        "Companion",
        "DROPPED_IN_STORE",
        "DROPPED_IN_STORE_WITH_STORE_NAME",
        "ROUTING_TO_WORKSHOP",
        "EXPERTISE",
        "RESTORATION",
        "RESTORATION_NOT_PERFORMED",
        "READY_FOR_PICK_UP",
        "READY_FOR_PICK_UP_WITH_STORE_NAME",
        "HOME_DELIVERY",
        "HISTORY",
        "REQUEST_SUBMITTED",
        "CANCELLED",
        "PRELIMINARY_ASSESSMENT",
        "PRELIMINARY_ASSESSMENT_ACC",
        "PRELIMINARY_ASSESSMENT_DEC",
        "SHIPPING_TO_ATELIER",
        "RECEIVED_AT_ATELIER",
        "SHIPPED_FROM_EHUB",
        "UNDER_ASSESSMENT",
        "REPAIR_IN_PROGRESS",
        "AWAITING_PAYMENT",
        "PAYMENT_CONFIRMED",
        "PAYMENT_INITIATED",
        "PAYMENT_CONTACT",
        "CONFIRM_ADDRESS",
        "SHIPPING_IN_PREPARATION",
        "SHIPPING",
        "DELIVERED_TO_CLIENT",
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

.field private static final synthetic $VALUES:[Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

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

.field public static final enum AWAITING_PAYMENT:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum CANCELLED:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum CONFIRM_ADDRESS:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final Companion:Lcom/vuitton/android/data/dto/repair/RepairStatusDto$Companion;

.field public static final enum DELIVERED_TO_CLIENT:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum DROPPED_IN_STORE:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum DROPPED_IN_STORE_WITH_STORE_NAME:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum EXPERTISE:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum HISTORY:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum HOME_DELIVERY:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum PAYMENT_CONFIRMED:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum PAYMENT_CONTACT:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum PAYMENT_INITIATED:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum PRELIMINARY_ASSESSMENT:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum PRELIMINARY_ASSESSMENT_ACC:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum PRELIMINARY_ASSESSMENT_DEC:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum READY_FOR_PICK_UP:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum READY_FOR_PICK_UP_WITH_STORE_NAME:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum RECEIVED_AT_ATELIER:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum REPAIR_IN_PROGRESS:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum REQUEST_SUBMITTED:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum RESTORATION:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum RESTORATION_NOT_PERFORMED:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum ROUTING_TO_WORKSHOP:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum SHIPPED_FROM_EHUB:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum SHIPPING:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum SHIPPING_IN_PREPARATION:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum SHIPPING_TO_ATELIER:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum UNDER_ASSESSMENT:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 30

    new-instance v1, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    const-string v0, "DROPPED_IN_STORE"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->DROPPED_IN_STORE:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    new-instance v2, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    const-string v0, "DROPPED_IN_STORE_WITH_STORE_NAME"

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->DROPPED_IN_STORE_WITH_STORE_NAME:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    new-instance v3, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    const-string v0, "ROUTING_TO_WORKSHOP"

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->ROUTING_TO_WORKSHOP:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    new-instance v4, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    const-string v0, "EXPERTISE"

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->EXPERTISE:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    new-instance v5, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    const-string v0, "RESTORATION"

    const/4 v6, 0x4

    invoke-direct {v5, v0, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->RESTORATION:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    new-instance v6, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    const-string v0, "RESTORATION_NOT_PERFORMED"

    const/4 v7, 0x5

    invoke-direct {v6, v0, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->RESTORATION_NOT_PERFORMED:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    new-instance v7, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    const-string v0, "READY_FOR_PICK_UP"

    const/4 v8, 0x6

    invoke-direct {v7, v0, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->READY_FOR_PICK_UP:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    new-instance v8, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    const-string v0, "READY_FOR_PICK_UP_WITH_STORE_NAME"

    const/4 v9, 0x7

    invoke-direct {v8, v0, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->READY_FOR_PICK_UP_WITH_STORE_NAME:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    new-instance v9, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    const-string v0, "HOME_DELIVERY"

    const/16 v10, 0x8

    invoke-direct {v9, v0, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->HOME_DELIVERY:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    new-instance v10, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    const-string v0, "HISTORY"

    const/16 v11, 0x9

    invoke-direct {v10, v0, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->HISTORY:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    new-instance v11, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    const-string v0, "REQUEST_SUBMITTED"

    const/16 v12, 0xa

    invoke-direct {v11, v0, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->REQUEST_SUBMITTED:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    new-instance v12, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    const-string v0, "CANCELLED"

    const/16 v13, 0xb

    invoke-direct {v12, v0, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->CANCELLED:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    new-instance v13, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    const-string v0, "PRELIMINARY_ASSESSMENT"

    const/16 v14, 0xc

    invoke-direct {v13, v0, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->PRELIMINARY_ASSESSMENT:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    new-instance v14, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    const-string v0, "PRELIMINARY_ASSESSMENT_ACC"

    const/16 v15, 0xd

    invoke-direct {v14, v0, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->PRELIMINARY_ASSESSMENT_ACC:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    new-instance v15, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    const-string v0, "PRELIMINARY_ASSESSMENT_DEC"

    move-object/from16 v16, v1

    const/16 v1, 0xe

    invoke-direct {v15, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->PRELIMINARY_ASSESSMENT_DEC:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    new-instance v0, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    const-string v1, "SHIPPING_TO_ATELIER"

    move-object/from16 v17, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->SHIPPING_TO_ATELIER:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    new-instance v1, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    const-string v2, "RECEIVED_AT_ATELIER"

    move-object/from16 v18, v0

    const/16 v0, 0x10

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->RECEIVED_AT_ATELIER:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    new-instance v0, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    const-string v2, "SHIPPED_FROM_EHUB"

    move-object/from16 v19, v1

    const/16 v1, 0x11

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->SHIPPED_FROM_EHUB:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    new-instance v1, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    const-string v2, "UNDER_ASSESSMENT"

    move-object/from16 v20, v0

    const/16 v0, 0x12

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->UNDER_ASSESSMENT:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    new-instance v0, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    const-string v2, "REPAIR_IN_PROGRESS"

    move-object/from16 v21, v1

    const/16 v1, 0x13

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->REPAIR_IN_PROGRESS:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    new-instance v1, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    const-string v2, "AWAITING_PAYMENT"

    move-object/from16 v22, v0

    const/16 v0, 0x14

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->AWAITING_PAYMENT:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    new-instance v0, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    const-string v2, "PAYMENT_CONFIRMED"

    move-object/from16 v23, v1

    const/16 v1, 0x15

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->PAYMENT_CONFIRMED:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    new-instance v1, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    const-string v2, "PAYMENT_INITIATED"

    move-object/from16 v24, v0

    const/16 v0, 0x16

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->PAYMENT_INITIATED:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    new-instance v2, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    const-string v0, "PAYMENT_CONTACT"

    move-object/from16 v25, v1

    const/16 v1, 0x17

    invoke-direct {v2, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->PAYMENT_CONTACT:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    new-instance v0, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    const-string v1, "CONFIRM_ADDRESS"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->CONFIRM_ADDRESS:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    new-instance v1, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    const-string v2, "SHIPPING_IN_PREPARATION"

    move-object/from16 v27, v0

    const/16 v0, 0x19

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->SHIPPING_IN_PREPARATION:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    new-instance v0, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    const-string v2, "SHIPPING"

    move-object/from16 v28, v1

    const/16 v1, 0x1a

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->SHIPPING:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    new-instance v1, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    const-string v2, "DELIVERED_TO_CLIENT"

    move-object/from16 v29, v0

    const/16 v0, 0x1b

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->DELIVERED_TO_CLIENT:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    move-object/from16 v2, v28

    move-object/from16 v28, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v20

    move-object/from16 v20, v22

    move-object/from16 v22, v24

    move-object/from16 v24, v26

    move-object/from16 v26, v2

    move-object/from16 v2, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v25

    move-object/from16 v25, v27

    move-object/from16 v27, v29

    filled-new-array/range {v1 .. v28}, [Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->$VALUES:[Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/vuitton/android/data/dto/repair/RepairStatusDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/repair/RepairStatusDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->Companion:Lcom/vuitton/android/data/dto/repair/RepairStatusDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lwq0;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Lwq0;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/android/data/dto/repair/RepairStatusDto;
    .locals 1

    const-class v0, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/android/data/dto/repair/RepairStatusDto;
    .locals 1

    sget-object v0, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->$VALUES:[Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    return-object v0
.end method
