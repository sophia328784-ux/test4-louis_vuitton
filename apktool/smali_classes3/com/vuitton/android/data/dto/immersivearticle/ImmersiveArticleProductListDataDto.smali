.class public final Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto$$serializer;,
        Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B%\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nB?\u0008\u0010\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\t\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto;",
        "",
        "",
        "Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto;",
        "products",
        "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductImageStyleDto;",
        "imageStyle",
        "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductDisplayStyleDto;",
        "displayStyle",
        "<init>",
        "(Ljava/util/List;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductImageStyleDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductDisplayStyleDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/util/List;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductImageStyleDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductDisplayStyleDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto$Companion;

.field public static final d:[Lkotlin/Lazy;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductImageStyleDto;

.field public final c:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductDisplayStyleDto;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Ll30;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ll30;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    new-instance v3, Ll30;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ll30;-><init>(I)V

    invoke-static {v0, v3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    new-instance v5, Ll30;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Ll30;-><init>(I)V

    invoke-static {v0, v5}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v5, 0x3

    new-array v5, v5, [Lkotlin/Lazy;

    aput-object v1, v5, v2

    aput-object v3, v5, v4

    aput-object v0, v5, v6

    sput-object v5, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto;->d:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductImageStyleDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductDisplayStyleDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p1, 0x7

    const/4 v0, 0x7

    if-ne v0, p5, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto;->b:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductImageStyleDto;

    iput-object p4, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto;->c:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductDisplayStyleDto;

    return-void

    :cond_0
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto$$serializer;->a:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/util/List;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductImageStyleDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductDisplayStyleDto;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto;",
            ">;",
            "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductImageStyleDto;",
            "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductDisplayStyleDto;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto;->a:Ljava/util/List;

    .line 28
    iput-object p2, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto;->b:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductImageStyleDto;

    .line 29
    iput-object p3, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto;->c:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductDisplayStyleDto;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto;->a:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto;->b:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductImageStyleDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto;->b:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductImageStyleDto;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto;->c:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductDisplayStyleDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto;->c:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductDisplayStyleDto;

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto;->b:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductImageStyleDto;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto;->c:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductDisplayStyleDto;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImmersiveArticleProductListDataDto(products="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto;->b:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductImageStyleDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto;->c:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductDisplayStyleDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
