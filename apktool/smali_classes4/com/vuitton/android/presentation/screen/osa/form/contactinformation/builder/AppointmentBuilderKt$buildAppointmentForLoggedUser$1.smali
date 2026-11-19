.class final Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt$buildAppointmentForLoggedUser$1;
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
    c = "com.vuitton.android.presentation.screen.osa.form.contactinformation.builder.AppointmentBuilderKt"
    f = "AppointmentBuilder.kt"
    l = {
        0x73
    }
    m = "buildAppointmentForLoggedUser"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

.field public c:Ljava/lang/String;

.field public d:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;

.field public k:Ljava/lang/String;

.field public synthetic l:Ljava/lang/Object;

.field public m:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt$buildAppointmentForLoggedUser$1;->l:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt$buildAppointmentForLoggedUser$1;->m:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt$buildAppointmentForLoggedUser$1;->m:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v8, p0

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/builder/AppointmentBuilderKt;->a(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/foundation/model/domain/model/profile/Profile;Ljava/util/List;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
