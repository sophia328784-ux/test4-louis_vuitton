.class final Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadPrefilledForm$1;
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
    c = "com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModelImpl"
    f = "BookingPersonalInfoViewModelImpl.kt"
    l = {
        0xef,
        0xf1,
        0xf4,
        0xf4,
        0xf8
    }
    m = "loadPrefilledForm"
    v = 0x2
.end annotation


# instance fields
.field public b:Lkotlin/jvm/functions/Function1;

.field public c:Ljava/util/List;

.field public d:Z

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;

.field public g:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadPrefilledForm$1;->f:Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadPrefilledForm$1;->e:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadPrefilledForm$1;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadPrefilledForm$1;->g:I

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadPrefilledForm$1;->f:Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;->zc(Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;Lx4;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
