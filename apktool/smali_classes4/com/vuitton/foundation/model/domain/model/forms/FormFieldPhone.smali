.class public final Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;
.super Lcom/vuitton/foundation/model/domain/model/forms/FormFieldGeneric;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;",
        "Lcom/vuitton/foundation/model/domain/model/forms/FormFieldGeneric;",
        "",
        "isMandatory",
        "",
        "order",
        "Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;",
        "sectionType",
        "maxCount",
        "minCount",
        "",
        "Lcom/vuitton/foundation/model/domain/model/forms/FormField;",
        "phoneFieldList",
        "<init>",
        "(ZILcom/vuitton/foundation/model/domain/model/forms/FormSectionType;IILjava/util/List;)V",
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
.field public final b:Z

.field public final c:I

.field public final d:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

.field public final e:I

.field public final f:I

.field public final g:Ljava/util/List;


# direct methods
.method public constructor <init>(ZILcom/vuitton/foundation/model/domain/model/forms/FormSectionType;IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;",
            "II",
            "Ljava/util/List<",
            "Lcom/vuitton/foundation/model/domain/model/forms/FormField;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldGeneric;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-boolean p1, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->b:Z

    iput p2, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->c:I

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->d:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    iput p4, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->e:I

    iput p5, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->f:I

    iput-object p6, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->c:I

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;

    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->b:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->c:I

    iget v3, p1, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->c:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->d:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->d:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->e:I

    iget v3, p1, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->e:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->f:I

    iget v3, p1, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->f:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->g:Ljava/util/List;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->g:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->c:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->d:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->e:I

    invoke-static {v0, v2, v1}, Ltr;->b(III)I

    move-result v0

    iget v2, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->f:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->g:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FormFieldPhone(isMandatory="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sectionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->d:Lcom/vuitton/foundation/model/domain/model/forms/FormSectionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phoneFieldList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/forms/FormFieldPhone;->g:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
