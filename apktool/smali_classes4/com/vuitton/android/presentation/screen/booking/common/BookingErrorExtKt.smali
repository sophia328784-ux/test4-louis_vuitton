.class public abstract Lcom/vuitton/android/presentation/screen/booking/common/BookingErrorExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
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
.method public static final a(Ljava/lang/Throwable;)Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;
    .locals 3

    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/error/booking/BookingException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/vuitton/foundation/model/domain/error/booking/BookingException;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/error/booking/BookingException;->b:Ljava/lang/String;

    if-eqz p0, :cond_2

    invoke-static {p0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_2

    new-instance v0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2
    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v0, 0x7f140967

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
