.class public abstract Lcom/vuitton/android/data/dto/careservices/bff/CareServiceBaseMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
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
.method public static final a(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;
    .locals 1

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "trackMyShipment"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;->TrackMyShipment:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    return-object p0

    :sswitch_1
    const-string v0, "contactAnExpert"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;->ContactAnExpert:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    return-object p0

    :sswitch_2
    const-string v0, "confirmAddress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;->ConfirmAddress:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    return-object p0

    :sswitch_3
    const-string v0, "awaitingPayment"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;->AwaitingPayment:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    return-object p0

    :sswitch_4
    const-string v0, "confirmEstimate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;->ConfirmEstimate:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    return-object p0

    :sswitch_5
    const-string v0, "cancellable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;->Cancellable:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    return-object p0

    :cond_6
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x5cfeb274 -> :sswitch_5
        -0x39374ff8 -> :sswitch_4
        -0xf2bca66 -> :sswitch_3
        -0x8adcaec -> :sswitch_2
        0x5188b8f7 -> :sswitch_1
        0x54a26311 -> :sswitch_0
    .end sparse-switch
.end method
