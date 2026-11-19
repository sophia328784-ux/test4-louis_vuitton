.class public abstract Lcom/vuitton/android/data/dto/careservices/mapper/RepairStatusMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/careservices/mapper/RepairStatusMapperKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "data"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/android/data/dto/repair/RepairStatusDto;)Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/dto/careservices/mapper/RepairStatusMapperKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->DELIVERED_TO_CLIENT:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->SHIPPING:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->SHIPPING_IN_PREPARATION:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->CONFIRM_ADDRESS:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->PAYMENT_CONTACT:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->PAYMENT_INITIATED:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->PAYMENT_CONFIRMED:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->AWAITING_PAYMENT:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->REPAIR_IN_PROGRESS:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->UNDER_ASSESSMENT:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->SHIPPED_FROM_EHUB:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->RECEIVED_AT_ATELIER:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->SHIPPING_TO_ATELIER:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->PRELIMINARY_ASSESSMENT_DEC:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->PRELIMINARY_ASSESSMENT_ACC:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->PRELIMINARY_ASSESSMENT:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->CANCELLED:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->REQUEST_SUBMITTED:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_12
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->HISTORY:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_13
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->HOME_DELIVERY:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_14
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->READY_FOR_PICK_UP_WITH_STORE_NAME:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_15
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->READY_FOR_PICK_UP:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_16
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->RESTORATION_NOT_PERFORMED:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_17
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->RESTORATION:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_18
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->EXPERTISE:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_19
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->ROUTING_TO_WORKSHOP:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_1a
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->DROPPED_IN_STORE_WITH_STORE_NAME:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_1b
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->DROPPED_IN_STORE:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
