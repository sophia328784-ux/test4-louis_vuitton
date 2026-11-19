.class public final Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;
.super Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SlideShowSectionDto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto$$serializer;,
        Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\t\u0010\nB?\u0008\u0010\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\t\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;",
        "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;",
        "",
        "title",
        "",
        "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;",
        "slides",
        "Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;",
        "targeting",
        "<init>",
        "(Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto$Companion;

.field public static final e:[Lkotlin/Lazy;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lew;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lew;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Lkotlin/Lazy;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sput-object v2, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;->e:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 3

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v2, v0, :cond_1

    invoke-direct {p0, p1, p5}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;-><init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;->c:Ljava/util/List;

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    iput-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;->d:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    return-void

    :cond_0
    iput-object p4, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;->d:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    return-void

    :cond_1
    sget-object p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v2, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;",
            ">;",
            "Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, v0}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    iput-object p1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;->b:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;->c:Ljava/util/List;

    .line 36
    iput-object p3, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;->d:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 37
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;->c:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;->d:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;->d:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;->c:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;->d:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;->a:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", slides="

    const-string v1, ", targeting="

    const-string v2, "SlideShowSectionDto(title="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;->c:Ljava/util/List;

    invoke-static {v2, v3, v0, v4, v1}, Ld21;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;->d:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
