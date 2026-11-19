.class public final Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto$$serializer;,
        Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00162\u00020\u0001:\u0002\u0017\u0016Bo\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011B{\u0008\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0004\u0008\u0010\u0010\u0015\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;",
        "",
        "",
        "id",
        "order",
        "",
        "displayName",
        "name",
        "localeKey",
        "",
        "eCommerce",
        "countryKey",
        "flagUrl",
        "group",
        "Lcom/vuitton/android/data/dto/dispatch/LocalizationDto;",
        "androidLocalization",
        "<init>",
        "(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/dispatch/LocalizationDto;)V",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/dispatch/LocalizationDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto$Companion;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/Boolean;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Lcom/vuitton/android/data/dto/dispatch/LocalizationDto;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->Companion:Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/dispatch/LocalizationDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p12, p1, 0x53

    const/4 v0, 0x0

    const/16 v1, 0x53

    if-ne v1, p12, :cond_6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->a:I

    iput p3, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->b:I

    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->c:Ljava/lang/String;

    :goto_0
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_1

    iput-object v0, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->d:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p5, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->d:Ljava/lang/String;

    :goto_1
    iput-object p6, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->e:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_2

    iput-object v0, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->f:Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    iput-object p7, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->f:Ljava/lang/Boolean;

    :goto_2
    iput-object p8, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->g:Ljava/lang/String;

    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_3

    iput-object v0, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->h:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iput-object p9, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->h:Ljava/lang/String;

    :goto_3
    and-int/lit16 p2, p1, 0x100

    if-nez p2, :cond_4

    iput-object v0, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->i:Ljava/lang/String;

    goto :goto_4

    :cond_4
    iput-object p10, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->i:Ljava/lang/String;

    :goto_4
    and-int/lit16 p1, p1, 0x200

    if-nez p1, :cond_5

    iput-object v0, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->j:Lcom/vuitton/android/data/dto/dispatch/LocalizationDto;

    return-void

    :cond_5
    iput-object p11, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->j:Lcom/vuitton/android/data/dto/dispatch/LocalizationDto;

    return-void

    :cond_6
    sget-object p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto$$serializer;->a:Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/dispatch/LocalizationDto;)V
    .locals 0

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->a:I

    .line 85
    iput p2, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->b:I

    .line 86
    iput-object p3, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->c:Ljava/lang/String;

    .line 87
    iput-object p4, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->d:Ljava/lang/String;

    .line 88
    iput-object p5, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->e:Ljava/lang/String;

    .line 89
    iput-object p6, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->f:Ljava/lang/Boolean;

    .line 90
    iput-object p7, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->g:Ljava/lang/String;

    .line 91
    iput-object p8, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->h:Ljava/lang/String;

    .line 92
    iput-object p9, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->i:Ljava/lang/String;

    .line 93
    iput-object p10, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->j:Lcom/vuitton/android/data/dto/dispatch/LocalizationDto;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/dispatch/LocalizationDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p12, p11, 0x4

    const/4 v0, 0x0

    if-eqz p12, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_1

    move-object p4, v0

    :cond_1
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_2

    move-object p6, v0

    :cond_2
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_3

    move-object p8, v0

    :cond_3
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_4

    move-object p9, v0

    :cond_4
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_5

    move-object p10, v0

    .line 94
    :cond_5
    invoke-direct/range {p0 .. p10}, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/dispatch/LocalizationDto;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;

    iget v1, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->a:I

    iget v3, p1, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->b:I

    iget v3, p1, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->f:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->f:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object p0, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->j:Lcom/vuitton/android/data/dto/dispatch/LocalizationDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->j:Lcom/vuitton/android/data/dto/dispatch/LocalizationDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->b:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->c:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->d:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->e:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->f:Ljava/lang/Boolean;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->g:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->h:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->i:Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->j:Lcom/vuitton/android/data/dto/dispatch/LocalizationDto;

    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/dispatch/LocalizationDto;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", order="

    const-string v1, ", displayName="

    iget v2, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->a:I

    iget v3, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->b:I

    const-string v4, "InAppDispatchDto(id="

    invoke-static {v2, v3, v4, v0, v1}, Lfc;->p(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    const-string v2, ", localeKey="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->d:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", eCommerce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->f:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", countryKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", flagUrl="

    const-string v2, ", group="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->h:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", androidLocalization="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;->j:Lcom/vuitton/android/data/dto/dispatch/LocalizationDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
