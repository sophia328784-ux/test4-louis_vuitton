.class public final Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context$$serializer;,
        Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00192\u00020\u0001:\u0002\u001a\u0019Bs\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0010\u0008\u0002\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u0012\u0016\u0008\u0002\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\r\u0012\u0010\u0008\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\n\u00a2\u0006\u0004\u0008\u0012\u0010\u0013By\u0008\u0010\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u0012\u0014\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\r\u0012\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\n\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0018\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;",
        "",
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;",
        "page",
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Device;",
        "device",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;",
        "branch",
        "Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;",
        "channel",
        "",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/CartItem;",
        "cart",
        "",
        "",
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute;",
        "pageAttributes",
        "listedItems",
        "<init>",
        "(Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Device;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Device;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context$Companion;

.field public static final h:[Lkotlin/Lazy;


# instance fields
.field public final a:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;

.field public final b:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Device;

.field public final c:Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;

.field public final d:Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;

.field public final e:Ljava/util/List;

.field public final f:Ljava/util/Map;

.field public final g:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Llp;

    const/16 v3, 0x1b

    invoke-direct {v2, v3}, Llp;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    new-instance v3, Llp;

    const/16 v4, 0x1c

    invoke-direct {v3, v4}, Llp;-><init>(I)V

    invoke-static {v0, v3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    new-instance v4, Llp;

    const/16 v5, 0x1d

    invoke-direct {v4, v5}, Llp;-><init>(I)V

    invoke-static {v0, v4}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v4, 0x7

    new-array v4, v4, [Lkotlin/Lazy;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const/4 v5, 0x3

    aput-object v1, v4, v5

    const/4 v1, 0x4

    aput-object v2, v4, v1

    const/4 v1, 0x5

    aput-object v3, v4, v1

    const/4 v1, 0x6

    aput-object v0, v4, v1

    sput-object v4, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->h:[Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 68
    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;-><init>(Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Device;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;Ljava/util/List;Ljava/util/Map;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Device;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p9, p1, 0x1

    const/4 v0, 0x0

    if-nez p9, :cond_0

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->a:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->a:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->b:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Device;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->b:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Device;

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->c:Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;

    goto :goto_2

    :cond_2
    iput-object p4, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->c:Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;

    :goto_2
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->d:Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;

    goto :goto_3

    :cond_3
    iput-object p5, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->d:Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;

    :goto_3
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_4

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->e:Ljava/util/List;

    goto :goto_4

    :cond_4
    iput-object p6, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->e:Ljava/util/List;

    :goto_4
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_5

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->f:Ljava/util/Map;

    goto :goto_5

    :cond_5
    iput-object p7, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->f:Ljava/util/Map;

    :goto_5
    and-int/lit8 p1, p1, 0x40

    if-nez p1, :cond_6

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->g:Ljava/util/List;

    return-void

    :cond_6
    iput-object p8, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->g:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Device;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;",
            "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Device;",
            "Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;",
            "Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;",
            "Ljava/util/List<",
            "Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/CartItem;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->a:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;

    .line 71
    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->b:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Device;

    .line 72
    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->c:Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;

    .line 73
    iput-object p4, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->d:Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;

    .line 74
    iput-object p5, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->e:Ljava/util/List;

    .line 75
    iput-object p6, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->f:Ljava/util/Map;

    .line 76
    iput-object p7, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->g:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Device;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;Ljava/util/List;Ljava/util/Map;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    move-object p7, v0

    .line 77
    :cond_6
    invoke-direct/range {p0 .. p7}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;-><init>(Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Device;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->a:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;

    iget-object v3, p1, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->a:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->b:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Device;

    iget-object v3, p1, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->b:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Device;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->c:Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;

    iget-object v3, p1, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->c:Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->d:Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;

    iget-object v3, p1, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->d:Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->e:Ljava/util/List;

    iget-object v3, p1, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->e:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->f:Ljava/util/Map;

    iget-object v3, p1, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->f:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->g:Ljava/util/List;

    iget-object p1, p1, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->g:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->a:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->b:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Device;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Device;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->c:Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->d:Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->e:Ljava/util/List;

    if-nez v2, :cond_4

    move v2, v0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->f:Ljava/util/Map;

    if-nez v2, :cond_5

    move v2, v0

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->g:Ljava/util/List;

    if-nez p0, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Context(page="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->a:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->b:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Device;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", branch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->c:Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->d:Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pageAttributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->f:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", listedItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->g:Ljava/util/List;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Ltr;->m(Ljava/lang/StringBuilder;Ljava/util/List;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
