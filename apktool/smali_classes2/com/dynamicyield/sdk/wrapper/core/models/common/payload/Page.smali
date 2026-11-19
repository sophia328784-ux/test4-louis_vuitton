.class public final Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page$$serializer;,
        Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u00152\u00020\u0001:\u0002\u0015\u0016BA\u0008\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0006\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\n\u0010\u000bBS\u0008\u0010\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\n\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;",
        "",
        "Lcom/dynamicyield/sdk/wrapper/core/enums/PageType;",
        "pageType",
        "",
        "pageLocation",
        "",
        "pageData",
        "pageReferrer",
        "locale",
        "<init>",
        "(Lcom/dynamicyield/sdk/wrapper/core/enums/PageType;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V",
        "",
        "seen0",
        "type",
        "location",
        "data",
        "referrer",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILcom/dynamicyield/sdk/wrapper/core/enums/PageType;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page$Companion;

.field public static final f:[Lkotlin/Lazy;


# instance fields
.field public final a:Lcom/dynamicyield/sdk/wrapper/core/enums/PageType;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lii0;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Lii0;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    new-instance v3, Lii0;

    const/16 v4, 0x1b

    invoke-direct {v3, v4}, Lii0;-><init>(I)V

    invoke-static {v0, v3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v3, 0x5

    new-array v3, v3, [Lkotlin/Lazy;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const/4 v2, 0x2

    aput-object v0, v3, v2

    const/4 v0, 0x3

    aput-object v1, v3, v0

    const/4 v0, 0x4

    aput-object v1, v3, v0

    sput-object v3, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;->f:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/dynamicyield/sdk/wrapper/core/enums/PageType;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p7, p1, 0xf

    const/4 v0, 0x0

    const/16 v1, 0xf

    if-ne v1, p7, :cond_1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;->a:Lcom/dynamicyield/sdk/wrapper/core/enums/PageType;

    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;->d:Ljava/lang/String;

    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;->e:Ljava/lang/String;

    return-void

    :cond_0
    iput-object p6, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;->e:Ljava/lang/String;

    return-void

    :cond_1
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page$$serializer;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Lcom/dynamicyield/sdk/wrapper/core/enums/PageType;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dynamicyield/sdk/wrapper/core/enums/PageType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;->a:Lcom/dynamicyield/sdk/wrapper/core/enums/PageType;

    .line 40
    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;->b:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;->c:Ljava/util/List;

    .line 42
    iput-object p4, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;->d:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/dynamicyield/sdk/wrapper/core/enums/PageType;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 44
    sget-object p3, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    .line 45
    const-string p4, ""

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    const/4 p5, 0x0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    .line 46
    invoke-direct/range {v0 .. v5}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;-><init>(Lcom/dynamicyield/sdk/wrapper/core/enums/PageType;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
