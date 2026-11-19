.class public interface abstract Lcom/vuitton/android/data/api/bff/user/CareServicesBffApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00a7@\u00a2\u0006\u0002\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0008\u001a\u00020\tH\u00a7@\u00a2\u0006\u0002\u0010\nJ\u0018\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0001\u0010\r\u001a\u00020\u000eH\u00a7@\u00a2\u0006\u0002\u0010\u000fJ$\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0001\u0010\u0008\u001a\u00020\t2\n\u0008\u0001\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u00a7@\u00a2\u0006\u0002\u0010\u0014J\"\u0010\u0015\u001a\u00020\u00112\u0008\u0008\u0001\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0001\u0010\u0012\u001a\u00020\u0016H\u00a7@\u00a2\u0006\u0002\u0010\u0017J$\u0010\u0018\u001a\u00020\u00112\u0008\u0008\u0001\u0010\u0008\u001a\u00020\t2\n\u0008\u0001\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u00a7@\u00a2\u0006\u0002\u0010\u001bJ$\u0010\u001c\u001a\u00020\u00112\u0008\u0008\u0001\u0010\u0008\u001a\u00020\t2\n\u0008\u0001\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u00a7@\u00a2\u0006\u0002\u0010\u0014J$\u0010\u001d\u001a\u00020\u00112\u0008\u0008\u0001\u0010\u0008\u001a\u00020\t2\n\u0008\u0001\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u00a7@\u00a2\u0006\u0002\u0010 \u00a8\u0006!\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/data/api/bff/user/CareServicesBffApi;",
        "",
        "getRepairs",
        "",
        "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getRepairDetail",
        "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;",
        "repairId",
        "",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "createRepair",
        "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationResponseDto;",
        "careServiceCreateDto",
        "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;",
        "(Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateRepairAddress",
        "",
        "body",
        "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAcceptBodyDto;",
        "(Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAcceptBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "confirmRepairAddresses",
        "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceConfirmAddressBodyDto;",
        "(Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceConfirmAddressBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "cancelRepair",
        "careServiceCancellationBodyDto",
        "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCancellationBodyDto;",
        "(Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCancellationBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "acceptRepair",
        "updateRepairAppointment",
        "appointmentDto",
        "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAppointmentDto;",
        "(Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAppointmentDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public abstract acceptRepair(Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAcceptBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "repairId"
        .end annotation
    .end param
    .param p2    # Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAcceptBodyDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAcceptBodyDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "repairs/{repairId}/accept"
    .end annotation
.end method

.method public abstract cancelRepair(Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCancellationBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "repairId"
        .end annotation
    .end param
    .param p2    # Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCancellationBodyDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCancellationBodyDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "repairs/{repairId}/cancel"
    .end annotation
.end method

.method public abstract confirmRepairAddresses(Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceConfirmAddressBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "repairId"
        .end annotation
    .end param
    .param p2    # Lcom/vuitton/android/data/dto/careservices/bff/CareServiceConfirmAddressBodyDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceConfirmAddressBodyDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "repairs/{repairId}/confirm-address"
    .end annotation
.end method

.method public abstract createRepair(Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationResponseDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "repairs"
    .end annotation
.end method

.method public abstract getRepairDetail(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "repairId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v2/repairs/{repairId}"
    .end annotation
.end method

.method public abstract getRepairs(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "repairs"
    .end annotation
.end method

.method public abstract updateRepairAddress(Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAcceptBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "repairId"
        .end annotation
    .end param
    .param p2    # Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAcceptBodyDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAcceptBodyDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "repairs/{repairId}"
    .end annotation
.end method

.method public abstract updateRepairAppointment(Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAppointmentDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "repairId"
        .end annotation
    .end param
    .param p2    # Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAppointmentDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAppointmentDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "repairs/{repairId}/appointment"
    .end annotation
.end method
