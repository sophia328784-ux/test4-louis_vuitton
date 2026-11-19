.class public final Landroidx/compose/ui/graphics/vector/VectorPath;
.super Landroidx/compose/ui/graphics/vector/VectorNode;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001B\u009b\u0001\u0008\u0000\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0012\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/vector/VectorPath;",
        "Landroidx/compose/ui/graphics/vector/VectorNode;",
        "",
        "name",
        "",
        "Landroidx/compose/ui/graphics/vector/PathNode;",
        "pathData",
        "Landroidx/compose/ui/graphics/PathFillType;",
        "pathFillType",
        "Landroidx/compose/ui/graphics/Brush;",
        "fill",
        "",
        "fillAlpha",
        "stroke",
        "strokeAlpha",
        "strokeLineWidth",
        "Landroidx/compose/ui/graphics/StrokeCap;",
        "strokeLineCap",
        "Landroidx/compose/ui/graphics/StrokeJoin;",
        "strokeLineJoin",
        "strokeLineMiter",
        "trimPathStart",
        "trimPathEnd",
        "trimPathOffset",
        "<init>",
        "(Ljava/lang/String;Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "ui"
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
.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:I

.field public final e:Landroidx/compose/ui/graphics/Brush;

.field public final f:F

.field public final g:Landroidx/compose/ui/graphics/Brush;

.field public final h:F

.field public final i:F

.field public final j:I

.field public final k:I

.field public final l:F

.field public final m:F

.field public final n:F

.field public final o:F


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 18

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const-string v1, ""

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    :goto_0
    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object/from16 v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    move v7, v4

    goto :goto_2

    :cond_2
    move/from16 v7, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v8, v2

    goto :goto_3

    :cond_3
    move-object/from16 v8, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move v9, v4

    goto :goto_4

    :cond_4
    move/from16 v9, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    move v10, v2

    goto :goto_5

    :cond_5
    move/from16 v10, p8

    :goto_5
    and-int/lit16 v1, v0, 0x100

    const/4 v5, 0x0

    if-eqz v1, :cond_6

    sget-object v1, Landroidx/compose/ui/graphics/vector/VectorKt;->a:Lkotlin/collections/EmptyList;

    move v11, v5

    goto :goto_6

    :cond_6
    move/from16 v11, p9

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    sget-object v1, Landroidx/compose/ui/graphics/vector/VectorKt;->a:Lkotlin/collections/EmptyList;

    move v12, v5

    goto :goto_7

    :cond_7
    move/from16 v12, p10

    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    const/high16 v1, 0x40800000    # 4.0f

    move v13, v1

    goto :goto_8

    :cond_8
    move/from16 v13, p11

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    move v14, v2

    goto :goto_9

    :cond_9
    move/from16 v14, p12

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    move v15, v4

    goto :goto_a

    :cond_a
    move/from16 v15, p13

    :goto_a
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_b

    move/from16 v16, v2

    goto :goto_b

    :cond_b
    move/from16 v16, p14

    :goto_b
    const/16 v17, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-direct/range {v2 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;-><init>(Ljava/lang/String;Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/VectorNode;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 125
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->b:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->c:Ljava/util/List;

    .line 127
    iput p3, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->d:I

    .line 128
    iput-object p4, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->e:Landroidx/compose/ui/graphics/Brush;

    .line 129
    iput p5, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->f:F

    .line 130
    iput-object p6, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->g:Landroidx/compose/ui/graphics/Brush;

    .line 131
    iput p7, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->h:F

    .line 132
    iput p8, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->i:F

    .line 133
    iput p9, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->j:I

    .line 134
    iput p10, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->k:I

    .line 135
    iput p11, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->l:F

    .line 136
    iput p12, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->m:F

    .line 137
    iput p13, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->n:F

    .line 138
    iput p14, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->o:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const-class v2, Landroidx/compose/ui/graphics/vector/VectorPath;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Landroidx/compose/ui/graphics/vector/VectorPath;

    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->b:Ljava/lang/String;

    iget-object v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->e:Landroidx/compose/ui/graphics/Brush;

    iget-object v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->e:Landroidx/compose/ui/graphics/Brush;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->f:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->f:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_6

    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->g:Landroidx/compose/ui/graphics/Brush;

    iget-object v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->g:Landroidx/compose/ui/graphics/Brush;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->h:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->h:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_6

    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->i:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->i:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_6

    iget v2, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->j:I

    sget-object v3, Landroidx/compose/ui/graphics/StrokeCap;->a:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    iget v3, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->j:I

    if-ne v3, v2, :cond_6

    iget v2, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->k:I

    sget-object v3, Landroidx/compose/ui/graphics/StrokeJoin;->a:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    iget v3, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->k:I

    if-ne v3, v2, :cond_6

    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->l:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->l:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_6

    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->m:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->m:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_6

    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->n:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->n:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_6

    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->o:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->o:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_6

    iget v2, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->d:I

    sget-object v3, Landroidx/compose/ui/graphics/PathFillType;->a:Landroidx/compose/ui/graphics/PathFillType$Companion;

    iget v3, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->d:I

    if-ne v3, v2, :cond_6

    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->c:Ljava/util/List;

    iget-object p1, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->c:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->c:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->e:Landroidx/compose/ui/graphics/Brush;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget v3, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->f:F

    invoke-static {v0, v1, v3}, Lpq0;->b(IIF)I

    move-result v0

    iget-object v3, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->g:Landroidx/compose/ui/graphics/Brush;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->h:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->i:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    sget-object v2, Landroidx/compose/ui/graphics/StrokeCap;->a:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->j:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    sget-object v2, Landroidx/compose/ui/graphics/StrokeJoin;->a:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->k:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->l:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->m:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->n:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->o:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    sget-object v1, Landroidx/compose/ui/graphics/PathFillType;->a:Landroidx/compose/ui/graphics/PathFillType$Companion;

    iget p0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->d:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
