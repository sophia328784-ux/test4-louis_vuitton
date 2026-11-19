.class public final Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto$$serializer;,
        Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0011B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bBM\u0008\u0010\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\n\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;",
        "",
        "",
        "experienceId",
        "prebookId",
        "bookingId",
        "Lcom/vuitton/android/data/dto/booking/BookingTypeDto;",
        "type",
        "Lcom/vuitton/android/data/dto/booking/PrebookFormDto;",
        "form",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/booking/BookingTypeDto;Lcom/vuitton/android/data/dto/booking/PrebookFormDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/booking/BookingTypeDto;Lcom/vuitton/android/data/dto/booking/PrebookFormDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto$Companion;

.field public static final f:[Lkotlin/Lazy;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/vuitton/android/data/dto/booking/BookingTypeDto;

.field public final e:Lcom/vuitton/android/data/dto/booking/PrebookFormDto;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;->Companion:Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lgp0;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lgp0;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v2, 0x5

    new-array v2, v2, [Lkotlin/Lazy;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    const/4 v4, 0x1

    aput-object v1, v2, v4

    aput-object v1, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v0, 0x4

    aput-object v1, v2, v0

    sput-object v2, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;->f:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/booking/BookingTypeDto;Lcom/vuitton/android/data/dto/booking/PrebookFormDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p7, p1, 0x19

    const/4 v0, 0x0

    const/16 v1, 0x19

    if-ne v1, p7, :cond_2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;->a:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;->b:Ljava/lang/String;

    :goto_0
    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_1

    iput-object v0, p0, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;->c:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p4, p0, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;->c:Ljava/lang/String;

    :goto_1
    iput-object p5, p0, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;->d:Lcom/vuitton/android/data/dto/booking/BookingTypeDto;

    iput-object p6, p0, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;->e:Lcom/vuitton/android/data/dto/booking/PrebookFormDto;

    return-void

    :cond_2
    sget-object p0, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto$$serializer;->a:Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/booking/BookingTypeDto;Lcom/vuitton/android/data/dto/booking/PrebookFormDto;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;->a:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;->b:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;->c:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;->d:Lcom/vuitton/android/data/dto/booking/BookingTypeDto;

    .line 50
    iput-object p5, p0, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;->e:Lcom/vuitton/android/data/dto/booking/PrebookFormDto;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/booking/BookingTypeDto;Lcom/vuitton/android/data/dto/booking/PrebookFormDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_1

    move-object p3, v0

    .line 51
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/booking/BookingTypeDto;Lcom/vuitton/android/data/dto/booking/PrebookFormDto;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;->d:Lcom/vuitton/android/data/dto/booking/BookingTypeDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;->d:Lcom/vuitton/android/data/dto/booking/BookingTypeDto;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;->e:Lcom/vuitton/android/data/dto/booking/PrebookFormDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;->e:Lcom/vuitton/android/data/dto/booking/PrebookFormDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;->b:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;->c:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;->d:Lcom/vuitton/android/data/dto/booking/BookingTypeDto;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;->e:Lcom/vuitton/android/data/dto/booking/PrebookFormDto;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/booking/PrebookFormDto;->a:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", prebookId="

    const-string v1, ", bookingId="

    const-string v2, "PrebookFormDataDto(experienceId="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;->d:Lcom/vuitton/android/data/dto/booking/BookingTypeDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", form="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;->e:Lcom/vuitton/android/data/dto/booking/PrebookFormDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
