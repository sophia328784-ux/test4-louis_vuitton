.class public final Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;
.super Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MultipleTextDataDto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto$$serializer;,
        Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B)\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nB?\u0008\u0010\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\t\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;",
        "Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto;",
        "",
        "Lcom/vuitton/android/data/dto/booking/BookingFormCategoryDto;",
        "categories",
        "Lcom/vuitton/android/data/dto/booking/BookingFormFreeTypingDto;",
        "freeTyping",
        "",
        "filledDisplayName",
        "<init>",
        "(Ljava/util/List;Lcom/vuitton/android/data/dto/booking/BookingFormFreeTypingDto;Ljava/lang/String;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/util/List;Lcom/vuitton/android/data/dto/booking/BookingFormFreeTypingDto;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto$Companion;

.field public static final e:[Lkotlin/Lazy;


# instance fields
.field public final b:Ljava/util/List;

.field public final c:Lcom/vuitton/android/data/dto/booking/BookingFormFreeTypingDto;

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lxe;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Lxe;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Lkotlin/Lazy;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sput-object v2, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;->e:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Lcom/vuitton/android/data/dto/booking/BookingFormFreeTypingDto;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 3

    and-int/lit8 v0, p1, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne v2, v0, :cond_1

    invoke-direct {p0, p1, p5}, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto;-><init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;->b:Ljava/util/List;

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    iput-object v1, p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;->c:Lcom/vuitton/android/data/dto/booking/BookingFormFreeTypingDto;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;->c:Lcom/vuitton/android/data/dto/booking/BookingFormFreeTypingDto;

    :goto_0
    iput-object p4, p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;->d:Ljava/lang/String;

    return-void

    :cond_1
    sget-object p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto$$serializer;->a:Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v2, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v1
.end method

.method public constructor <init>(Ljava/util/List;Lcom/vuitton/android/data/dto/booking/BookingFormFreeTypingDto;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vuitton/android/data/dto/booking/BookingFormCategoryDto;",
            ">;",
            "Lcom/vuitton/android/data/dto/booking/BookingFormFreeTypingDto;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, v0}, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    iput-object p1, p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;->b:Ljava/util/List;

    .line 35
    iput-object p2, p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;->c:Lcom/vuitton/android/data/dto/booking/BookingFormFreeTypingDto;

    .line 36
    iput-object p3, p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/vuitton/android/data/dto/booking/BookingFormFreeTypingDto;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 37
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;-><init>(Ljava/util/List;Lcom/vuitton/android/data/dto/booking/BookingFormFreeTypingDto;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;->b:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;->c:Lcom/vuitton/android/data/dto/booking/BookingFormFreeTypingDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;->c:Lcom/vuitton/android/data/dto/booking/BookingFormFreeTypingDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;->d:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;->b:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;->c:Lcom/vuitton/android/data/dto/booking/BookingFormFreeTypingDto;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/vuitton/android/data/dto/booking/BookingFormFreeTypingDto;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;->d:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MultipleTextDataDto(categories="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", freeTyping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;->c:Lcom/vuitton/android/data/dto/booking/BookingFormFreeTypingDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filledDisplayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;->d:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
