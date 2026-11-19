.class public final Lcom/dynamicyield/sdk/wrapper/core/models/search/response/NumberFacet;
.super Lcom/dynamicyield/sdk/wrapper/core/models/search/response/Facet;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/search/response/NumberFacet;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/search/response/Facet;",
        "",
        "column",
        "displayName",
        "",
        "min",
        "max",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;FF)V",
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


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:F

.field public final d:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FF)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/enums/FacetValuesType;->number:Lcom/dynamicyield/sdk/wrapper/core/enums/FacetValuesType;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/models/search/response/Facet;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/FacetValuesType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/response/NumberFacet;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/response/NumberFacet;->b:Ljava/lang/String;

    iput p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/response/NumberFacet;->c:F

    iput p4, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/response/NumberFacet;->d:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/dynamicyield/sdk/wrapper/core/models/search/response/NumberFacet;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/dynamicyield/sdk/wrapper/core/models/search/response/NumberFacet;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/response/NumberFacet;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dynamicyield/sdk/wrapper/core/models/search/response/NumberFacet;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/response/NumberFacet;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dynamicyield/sdk/wrapper/core/models/search/response/NumberFacet;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/response/NumberFacet;->c:F

    iget v3, p1, Lcom/dynamicyield/sdk/wrapper/core/models/search/response/NumberFacet;->c:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/response/NumberFacet;->d:F

    iget p1, p1, Lcom/dynamicyield/sdk/wrapper/core/models/search/response/NumberFacet;->d:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/response/NumberFacet;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/response/NumberFacet;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/response/NumberFacet;->c:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/response/NumberFacet;->d:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NumberFacet(column="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/response/NumberFacet;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/response/NumberFacet;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/response/NumberFacet;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/response/NumberFacet;->d:F

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, La;->m(Ljava/lang/StringBuilder;FC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
