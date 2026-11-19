.class public final Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoLoginClickedEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BookAppointmentContactInfoLoginClickedEvent"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoLoginClickedEvent;",
        "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;",
        "",
        "isAppointmentModification",
        "<init>",
        "(Z)V",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoLoginClickedEvent;->a:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoLoginClickedEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoLoginClickedEvent;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoLoginClickedEvent;->a:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoLoginClickedEvent;->a:Z

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoLoginClickedEvent;->a:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "BookAppointmentContactInfoLoginClickedEvent(isAppointmentModification="

    const-string v1, ")"

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoLoginClickedEvent;->a:Z

    invoke-static {v0, v1, p0}, Ltr;->i(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
