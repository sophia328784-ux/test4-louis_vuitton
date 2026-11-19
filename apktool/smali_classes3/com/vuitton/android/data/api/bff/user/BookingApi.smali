.class public interface abstract Lcom/vuitton/android/data/api/bff/user/BookingApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u00020\u0003H\u00a7@\u00a2\u0006\u0002\u0010\u0004J0\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00082\n\u0008\u0003\u0010\t\u001a\u0004\u0018\u00010\u00082\n\u0008\u0003\u0010\n\u001a\u0004\u0018\u00010\u0008H\u00a7@\u00a2\u0006\u0002\u0010\u000bJ\u0018\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0001\u0010\u000e\u001a\u00020\u000fH\u00a7@\u00a2\u0006\u0002\u0010\u0010J\u000e\u0010\u0011\u001a\u00020\u0012H\u00a7@\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0013\u001a\u00020\u00122\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u000fH\u00a7@\u00a2\u0006\u0002\u0010\u0010J\"\u0010\u0015\u001a\u00020\u00122\u0008\u0008\u0001\u0010\u0016\u001a\u00020\u00082\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u000fH\u00a7@\u00a2\u0006\u0002\u0010\u0017J\u0018\u0010\u0018\u001a\u00020\u00122\u0008\u0008\u0001\u0010\u0016\u001a\u00020\u0008H\u00a7@\u00a2\u0006\u0002\u0010\u0019J\u000e\u0010\u001a\u001a\u00020\u001bH\u00a7@\u00a2\u0006\u0002\u0010\u0004J\"\u0010\u001c\u001a\u00020\u00032\u0008\u0008\u0001\u0010\n\u001a\u00020\u00082\u0008\u0008\u0001\u0010\u001d\u001a\u00020\u000fH\u00a7@\u00a2\u0006\u0002\u0010\u0017J\u000e\u0010\u001e\u001a\u00020\u001fH\u00a7@\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010 \u001a\u00020!2\u0008\u0008\u0001\u0010\"\u001a\u00020#H\u00a7@\u00a2\u0006\u0002\u0010$J\u0018\u0010%\u001a\u00020&2\u0008\u0008\u0001\u0010\n\u001a\u00020\u0008H\u00a7@\u00a2\u0006\u0002\u0010\u0019J\u0018\u0010\'\u001a\u00020\u00032\u0008\u0008\u0001\u0010\n\u001a\u00020\u0008H\u00a7@\u00a2\u0006\u0002\u0010\u0019J\u000e\u0010(\u001a\u00020)H\u00a7@\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006*\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/data/api/bff/user/BookingApi;",
        "",
        "getBookings",
        "Lcom/vuitton/android/data/dto/booking/BookingListDto;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getBookingForm",
        "Lcom/vuitton/android/data/dto/booking/BookingFormResponseDto;",
        "experienceId",
        "",
        "prebookId",
        "bookingId",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "postBookingsFormUpdate",
        "Lcom/vuitton/android/data/dto/booking/PrebookFormDataResponseDto;",
        "prebookFormDataDto",
        "Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;",
        "(Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPreBookSummary",
        "Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;",
        "addPreBook",
        "preBookForm",
        "updatePreBook",
        "preBookId",
        "(Ljava/lang/String;Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deletePreBook",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteAllPreBook",
        "",
        "updateBooking",
        "prebookForm",
        "getConfirmedBookings",
        "Lcom/vuitton/android/data/dto/booking/BookingConfirmedListDto;",
        "confirmPreBook",
        "Lcom/vuitton/android/data/dto/booking/PreBookConfirmResponseDto;",
        "confirmForm",
        "Lcom/vuitton/android/data/dto/booking/PreBookConfirmRequestDto;",
        "(Lcom/vuitton/android/data/dto/booking/PreBookConfirmRequestDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getBookingPass",
        "Lcom/vuitton/android/data/dto/booking/BookingPassDto;",
        "deleteBooking",
        "getMegatrio",
        "Lcom/vuitton/android/data/dto/booking/BookingMegatrioDto;",
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


# virtual methods
.method public abstract addPreBook(Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "bookings/prebook"
    .end annotation
.end method

.method public abstract confirmPreBook(Lcom/vuitton/android/data/dto/booking/PreBookConfirmRequestDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/vuitton/android/data/dto/booking/PreBookConfirmRequestDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/booking/PreBookConfirmRequestDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/booking/PreBookConfirmResponseDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "bookings/prebook/confirm"
    .end annotation
.end method

.method public abstract deleteAllPreBook(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "bookings/prebooks"
    .end annotation
.end method

.method public abstract deleteBooking(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "bookingId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/booking/BookingListDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "bookings/{bookingId}"
    .end annotation
.end method

.method public abstract deletePreBook(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "preBookId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "bookings/prebook/{preBookId}"
    .end annotation
.end method

.method public abstract getBookingForm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "experienceId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "prebookId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "bookingId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/booking/BookingFormResponseDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "bookings/form"
    .end annotation
.end method

.method public abstract getBookingPass(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "bookingId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/booking/BookingPassDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "bookings/{bookingId}/pass"
    .end annotation
.end method

.method public abstract getBookings(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/booking/BookingListDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "bookings"
    .end annotation
.end method

.method public abstract getConfirmedBookings(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/booking/BookingConfirmedListDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "bookings/confirmation-details"
    .end annotation
.end method

.method public abstract getMegatrio(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/booking/BookingMegatrioDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "bookings/megatrio"
    .end annotation
.end method

.method public abstract getPreBookSummary(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "bookings/prebooks"
    .end annotation
.end method

.method public abstract postBookingsFormUpdate(Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/booking/PrebookFormDataResponseDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "bookings/form"
    .end annotation
.end method

.method public abstract updateBooking(Ljava/lang/String;Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "bookingId"
        .end annotation
    .end param
    .param p2    # Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/booking/BookingListDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "bookings/{bookingId}"
    .end annotation
.end method

.method public abstract updatePreBook(Ljava/lang/String;Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "preBookId"
        .end annotation
    .end param
    .param p2    # Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "bookings/prebook/{preBookId}"
    .end annotation
.end method
