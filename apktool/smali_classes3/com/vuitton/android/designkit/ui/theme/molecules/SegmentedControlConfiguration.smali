.class public final Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration$ItemConfiguration;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0081\u0008\u0018\u00002\u00020\u0001:\u0001\u000cB/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;",
        "",
        "Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration$ItemConfiguration;",
        "selected",
        "unselected",
        "Landroidx/compose/ui/graphics/Shape;",
        "radius",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "itemPadding",
        "componentPadding",
        "<init>",
        "(Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration$ItemConfiguration;Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration$ItemConfiguration;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/PaddingValues;)V",
        "ItemConfiguration",
        "system"
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
.field public final a:Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration$ItemConfiguration;

.field public final b:Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration$ItemConfiguration;

.field public final c:Landroidx/compose/ui/graphics/Shape;

.field public final d:Landroidx/compose/foundation/layout/PaddingValues;

.field public final e:Landroidx/compose/foundation/layout/PaddingValues;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration$ItemConfiguration;Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration$ItemConfiguration;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/PaddingValues;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;->a:Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration$ItemConfiguration;

    iput-object p2, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;->b:Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration$ItemConfiguration;

    iput-object p3, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;->c:Landroidx/compose/ui/graphics/Shape;

    iput-object p4, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;->d:Landroidx/compose/foundation/layout/PaddingValues;

    iput-object p5, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;->e:Landroidx/compose/foundation/layout/PaddingValues;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;

    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;->a:Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration$ItemConfiguration;

    iget-object v3, p1, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;->a:Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration$ItemConfiguration;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;->b:Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration$ItemConfiguration;

    iget-object v3, p1, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;->b:Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration$ItemConfiguration;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;->c:Landroidx/compose/ui/graphics/Shape;

    iget-object v3, p1, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;->c:Landroidx/compose/ui/graphics/Shape;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;->d:Landroidx/compose/foundation/layout/PaddingValues;

    iget-object v3, p1, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;->d:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;->e:Landroidx/compose/foundation/layout/PaddingValues;

    iget-object p1, p1, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;->e:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;->a:Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration$ItemConfiguration;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;->b:Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration$ItemConfiguration;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;->c:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;->d:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;->e:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SegmentedControlConfiguration(selected="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;->a:Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration$ItemConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", unselected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;->b:Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration$ItemConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;->c:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", itemPadding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;->d:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", componentPadding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;->e:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
