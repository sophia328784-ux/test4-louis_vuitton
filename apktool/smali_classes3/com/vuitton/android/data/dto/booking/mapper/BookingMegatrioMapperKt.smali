.class public abstract Lcom/vuitton/android/data/dto/booking/mapper/BookingMegatrioMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/booking/mapper/BookingMegatrioMapperKt$WhenMappings;
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
.method public static final a(Lcom/vuitton/android/data/dto/booking/BookingMegatrioDto;)Lcom/vuitton/foundation/model/domain/model/booking/BookingMegatrio;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingMegatrio;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/booking/BookingMegatrioDto;->a:Lcom/vuitton/android/data/dto/booking/BookingExternalContentDto;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/booking/BookingExternalContent;

    iget-object v2, p0, Lcom/vuitton/android/data/dto/booking/BookingExternalContentDto;->a:Lcom/vuitton/android/data/dto/booking/BookingExternalContentTypeDto;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/vuitton/android/data/dto/booking/mapper/BookingMegatrioMapperKt$WhenMappings;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/booking/BookingExternalContentType;->WEBVIEW:Lcom/vuitton/foundation/model/domain/model/booking/BookingExternalContentType;

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/booking/BookingExternalContentType;->PDF:Lcom/vuitton/foundation/model/domain/model/booking/BookingExternalContentType;

    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/data/dto/booking/BookingExternalContentDto;->b:Ljava/lang/String;

    invoke-direct {v1, v2, p0}, Lcom/vuitton/foundation/model/domain/model/booking/BookingExternalContent;-><init>(Lcom/vuitton/foundation/model/domain/model/booking/BookingExternalContentType;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/booking/BookingMegatrio;-><init>(Lcom/vuitton/foundation/model/domain/model/booking/BookingExternalContent;)V

    return-object v0
.end method
