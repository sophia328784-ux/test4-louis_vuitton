.class public final Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel$ProductLine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProductLine"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel$ProductLine;",
        "Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel;",
        "",
        "blockIndex",
        "",
        "productIndices",
        "globalStartIndex",
        "<init>",
        "(ILjava/util/List;I)V",
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
.field public final a:I

.field public final b:Ljava/util/List;

.field public final c:I


# direct methods
.method public constructor <init>(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel$ProductLine;->a:I

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel$ProductLine;->b:Ljava/util/List;

    iput p3, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel$ProductLine;->c:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel$ProductLine;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel$ProductLine;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel$ProductLine;->a:I

    iget v3, p1, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel$ProductLine;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel$ProductLine;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel$ProductLine;->b:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel$ProductLine;->c:I

    iget p1, p1, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel$ProductLine;->c:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel$ProductLine;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel$ProductLine;->b:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget p0, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel$ProductLine;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProductLine(blockIndex="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel$ProductLine;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", productIndices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel$ProductLine;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", globalStartIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget p0, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel$ProductLine;->c:I

    invoke-static {p0, v1, v0}, La;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
