.class public final Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0008\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;",
        "",
        "",
        "id",
        "title",
        "",
        "isMandatory",
        "Lcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;",
        "feature",
        "isChecked",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;Z)V",
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
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Lcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;->c:Z

    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;->d:Lcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;

    iput-boolean p5, p0, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;Z)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;->d:Lcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;->d:Lcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;->e:Z

    iget-boolean p1, p1, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;->e:Z

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;->c:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;->d:Lcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;->e:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", title="

    const-string v1, ", isMandatory="

    const-string v2, "ConsentRequirement(id="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;->d:Lcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isChecked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;->e:Z

    invoke-static {v0, p0, v1}, La;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
