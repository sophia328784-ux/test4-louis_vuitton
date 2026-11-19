.class final Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getAppointmentAvailabilities$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.data.repository.AppointmentRepositoryImpl"
    f = "AppointmentRepositoryImpl.kt"
    l = {
        0x5a,
        0x62
    }
    m = "getAppointmentAvailabilities"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl;

.field public e:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getAppointmentAvailabilities$1;->d:Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getAppointmentAvailabilities$1;->c:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getAppointmentAvailabilities$1;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getAppointmentAvailabilities$1;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl$getAppointmentAvailabilities$1;->d:Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl;->g(Lcom/vuitton/foundation/model/domain/model/distantrepairs/AvailabilitiesCaller;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
