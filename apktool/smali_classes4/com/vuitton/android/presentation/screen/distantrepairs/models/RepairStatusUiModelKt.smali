.class public abstract Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModelKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModelKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
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
.method public static final a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;)Z
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->AWAITING_PAYMENT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->CONFIRM_ADDRESS:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PAYMENT_CONFIRMED:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v3, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PAYMENT_CONTACT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v4, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PAYMENT_INITIATED:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->RECEIVED_AT_ATELIER:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v6, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->REPAIR_IN_PROGRESS:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v7, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->SHIPPING:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v8, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->SHIPPING_IN_PREPARATION:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v9, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->SHIPPING_TO_ATELIER:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    filled-new-array/range {v0 .. v9}, [Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/collections/ArraysKt;->f(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;)Z
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PRELIMINARY_ASSESSMENT_ACC:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PRELIMINARY_ASSESSMENT_DEC:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->RECEIVED_AT_ATELIER:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v3, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->REQUEST_SUBMITTED:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v4, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->SHIPPING_TO_ATELIER:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->UNDER_ASSESSMENT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    filled-new-array/range {v0 .. v5}, [Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/collections/ArraysKt;->f(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final c(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;)Z
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->AWAITING_PAYMENT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->CANCELLED:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->CONFIRM_ADDRESS:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v3, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->DELIVERED_TO_CLIENT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v4, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PAYMENT_CONFIRMED:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PAYMENT_CONTACT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v6, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PAYMENT_INITIATED:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v7, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PRELIMINARY_ASSESSMENT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v8, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->REPAIR_IN_PROGRESS:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v9, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->SHIPPING:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v10, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->SHIPPING_IN_PREPARATION:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    filled-new-array/range {v0 .. v10}, [Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/collections/ArraysKt;->f(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final d(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;)Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModelKt$WhenMappings;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->UNDER_ASSESSMENT:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->SHIPPING_TO_ATELIER:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->SHIPPING_IN_PREPARATION:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->SHIPPING:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->SHIPPED_FROM_EHUB:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->ROUTING_TO_WORKSHOP:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->RESTORATION_NOT_PERFORMED:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->RESTORATION:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->REQUEST_SUBMITTED:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->REPAIR_IN_PROGRESS:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->RECEIVED_AT_ATELIER:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->READY_FOR_PICK_UP_WITH_STORE_NAME:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->READY_FOR_PICK_UP:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

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
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->PAYMENT_INITIATED:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->PAYMENT_CONTACT:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_12
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->PAYMENT_CONFIRMED:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_13
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->HOME_DELIVERY:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_14
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->HISTORY:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_15
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->EXPERTISE:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_16
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->DROPPED_IN_STORE_WITH_STORE_NAME:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_17
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->DROPPED_IN_STORE:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_18
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->DELIVERED_TO_CLIENT:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_19
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->CONFIRM_ADDRESS:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_1a
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->CANCELLED:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    return-object p0

    :pswitch_1b
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->AWAITING_PAYMENT:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

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

.method public static final e(Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;Z)Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModelKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->UNDER_ASSESSMENT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->SHIPPING_TO_ATELIER:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->SHIPPING_IN_PREPARATION:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->SHIPPING:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    return-object p0

    :pswitch_4
    if-eqz p1, :cond_0

    sget-object p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->SHIPPED_FROM_EHUB:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    return-object p0

    :cond_0
    sget-object p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->RECEIVED_AT_ATELIER:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->ROUTING_TO_WORKSHOP:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->RESTORATION_NOT_PERFORMED:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->RESTORATION:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->REQUEST_SUBMITTED:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->REPAIR_IN_PROGRESS:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->RECEIVED_AT_ATELIER:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->READY_FOR_PICK_UP_WITH_STORE_NAME:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->READY_FOR_PICK_UP:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PRELIMINARY_ASSESSMENT_DEC:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PRELIMINARY_ASSESSMENT_ACC:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PRELIMINARY_ASSESSMENT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PAYMENT_INITIATED:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PAYMENT_CONTACT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    return-object p0

    :pswitch_12
    sget-object p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PAYMENT_CONFIRMED:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    return-object p0

    :pswitch_13
    sget-object p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->HOME_DELIVERY:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    return-object p0

    :pswitch_14
    sget-object p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->HISTORY:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    return-object p0

    :pswitch_15
    sget-object p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->EXPERTISE:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    return-object p0

    :pswitch_16
    sget-object p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->DROPPED_IN_STORE_WITH_STORE_NAME:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    return-object p0

    :pswitch_17
    sget-object p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->DROPPED_IN_STORE:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    return-object p0

    :pswitch_18
    sget-object p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->DELIVERED_TO_CLIENT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    return-object p0

    :pswitch_19
    sget-object p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->CONFIRM_ADDRESS:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    return-object p0

    :pswitch_1a
    sget-object p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->CANCELLED:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    return-object p0

    :pswitch_1b
    sget-object p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->AWAITING_PAYMENT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    return-object p0

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
