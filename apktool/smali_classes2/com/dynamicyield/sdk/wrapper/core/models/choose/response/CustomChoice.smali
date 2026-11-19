.class public final Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;
.super Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Choice;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice$$serializer;,
        Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00132\u00020\u0001:\u0002\u0014\u0013BK\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0010\u0008\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\r\u0010\u000eBa\u0008\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\r\u0010\u0012\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Choice;",
        "",
        "id",
        "",
        "name",
        "Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;",
        "type",
        "",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomVariation;",
        "variations",
        "groups",
        "decisionId",
        "<init>",
        "(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(IILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "Companion",
        "$serializer",
        "DY-Sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice$Companion;

.field public static final g:[Lkotlin/Lazy;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/List;

.field public final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Liq;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Liq;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    new-instance v3, Liq;

    const/16 v4, 0xf

    invoke-direct {v3, v4}, Liq;-><init>(I)V

    invoke-static {v0, v3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    new-instance v4, Liq;

    const/16 v5, 0x10

    invoke-direct {v4, v5}, Liq;-><init>(I)V

    invoke-static {v0, v4}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v4, 0x6

    new-array v4, v4, [Lkotlin/Lazy;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v2, 0x3

    aput-object v3, v4, v2

    const/4 v2, 0x4

    aput-object v0, v4, v2

    const/4 v0, 0x5

    aput-object v1, v4, v0

    sput-object v4, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->g:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p8, p1, 0xf

    const/4 v0, 0x0

    const/16 v1, 0xf

    if-ne v1, p8, :cond_2

    invoke-direct {p0, v0}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Choice;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->a:I

    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->c:Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;

    iput-object p5, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->d:Ljava/util/List;

    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_0

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->e:Ljava/util/List;

    goto :goto_0

    :cond_0
    iput-object p6, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->e:Ljava/util/List;

    :goto_0
    and-int/lit8 p1, p1, 0x20

    if-nez p1, :cond_1

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->f:Ljava/lang/String;

    return-void

    :cond_1
    iput-object p7, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->f:Ljava/lang/String;

    return-void

    :cond_2
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice$$serializer;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;",
            "Ljava/util/List<",
            "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomVariation;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, v0}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Choice;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 49
    iput p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->a:I

    .line 50
    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->b:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->c:Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;

    .line 52
    iput-object p4, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->d:Ljava/util/List;

    .line 53
    iput-object p5, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->e:Ljava/util/List;

    .line 54
    iput-object p6, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->f:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x10

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p5, v0

    :cond_0
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_1

    move-object p6, v0

    .line 47
    :cond_1
    invoke-direct/range {p0 .. p6}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;-><init>(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->c:Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;

    return-object p0
.end method

.method public final d()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->d:Ljava/util/List;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;

    iget v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->a:I

    iget v3, p1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->c:Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;

    iget-object v3, p1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->c:Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->d:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->e:Ljava/util/List;

    iget-object v3, p1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->e:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->f:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->c:Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->d:Ljava/util/List;

    invoke-static {v2, v1, v0}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->e:Ljava/util/List;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->f:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CustomChoice(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->c:Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", variations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", groups="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", decisionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->f:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lfc;->l(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
