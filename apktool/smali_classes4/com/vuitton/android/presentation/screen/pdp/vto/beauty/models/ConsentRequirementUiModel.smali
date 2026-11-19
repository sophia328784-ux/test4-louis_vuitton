.class public final Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;",
        "",
        "",
        "id",
        "title",
        "",
        "isMandatory",
        "Lcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;",
        "feature",
        "Landroidx/compose/runtime/MutableState;",
        "isChecked",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;Landroidx/compose/runtime/MutableState;)V",
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
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Lcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;

.field public final e:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;->c:Z

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;->d:Lcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;->e:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;Landroidx/compose/runtime/MutableState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    .line 23
    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p5}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p5

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 24
    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;Landroidx/compose/runtime/MutableState;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;->d:Lcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;->d:Lcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;->e:Landroidx/compose/runtime/MutableState;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;->e:Landroidx/compose/runtime/MutableState;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;->c:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;->d:Lcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;->e:Landroidx/compose/runtime/MutableState;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", title="

    const-string v1, ", isMandatory="

    const-string v2, "ConsentRequirementUiModel(id="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;->d:Lcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isChecked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;->e:Landroidx/compose/runtime/MutableState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
