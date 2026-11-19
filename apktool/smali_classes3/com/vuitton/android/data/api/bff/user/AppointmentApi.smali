.class public interface abstract Lcom/vuitton/android/data/api/bff/user/AppointmentApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008f\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u00020\u0003H\u00a7@\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008H\u00a7@\u00a2\u0006\u0002\u0010\tJ$\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\u000c\u001a\u00020\r2\n\u0008\u0003\u0010\u000e\u001a\u0004\u0018\u00010\rH\u00a7@\u00a2\u0006\u0002\u0010\u000fJ\u001e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0013H\u00a7@\u00a2\u0006\u0002\u0010\u0014J\u0018\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0017H\u00a7@\u00a2\u0006\u0002\u0010\u0018J\u0014\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aH\u00a7@\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u001c\u001a\u00020\u00162\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u001dH\u00a7@\u00a2\u0006\u0002\u0010\u001eJ$\u0010\u001f\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\u000c\u001a\u00020\r2\n\u0008\u0003\u0010\u000e\u001a\u0004\u0018\u00010\rH\u00a7@\u00a2\u0006\u0002\u0010\u000fJ\u001e\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0013H\u00a7@\u00a2\u0006\u0002\u0010\u0014J\u0018\u0010!\u001a\u00020\u00162\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0017H\u00a7@\u00a2\u0006\u0002\u0010\u0018\u00a8\u0006\"\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/data/api/bff/user/AppointmentApi;",
        "",
        "getAppointments",
        "Lcom/vuitton/android/data/dto/osa/twist/AppointmentsDto;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "cancelAppointment",
        "Lcom/vuitton/android/data/dto/osa/twist/CancelAppointmentDtoResponse;",
        "dto",
        "Lcom/vuitton/android/data/dto/osa/twist/CancelAppointmentDtoRequest;",
        "(Lcom/vuitton/android/data/dto/osa/twist/CancelAppointmentDtoRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getAppointmentAvailabilities",
        "Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;",
        "storeIds",
        "",
        "displayTimeZone",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "prebookAppointment",
        "Lretrofit2/Response;",
        "Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoResponse;",
        "Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;",
        "(Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "confirmAppointment",
        "Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;",
        "Lcom/vuitton/android/data/dto/distantrepairs/ConfirmAppointmentDtoRequest;",
        "(Lcom/vuitton/android/data/dto/distantrepairs/ConfirmAppointmentDtoRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getAppointmentsReasons",
        "",
        "Lcom/vuitton/android/data/dto/osa/twist/OsaReasonDto;",
        "updateAppointment",
        "Lcom/vuitton/android/data/dto/osa/twist/UpdateAppointmentDtoRequest;",
        "(Lcom/vuitton/android/data/dto/osa/twist/UpdateAppointmentDtoRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getAppointmentAvailabilitiesGuest",
        "prebookAppointmentGuest",
        "confirmAppointmentGuest",
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
.method public abstract cancelAppointment(Lcom/vuitton/android/data/dto/osa/twist/CancelAppointmentDtoRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/vuitton/android/data/dto/osa/twist/CancelAppointmentDtoRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/osa/twist/CancelAppointmentDtoRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/osa/twist/CancelAppointmentDtoResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "appointments/cancel"
    .end annotation
.end method

.method public abstract confirmAppointment(Lcom/vuitton/android/data/dto/distantrepairs/ConfirmAppointmentDtoRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/vuitton/android/data/dto/distantrepairs/ConfirmAppointmentDtoRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/distantrepairs/ConfirmAppointmentDtoRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "appointments/confirm"
    .end annotation
.end method

.method public abstract confirmAppointmentGuest(Lcom/vuitton/android/data/dto/distantrepairs/ConfirmAppointmentDtoRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/vuitton/android/data/dto/distantrepairs/ConfirmAppointmentDtoRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/distantrepairs/ConfirmAppointmentDtoRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "appointments/confirm/guest"
    .end annotation
.end method

.method public abstract getAppointmentAvailabilities(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "storeIds"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "displayTimeZone"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v2/appointments/availability"
    .end annotation
.end method

.method public abstract getAppointmentAvailabilitiesGuest(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "storeIds"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "displayTimeZone"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v2/appointments/availability"
    .end annotation
.end method

.method public abstract getAppointments(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/osa/twist/AppointmentsDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "appointments"
    .end annotation
.end method

.method public abstract getAppointmentsReasons(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/vuitton/android/data/dto/osa/twist/OsaReasonDto;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "appointments/reasons"
    .end annotation
.end method

.method public abstract prebookAppointment(Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "appointments/prebook"
    .end annotation
.end method

.method public abstract prebookAppointmentGuest(Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "appointments/prebook/guest"
    .end annotation
.end method

.method public abstract updateAppointment(Lcom/vuitton/android/data/dto/osa/twist/UpdateAppointmentDtoRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/vuitton/android/data/dto/osa/twist/UpdateAppointmentDtoRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/osa/twist/UpdateAppointmentDtoRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "appointments/update"
    .end annotation
.end method
