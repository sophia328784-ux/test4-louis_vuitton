.class public final Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;
.super Lcom/vuitton/android/presentation/screen/booking/BookingRoutes;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/booking/BookingRoutes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reservation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation$$serializer;,
        Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tB7\u0008\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u0008\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;",
        "Lcom/vuitton/android/presentation/screen/booking/BookingRoutes;",
        "Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;",
        "experienceId",
        "Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;",
        "prebookId",
        "",
        "isAdditional",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Ljava/lang/String;ZLkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "Companion",
        "$serializer",
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

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;->Companion:Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;ZLkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p1, 0x1

    const/4 p6, 0x0

    const/4 v0, 0x1

    if-ne v0, p5, :cond_2

    invoke-direct {p0, p6}, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;->a:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_0

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;->b:Ljava/lang/String;

    :goto_0
    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;->c:Z

    return-void

    :cond_1
    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;->c:Z

    return-void

    :cond_2
    sget-object p0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation$$serializer;->a:Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw p6
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 44
    :cond_1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;-><init>(Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p4, 0x0

    .line 42
    invoke-direct {p0, p4}, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;->c:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;->a:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;->Companion:Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId$Companion;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;->b:Ljava/lang/String;

    if-nez v3, :cond_4

    if-nez v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_4
    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;->Companion:Lcom/vuitton/foundation/model/domain/model/booking/PreBookId$Companion;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;->c:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;->c:Z

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;->Companion:Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;->Companion:Lcom/vuitton/foundation/model/domain/model/booking/PreBookId$Companion;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;->c:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;->Companion:Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;->Companion:Lcom/vuitton/foundation/model/domain/model/booking/PreBookId$Companion;

    :goto_0
    const-string v1, ", prebookId="

    const-string v2, ", isAdditional="

    const-string v3, "Reservation(experienceId="

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;->a:Ljava/lang/String;

    invoke-static {v3, v4, v1, v0, v2}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;->c:Z

    invoke-static {v0, p0, v1}, La;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
