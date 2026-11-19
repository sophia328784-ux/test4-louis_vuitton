.class public final Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute$NumberValue;
.super Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NumberValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute$NumberValue$$serializer;,
        Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute$NumberValue$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \n2\u00020\u0001:\u0002\u000b\nB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B#\u0008\u0010\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute$NumberValue;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute;",
        "",
        "number",
        "<init>",
        "(I)V",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(IILkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute$NumberValue$Companion;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute$NumberValue$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute$NumberValue$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute$NumberValue;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute$NumberValue$Companion;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, v0}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute$NumberValue;->a:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p3, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p3, :cond_0

    invoke-direct {p0, v0}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute$NumberValue;->a:I

    return-void

    :cond_0
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute$NumberValue$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute$NumberValue$$serializer;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute$NumberValue$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute$NumberValue;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute$NumberValue;

    iget p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute$NumberValue;->a:I

    iget p1, p1, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute$NumberValue;->a:I

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute$NumberValue;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NumberValue(number="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute$NumberValue;->a:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
