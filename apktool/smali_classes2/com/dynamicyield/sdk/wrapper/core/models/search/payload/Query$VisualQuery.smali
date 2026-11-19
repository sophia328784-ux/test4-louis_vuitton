.class public final Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery;
.super Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VisualQuery"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery$$serializer;,
        Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0010\u0008\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\t\u0010\nB?\u0008\u0010\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\t\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query;",
        "",
        "imageBase64",
        "",
        "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Filter;",
        "filters",
        "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions;",
        "sortBy",
        "<init>",
        "(Ljava/lang/String;Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery$Companion;

.field public static final d:[Lkotlin/Lazy;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;

.field public final c:Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lwq0;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lwq0;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    new-array v2, v3, [Lkotlin/Lazy;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sput-object v2, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery;->d:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p5, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p5, :cond_2

    invoke-direct {p0, v0}, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery;->a:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_0

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery;->b:Ljava/util/List;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery;->b:Ljava/util/List;

    :goto_0
    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_1

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery;->c:Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions;

    return-void

    :cond_1
    iput-object p4, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery;->c:Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions;

    return-void

    :cond_2
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery$$serializer;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Filter;",
            ">;",
            "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0}, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery;->c:Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 41
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery;->b:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery;->c:Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions;

    iget-object p1, p1, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery;->c:Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery;->b:Ljava/util/List;

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery;->c:Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VisualQuery(imageBase64="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", filters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sortBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery;->c:Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
