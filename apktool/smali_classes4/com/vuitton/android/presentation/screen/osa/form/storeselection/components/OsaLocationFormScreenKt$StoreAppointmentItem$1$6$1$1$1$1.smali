.class final Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormScreenKt$StoreAppointmentItem$1$6$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lkotlin/jvm/functions/Function2;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormScreenKt$StoreAppointmentItem$1$6$1$1$1$1;->b:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormScreenKt$StoreAppointmentItem$1$6$1$1$1$1;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormScreenKt$StoreAppointmentItem$1$6$1$1$1$1;->d:Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormScreenKt$StoreAppointmentItem$1$6$1$1$1$1;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormScreenKt$StoreAppointmentItem$1$6$1$1$1$1;->d:Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormScreenKt$StoreAppointmentItem$1$6$1$1$1$1;->b:Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
