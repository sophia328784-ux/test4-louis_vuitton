.class public final Landroidx/compose/foundation/layout/FlowLayoutOverflowState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/layout/FlowLayoutOverflowState$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0081\u0008\u0018\u00002\u00020\u0001B!\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/FlowLayoutOverflowState;",
        "",
        "Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;",
        "type",
        "",
        "minLinesToShowCollapse",
        "minCrossAxisSizeToShowCollapse",
        "<init>",
        "(Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;II)V",
        "foundation-layout"
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
.field public final a:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

.field public final b:I

.field public final c:I

.field public d:Landroidx/compose/ui/layout/Measurable;

.field public e:Landroidx/compose/ui/layout/Placeable;

.field public f:Landroidx/compose/ui/layout/Measurable;

.field public g:Landroidx/compose/ui/layout/Placeable;

.field public h:Landroidx/collection/IntIntPair;

.field public i:Landroidx/collection/IntIntPair;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->a:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    iput p2, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->b:I

    iput p3, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->c:I

    return-void
.end method


# virtual methods
.method public final a(IIZ)Landroidx/collection/IntIntPair;
    .locals 4

    sget-object v0, Landroidx/compose/foundation/layout/FlowLayoutOverflowState$WhenMappings;->a:[I

    iget-object v1, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->a:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    if-eqz p3, :cond_0

    iget-object p0, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->h:Landroidx/collection/IntIntPair;

    return-object p0

    :cond_0
    add-int/2addr p1, v2

    iget p3, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->b:I

    if-lt p1, p3, :cond_1

    iget p1, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->c:I

    if-lt p2, p1, :cond_1

    iget-object p0, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->i:Landroidx/collection/IntIntPair;

    return-object p0

    :cond_1
    return-object v1

    :cond_2
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_3
    if-eqz p3, :cond_4

    iget-object p0, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->h:Landroidx/collection/IntIntPair;

    return-object p0

    :cond_4
    return-object v1
.end method

.method public final b(Landroidx/compose/ui/layout/IntrinsicMeasurable;Landroidx/compose/ui/layout/IntrinsicMeasurable;ZJ)V
    .locals 4

    if-eqz p3, :cond_0

    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Vertical:Landroidx/compose/foundation/layout/LayoutOrientation;

    :goto_0
    invoke-static {p4, p5, v0}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->a(JLandroidx/compose/foundation/layout/LayoutOrientation;)J

    move-result-wide p4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-static {p4, p5}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result v1

    sget v2, Landroidx/compose/foundation/layout/FlowLayoutKt;->a:I

    if-eqz p3, :cond_1

    invoke-interface {p1, v1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->M(I)I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-interface {p1, v1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->H(I)I

    move-result v1

    :goto_1
    if-eqz p3, :cond_2

    invoke-interface {p1, v1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->H(I)I

    move-result v2

    goto :goto_2

    :cond_2
    invoke-interface {p1, v1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->M(I)I

    move-result v2

    :goto_2
    invoke-static {v1, v2}, Landroidx/collection/IntIntPair;->a(II)J

    move-result-wide v1

    new-instance v3, Landroidx/collection/IntIntPair;

    invoke-direct {v3, v1, v2}, Landroidx/collection/IntIntPair;-><init>(J)V

    iput-object v3, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->h:Landroidx/collection/IntIntPair;

    instance-of v1, p1, Landroidx/compose/ui/layout/Measurable;

    if-eqz v1, :cond_3

    check-cast p1, Landroidx/compose/ui/layout/Measurable;

    goto :goto_3

    :cond_3
    move-object p1, v0

    :goto_3
    iput-object p1, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->d:Landroidx/compose/ui/layout/Measurable;

    iput-object v0, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->e:Landroidx/compose/ui/layout/Placeable;

    :cond_4
    if-eqz p2, :cond_8

    invoke-static {p4, p5}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result p1

    sget p4, Landroidx/compose/foundation/layout/FlowLayoutKt;->a:I

    if-eqz p3, :cond_5

    invoke-interface {p2, p1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->M(I)I

    move-result p1

    goto :goto_4

    :cond_5
    invoke-interface {p2, p1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->H(I)I

    move-result p1

    :goto_4
    if-eqz p3, :cond_6

    invoke-interface {p2, p1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->H(I)I

    move-result p3

    goto :goto_5

    :cond_6
    invoke-interface {p2, p1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->M(I)I

    move-result p3

    :goto_5
    invoke-static {p1, p3}, Landroidx/collection/IntIntPair;->a(II)J

    move-result-wide p3

    new-instance p1, Landroidx/collection/IntIntPair;

    invoke-direct {p1, p3, p4}, Landroidx/collection/IntIntPair;-><init>(J)V

    iput-object p1, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->i:Landroidx/collection/IntIntPair;

    instance-of p1, p2, Landroidx/compose/ui/layout/Measurable;

    if-eqz p1, :cond_7

    check-cast p2, Landroidx/compose/ui/layout/Measurable;

    goto :goto_6

    :cond_7
    move-object p2, v0

    :goto_6
    iput-object p2, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->f:Landroidx/compose/ui/layout/Measurable;

    iput-object v0, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->g:Landroidx/compose/ui/layout/Placeable;

    :cond_8
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    iget-object v1, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->a:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    iget-object v3, p1, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->a:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->b:I

    iget v3, p1, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget p0, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->c:I

    iget p1, p1, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->c:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->a:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->b:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget p0, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FlowLayoutOverflowState(type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->a:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", minLinesToShowCollapse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minCrossAxisSizeToShowCollapse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->c:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
