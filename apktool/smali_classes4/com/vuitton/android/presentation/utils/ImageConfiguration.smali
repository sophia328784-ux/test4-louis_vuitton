.class public final Lcom/vuitton/android/presentation/utils/ImageConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background;,
        Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0002\u0008\tB\u001f\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/utils/ImageConfiguration;",
        "",
        "Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;",
        "size",
        "Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background;",
        "background",
        "<init>",
        "(Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background;)V",
        "Background",
        "Size",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;

.field public final b:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/vuitton/android/presentation/utils/ImageConfiguration;-><init>(Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/utils/ImageConfiguration;->a:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;

    iput-object p2, p0, Lcom/vuitton/android/presentation/utils/ImageConfiguration;->b:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/vuitton/android/presentation/utils/ImageConfiguration;-><init>(Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/utils/ImageConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/utils/ImageConfiguration;

    iget-object v1, p0, Lcom/vuitton/android/presentation/utils/ImageConfiguration;->a:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;

    iget-object v3, p1, Lcom/vuitton/android/presentation/utils/ImageConfiguration;->a:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/vuitton/android/presentation/utils/ImageConfiguration;->b:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background;

    iget-object p1, p1, Lcom/vuitton/android/presentation/utils/ImageConfiguration;->b:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/presentation/utils/ImageConfiguration;->a:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/presentation/utils/ImageConfiguration;->b:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImageConfiguration(size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/utils/ImageConfiguration;->a:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", background="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/utils/ImageConfiguration;->b:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
