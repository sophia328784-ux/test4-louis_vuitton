.class public final Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomEvent;
.super Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomEvent$$serializer;,
        Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomEvent$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B/\u0008\u0010\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u0006\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomEvent;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;",
        "",
        "name",
        "Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomProperties;",
        "properties",
        "<init>",
        "(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomProperties;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomProperties;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomEvent$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomEvent;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomEvent$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomProperties;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p4, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p4, :cond_1

    invoke-direct {p0, v0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomEvent;->a:Ljava/lang/String;

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomEvent;->b:Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomProperties;

    return-void

    :cond_0
    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomEvent;->b:Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomProperties;

    return-void

    :cond_1
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomEvent$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomEvent$$serializer;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomEvent$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomProperties;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomEvent;->a:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomEvent;->b:Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomProperties;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomProperties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 31
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomEvent;-><init>(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomProperties;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomEvent;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomEvent;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomEvent;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomEvent;->b:Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomProperties;

    iget-object p1, p1, Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomEvent;->b:Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomProperties;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomEvent;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomEvent;->b:Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomProperties;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DynamicCustomEvent(name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomEvent;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", properties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomEvent;->b:Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomProperties;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
