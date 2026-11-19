.class public final Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto$$serializer;,
        Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00152\u00020\u0001:\u0002\u0016\u0015BM\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\u000c\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010Bo\u0008\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0006\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u000f\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;",
        "",
        "",
        "traceId",
        "date",
        "path",
        "",
        "statusCode",
        "",
        "Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentErrorsDto;",
        "errors",
        "error",
        "message",
        "Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDetailsDto;",
        "details",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDetailsDto;)V",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDetailsDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto$Companion;

.field public static final i:[Lkotlin/Lazy;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/util/List;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDetailsDto;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->Companion:Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lew;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lew;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/16 v2, 0x8

    new-array v2, v2, [Lkotlin/Lazy;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const/4 v3, 0x3

    aput-object v1, v2, v3

    const/4 v3, 0x4

    aput-object v0, v2, v3

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/4 v0, 0x7

    aput-object v1, v2, v0

    sput-object v2, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->i:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDetailsDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit16 p10, p1, 0xff

    const/16 v0, 0xff

    if-ne v0, p10, :cond_0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->c:Ljava/lang/String;

    iput p5, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->d:I

    iput-object p6, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->e:Ljava/util/List;

    iput-object p7, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->h:Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDetailsDto;

    return-void

    :cond_0
    sget-object p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto$$serializer;->a:Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDetailsDto;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentErrorsDto;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDetailsDto;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->c:Ljava/lang/String;

    iput p4, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->d:I

    iput-object p5, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->e:Ljava/util/List;

    iput-object p6, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->h:Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDetailsDto;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->d:I

    iget v3, p1, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->d:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->e:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->e:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->h:Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDetailsDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->h:Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDetailsDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->d:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->e:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->h:Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDetailsDto;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDetailsDto;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", date="

    const-string v1, ", path="

    const-string v2, "ErrorOnlineStoreAppointmentDto(traceId="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    const-string v2, ", message="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->e:Ljava/util/List;

    invoke-static {v1, v3, v2, v0, v4}, Lo60;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", details="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->h:Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDetailsDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
