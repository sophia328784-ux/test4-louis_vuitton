.class public final Lcom/vuitton/foundation/model/domain/model/common/StringResource$PluralResId;
.super Lcom/vuitton/foundation/model/domain/model/common/StringResource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/foundation/model/domain/model/common/StringResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PluralResId"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/common/StringResource$PluralResId;",
        "Lcom/vuitton/foundation/model/domain/model/common/StringResource;",
        "",
        "resId",
        "quantity",
        "",
        "",
        "formatArgs",
        "<init>",
        "(IILjava/util/List;)V",
        "domain"
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

.field public final b:I

.field public final c:Ljava/util/List;


# direct methods
.method public constructor <init>(IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vuitton/foundation/model/domain/model/common/StringResource;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/vuitton/foundation/model/domain/model/common/StringResource$PluralResId;->a:I

    iput p2, p0, Lcom/vuitton/foundation/model/domain/model/common/StringResource$PluralResId;->b:I

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/common/StringResource$PluralResId;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(IILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 14
    sget-object p3, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    .line 15
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/vuitton/foundation/model/domain/model/common/StringResource$PluralResId;-><init>(IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/common/StringResource$PluralResId;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/common/StringResource$PluralResId;

    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/common/StringResource$PluralResId;->a:I

    iget v3, p1, Lcom/vuitton/foundation/model/domain/model/common/StringResource$PluralResId;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/common/StringResource$PluralResId;->b:I

    iget v3, p1, Lcom/vuitton/foundation/model/domain/model/common/StringResource$PluralResId;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/common/StringResource$PluralResId;->c:Ljava/util/List;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/common/StringResource$PluralResId;->c:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/vuitton/foundation/model/domain/model/common/StringResource$PluralResId;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/vuitton/foundation/model/domain/model/common/StringResource$PluralResId;->b:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/common/StringResource$PluralResId;->c:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", quantity="

    const-string v1, ", formatArgs="

    iget v2, p0, Lcom/vuitton/foundation/model/domain/model/common/StringResource$PluralResId;->a:I

    iget v3, p0, Lcom/vuitton/foundation/model/domain/model/common/StringResource$PluralResId;->b:I

    const-string v4, "PluralResId(resId="

    invoke-static {v2, v3, v4, v0, v1}, Lfc;->p(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/common/StringResource$PluralResId;->c:Ljava/util/List;

    invoke-static {v0, p0, v1}, La;->o(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
