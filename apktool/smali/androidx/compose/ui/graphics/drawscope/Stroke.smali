.class public final Landroidx/compose/ui/graphics/drawscope/Stroke;
.super Landroidx/compose/ui/graphics/drawscope/DrawStyle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/drawscope/Stroke$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\rB;\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/drawscope/Stroke;",
        "Landroidx/compose/ui/graphics/drawscope/DrawStyle;",
        "",
        "width",
        "miter",
        "Landroidx/compose/ui/graphics/StrokeCap;",
        "cap",
        "Landroidx/compose/ui/graphics/StrokeJoin;",
        "join",
        "Landroidx/compose/ui/graphics/PathEffect;",
        "pathEffect",
        "<init>",
        "(FFIILandroidx/compose/ui/graphics/PathEffect;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "Companion",
        "ui-graphics"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final f:Landroidx/compose/ui/graphics/drawscope/Stroke$Companion;


# instance fields
.field public final a:F

.field public final b:F

.field public final c:I

.field public final d:I

.field public final e:Landroidx/compose/ui/graphics/PathEffect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/drawscope/Stroke$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/drawscope/Stroke$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/drawscope/Stroke;->f:Landroidx/compose/ui/graphics/drawscope/Stroke$Companion;

    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->a:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->a:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public synthetic constructor <init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const/4 p1, 0x0

    :cond_0
    move v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    const/high16 p2, 0x40800000    # 4.0f

    :cond_1
    move v2, p2

    and-int/lit8 p1, p6, 0x4

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    move v3, p2

    goto :goto_0

    :cond_2
    move v3, p3

    :goto_0
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    move v4, p2

    goto :goto_1

    :cond_3
    move v4, p4

    :goto_1
    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    const/4 p5, 0x0

    :cond_4
    move-object v5, p5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFIILandroidx/compose/ui/graphics/PathEffect;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p6, 0x0

    .line 40
    invoke-direct {p0, p6}, Landroidx/compose/ui/graphics/drawscope/DrawStyle;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 41
    iput p1, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->a:F

    .line 42
    iput p2, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->b:F

    .line 43
    iput p3, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->c:I

    .line 44
    iput p4, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->d:I

    .line 45
    iput-object p5, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->e:Landroidx/compose/ui/graphics/PathEffect;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/Stroke;

    iget v1, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;->a:F

    iget v3, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->a:F

    cmpg-float v1, v3, v1

    if-nez v1, :cond_3

    iget v1, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->b:F

    iget v3, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;->b:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_3

    iget v1, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;->c:I

    sget-object v3, Landroidx/compose/ui/graphics/StrokeCap;->a:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    iget v3, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->c:I

    if-ne v3, v1, :cond_3

    iget v1, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;->d:I

    sget-object v3, Landroidx/compose/ui/graphics/StrokeJoin;->a:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    iget v3, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->d:I

    if-ne v3, v1, :cond_3

    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->e:Landroidx/compose/ui/graphics/PathEffect;

    iget-object p1, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;->e:Landroidx/compose/ui/graphics/PathEffect;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0

    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->b:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    sget-object v2, Landroidx/compose/ui/graphics/StrokeCap;->a:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    iget v2, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->c:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    sget-object v2, Landroidx/compose/ui/graphics/StrokeJoin;->a:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    iget v2, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->d:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->e:Landroidx/compose/ui/graphics/PathEffect;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Stroke(width="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", miter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Unknown"

    const-string v2, "Round"

    iget v3, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->c:I

    if-nez v3, :cond_0

    sget-object v3, Landroidx/compose/ui/graphics/StrokeCap;->a:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    const-string v3, "Butt"

    goto :goto_0

    :cond_0
    sget v4, Landroidx/compose/ui/graphics/StrokeCap;->b:I

    if-ne v3, v4, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    sget v4, Landroidx/compose/ui/graphics/StrokeCap;->c:I

    if-ne v3, v4, :cond_2

    const-string v3, "Square"

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", join="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->d:I

    if-nez v3, :cond_3

    sget-object v1, Landroidx/compose/ui/graphics/StrokeJoin;->a:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    const-string v1, "Miter"

    goto :goto_1

    :cond_3
    sget v4, Landroidx/compose/ui/graphics/StrokeJoin;->b:I

    if-ne v3, v4, :cond_4

    move-object v1, v2

    goto :goto_1

    :cond_4
    sget v2, Landroidx/compose/ui/graphics/StrokeJoin;->c:I

    if-ne v3, v2, :cond_5

    const-string v1, "Bevel"

    :cond_5
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pathEffect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/Stroke;->e:Landroidx/compose/ui/graphics/PathEffect;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
