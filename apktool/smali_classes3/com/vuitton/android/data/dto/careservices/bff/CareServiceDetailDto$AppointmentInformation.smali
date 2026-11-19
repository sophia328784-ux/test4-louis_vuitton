.class public final Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppointmentInformation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation$$serializer;,
        Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u001f\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B/\u0008\u0010\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u0006\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;",
        "",
        "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ContactInformation;",
        "contactInformation",
        "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentDetail;",
        "detail",
        "<init>",
        "(Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ContactInformation;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentDetail;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ContactInformation;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentDetail;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "Companion",
        "$serializer",
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

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation$Companion;


# instance fields
.field public final a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ContactInformation;

.field public final b:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentDetail;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;->Companion:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 23
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;-><init>(Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ContactInformation;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentDetail;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ContactInformation;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentDetail;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p4, p1, 0x1

    const/4 v0, 0x0

    if-nez p4, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ContactInformation;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ContactInformation;

    :goto_0
    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;->b:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentDetail;

    return-void

    :cond_1
    iput-object p3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;->b:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentDetail;

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ContactInformation;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentDetail;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ContactInformation;

    .line 26
    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;->b:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentDetail;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ContactInformation;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentDetail;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 27
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;-><init>(Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ContactInformation;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentDetail;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ContactInformation;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ContactInformation;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;->b:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentDetail;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;->b:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentDetail;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ContactInformation;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ContactInformation;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;->b:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentDetail;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentDetail;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppointmentInformation(contactInformation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ContactInformation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", detail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;->b:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentDetail;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
