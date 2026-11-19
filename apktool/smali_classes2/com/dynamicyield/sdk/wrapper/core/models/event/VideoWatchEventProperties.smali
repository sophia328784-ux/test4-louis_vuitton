.class public final Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties;
.super Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties$$serializer;,
        Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u00142\u00020\u0001:\u0002\u0015\u0014B9\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0010\u0008\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rB[\u0008\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\u000c\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;",
        "",
        "itemId",
        "",
        "categories",
        "",
        "autoplay",
        "Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;",
        "progress",
        "Lkotlin/UInt;",
        "progressPercent",
        "<init>",
        "(Ljava/lang/String;Ljava/util/List;ZLcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "",
        "seen0",
        "dyType",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;Lkotlin/UInt;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
.field public static final Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties$Companion;

.field public static final g:[Lkotlin/Lazy;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:Z

.field public final e:Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;

.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lb51;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Lb51;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    new-instance v3, Lb51;

    const/16 v4, 0xd

    invoke-direct {v3, v4}, Lb51;-><init>(I)V

    invoke-static {v0, v3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v3, 0x6

    new-array v3, v3, [Lkotlin/Lazy;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    const/4 v2, 0x3

    aput-object v1, v3, v2

    const/4 v2, 0x4

    aput-object v0, v3, v2

    const/4 v0, 0x5

    aput-object v1, v3, v0

    sput-object v3, Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties;->g:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;Lkotlin/UInt;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p9, p1, 0x3b

    const/4 v0, 0x0

    const/16 v1, 0x3b

    if-ne v1, p9, :cond_1

    invoke-direct {p0, p1, p2, p8}, Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;-><init>(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties;->b:Ljava/lang/String;

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties;->c:Ljava/util/List;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties;->c:Ljava/util/List;

    :goto_0
    iput-boolean p5, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties;->d:Z

    iput-object p6, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties;->e:Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;

    iget p1, p7, Lkotlin/UInt;->b:I

    iput p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties;->f:I

    return-void

    :cond_1
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties$$serializer;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;ZLcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p6, p6, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    move-object v2, p2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 47
    invoke-direct/range {v0 .. v6}, Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties;-><init>(Ljava/lang/String;Ljava/util/List;ZLcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;ZLcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    const-string p6, "video-watch-v1"

    invoke-direct {p0, p6}, Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;-><init>(Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties;->b:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties;->c:Ljava/util/List;

    .line 44
    iput-boolean p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties;->d:Z

    .line 45
    iput-object p4, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties;->e:Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;

    .line 46
    iput p5, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties;->f:I

    return-void
.end method
