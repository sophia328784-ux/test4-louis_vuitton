.class public final Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto$$serializer;,
        Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00142\u00020\u0001:\u0002\u0015\u0014BO\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eBk\u0008\u0010\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\r\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;",
        "",
        "",
        "identifier",
        "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;",
        "email",
        "civility",
        "firstName",
        "lastName",
        "firstName2",
        "lastName2",
        "Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileConsentsFormFieldDto;",
        "consents",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileConsentsFormFieldDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileConsentsFormFieldDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "Companion",
        "$serializer",
        "forms"
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
.field public static final Companion:Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

.field public final c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

.field public final d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

.field public final e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

.field public final f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

.field public final g:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

.field public final h:Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileConsentsFormFieldDto;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->Companion:Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileConsentsFormFieldDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit16 p10, p1, 0x9f

    const/4 v0, 0x0

    const/16 v1, 0x9f

    if-ne v1, p10, :cond_2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iput-object p4, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iput-object p5, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iput-object p6, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_0

    iput-object v0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    goto :goto_0

    :cond_0
    iput-object p7, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    :goto_0
    and-int/lit8 p1, p1, 0x40

    if-nez p1, :cond_1

    iput-object v0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->g:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    goto :goto_1

    :cond_1
    iput-object p8, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->g:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    :goto_1
    iput-object p9, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->h:Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileConsentsFormFieldDto;

    return-void

    :cond_2
    sget-object p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileConsentsFormFieldDto;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->a:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 54
    iput-object p3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 55
    iput-object p4, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 56
    iput-object p5, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 57
    iput-object p6, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 58
    iput-object p7, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->g:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 59
    iput-object p8, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->h:Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileConsentsFormFieldDto;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileConsentsFormFieldDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p10, p9, 0x20

    const/4 v0, 0x0

    if-eqz p10, :cond_0

    move-object p6, v0

    :cond_0
    and-int/lit8 p9, p9, 0x40

    if-eqz p9, :cond_1

    move-object p7, v0

    .line 60
    :cond_1
    invoke-direct/range {p0 .. p8}, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;-><init>(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileConsentsFormFieldDto;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->g:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->g:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->h:Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileConsentsFormFieldDto;

    iget-object p1, p1, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->h:Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileConsentsFormFieldDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v2, v0, v1}, La;->b(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;II)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v2, v0, v1}, La;->b(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;II)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v2, v0, v1}, La;->b(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;II)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v2, v0, v1}, La;->b(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;II)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->g:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->h:Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileConsentsFormFieldDto;

    invoke-virtual {p0}, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileConsentsFormFieldDto;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CompleteProfileFormDto(identifier="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", civility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", firstName="

    const-string v2, ", lastName="

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v4, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v0, v3, v1, v4, v2}, La;->z(Ljava/lang/StringBuilder;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Ljava/lang/String;)V

    const-string v1, ", firstName2="

    const-string v2, ", lastName2="

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v4, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v0, v3, v1, v4, v2}, La;->z(Ljava/lang/StringBuilder;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->g:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", consents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->h:Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileConsentsFormFieldDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
