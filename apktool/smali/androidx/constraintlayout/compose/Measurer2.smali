.class public Landroidx/constraintlayout/compose/Measurer2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;
.implements Landroidx/constraintlayout/compose/DesignInfoProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/compose/Measurer2$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0011\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/constraintlayout/compose/Measurer2;",
        "Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;",
        "Landroidx/constraintlayout/compose/DesignInfoProvider;",
        "Landroidx/compose/ui/unit/Density;",
        "density",
        "<init>",
        "(Landroidx/compose/ui/unit/Density;)V",
        "constraintlayout-compose_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

.field public b:Ljava/util/Map;

.field public final c:Ljava/util/LinkedHashMap;

.field public final d:Ljava/util/LinkedHashMap;

.field public final e:Landroidx/constraintlayout/compose/State;

.field public final f:[I

.field public final g:[I


# direct methods
.method public constructor <init>(Landroidx/compose/ui/unit/Density;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>(II)V

    iput-object p0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->A0:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->y0:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    iput-object p0, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->f:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    iput-object v0, p0, Landroidx/constraintlayout/compose/Measurer2;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/compose/Measurer2;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/compose/Measurer2;->c:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/compose/Measurer2;->d:Ljava/util/LinkedHashMap;

    new-instance v0, Landroidx/constraintlayout/compose/State;

    invoke-direct {v0, p1}, Landroidx/constraintlayout/compose/State;-><init>(Landroidx/compose/ui/unit/Density;)V

    iput-object v0, p0, Landroidx/constraintlayout/compose/Measurer2;->e:Landroidx/constraintlayout/compose/State;

    const/4 p1, 0x2

    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/constraintlayout/compose/Measurer2;->f:[I

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/constraintlayout/compose/Measurer2;->g:[I

    return-void
.end method

.method public static d(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;IIIZZI[I)V
    .locals 5

    sget-object v0, Landroidx/constraintlayout/compose/Measurer2$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 p1, 0x4

    if-ne v0, p1, :cond_0

    aput p6, p7, v1

    aput p6, p7, v2

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not supported"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-nez p5, :cond_4

    if-eq p3, v2, :cond_2

    if-ne p3, v3, :cond_3

    :cond_2
    if-eq p3, v3, :cond_4

    if-ne p2, v2, :cond_4

    if-eqz p4, :cond_3

    goto :goto_0

    :cond_3
    move p0, v1

    goto :goto_1

    :cond_4
    :goto_0
    move p0, v2

    :goto_1
    if-eqz p0, :cond_5

    move p2, p1

    goto :goto_2

    :cond_5
    move p2, v1

    :goto_2
    aput p2, p7, v1

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    move p1, p6

    :goto_3
    aput p1, p7, v2

    return-void

    :cond_7
    aput v1, p7, v1

    aput p6, p7, v2

    return-void

    :cond_8
    aput p1, p7, v1

    aput p1, p7, v2

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l:Ljava/lang/String;

    iget-object v6, v0, Landroidx/constraintlayout/compose/Measurer2;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Integer;

    iget-object v8, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget v9, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->c:I

    iget v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    iget v11, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->j:I

    const/4 v12, 0x1

    if-eqz v7, :cond_0

    aget-object v13, v7, v12

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    goto :goto_0

    :cond_0
    move v13, v3

    :goto_0
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    move-result v14

    if-ne v13, v14, :cond_1

    move v13, v12

    goto :goto_1

    :cond_1
    move v13, v12

    move v12, v3

    :goto_1
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F()Z

    move-result v14

    iget-object v15, v0, Landroidx/constraintlayout/compose/Measurer2;->e:Landroidx/constraintlayout/compose/State;

    move/from16 v17, v14

    iget-wide v13, v15, Landroidx/constraintlayout/compose/State;->l:J

    invoke-static {v13, v14}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v14

    move-object v13, v15

    iget-object v15, v0, Landroidx/constraintlayout/compose/Measurer2;->f:[I

    move/from16 v18, v3

    move-object v3, v13

    move/from16 v13, v17

    const/16 v16, 0x1

    invoke-static/range {v8 .. v15}, Landroidx/constraintlayout/compose/Measurer2;->d(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;IIIZZI[I)V

    iget-object v8, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget v9, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->d:I

    iget v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:I

    iget v11, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->j:I

    if-eqz v7, :cond_2

    aget-object v7, v7, v18

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_2

    :cond_2
    move/from16 v7, v18

    :goto_2
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()I

    move-result v12

    if-ne v7, v12, :cond_3

    move/from16 v23, v16

    goto :goto_3

    :cond_3
    move/from16 v23, v18

    :goto_3
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G()Z

    move-result v24

    iget-wide v12, v3, Landroidx/constraintlayout/compose/State;->l:J

    invoke-static {v12, v13}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result v25

    iget-object v7, v0, Landroidx/constraintlayout/compose/Measurer2;->g:[I

    move-object/from16 v26, v7

    move-object/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    move/from16 v22, v11

    invoke-static/range {v19 .. v26}, Landroidx/constraintlayout/compose/Measurer2;->d(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;IIIZZI[I)V

    iget-object v7, v0, Landroidx/constraintlayout/compose/Measurer2;->f:[I

    aget v8, v7, v18

    aget v7, v7, v16

    iget-object v9, v0, Landroidx/constraintlayout/compose/Measurer2;->g:[I

    aget v10, v9, v18

    aget v9, v9, v16

    invoke-static {v8, v7, v10, v9}, Landroidx/compose/ui/unit/ConstraintsKt;->a(IIII)J

    move-result-wide v7

    iget v9, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->j:I

    const/4 v10, 0x2

    move/from16 v13, v16

    if-eq v9, v13, :cond_4

    if-eq v9, v10, :cond_4

    iget-object v9, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v11, :cond_4

    iget v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    if-nez v9, :cond_4

    iget-object v9, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v11, :cond_4

    iget v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:I

    if-eqz v9, :cond_b

    :cond_4
    invoke-virtual {v0, v1, v7, v8}, Landroidx/constraintlayout/compose/Measurer2;->c(Landroidx/constraintlayout/core/widgets/ConstraintWidget;J)J

    move-result-wide v11

    move/from16 v9, v18

    iput-boolean v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g:Z

    const/16 v9, 0x20

    shr-long v13, v11, v9

    long-to-int v9, v13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v17, 0x0

    if-lez v14, :cond_5

    goto :goto_4

    :cond_5
    move-object/from16 v15, v17

    :goto_4
    iget v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    if-lez v14, :cond_6

    move-object/from16 v14, v19

    goto :goto_5

    :cond_6
    move-object/from16 v14, v17

    :goto_5
    invoke-static {v13, v15, v14}, Lkotlin/ranges/RangesKt;->g(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    const-wide v14, 0xffffffffL

    and-long/2addr v11, v14

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    if-lez v14, :cond_7

    goto :goto_6

    :cond_7
    move-object/from16 v15, v17

    :goto_6
    iget v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    if-lez v14, :cond_8

    move-object/from16 v14, v19

    goto :goto_7

    :cond_8
    move-object/from16 v14, v17

    :goto_7
    invoke-static {v12, v15, v14}, Lkotlin/ranges/RangesKt;->g(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    if-eq v13, v9, :cond_9

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    move-result v9

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result v7

    invoke-static {v13, v13, v9, v7}, Landroidx/compose/ui/unit/ConstraintsKt;->a(IIII)J

    move-result-wide v7

    const/4 v9, 0x1

    goto :goto_8

    :cond_9
    const/4 v9, 0x0

    :goto_8
    if-eq v12, v11, :cond_a

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    move-result v9

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v7

    invoke-static {v9, v7, v12, v12}, Landroidx/compose/ui/unit/ConstraintsKt;->a(IIII)J

    move-result-wide v7

    const/4 v12, 0x1

    goto :goto_9

    :cond_a
    move v12, v9

    :goto_9
    if-eqz v12, :cond_b

    invoke-virtual {v0, v1, v7, v8}, Landroidx/constraintlayout/compose/Measurer2;->c(Landroidx/constraintlayout/core/widgets/ConstraintWidget;J)J

    const/4 v9, 0x0

    iput-boolean v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g:Z

    :cond_b
    iget-object v0, v0, Landroidx/constraintlayout/compose/Measurer2;->b:Ljava/util/Map;

    iget-object v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:Ljava/lang/Object;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/Placeable;

    if-eqz v0, :cond_c

    iget v7, v0, Landroidx/compose/ui/layout/Placeable;->b:I

    goto :goto_a

    :cond_c
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()I

    move-result v7

    :goto_a
    iput v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->e:I

    if-eqz v0, :cond_d

    iget v7, v0, Landroidx/compose/ui/layout/Placeable;->c:I

    goto :goto_b

    :cond_d
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    move-result v7

    :goto_b
    iput v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->f:I

    const/high16 v7, -0x80000000

    if-eqz v0, :cond_11

    iget-object v8, v3, Landroidx/constraintlayout/core/state/State;->i:Ljava/util/ArrayList;

    iget-boolean v9, v3, Landroidx/constraintlayout/core/state/State;->j:Z

    if-eqz v9, :cond_10

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iget-object v9, v3, Landroidx/constraintlayout/core/state/State;->h:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_e
    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    iget-object v12, v3, Landroidx/constraintlayout/core/state/State;->c:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/core/state/Reference;

    invoke-interface {v11}, Landroidx/constraintlayout/core/state/Reference;->b()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v11

    if-eqz v11, :cond_e

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_f
    const/4 v11, 0x0

    iput-boolean v11, v3, Landroidx/constraintlayout/core/state/State;->j:Z

    :cond_10
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Landroidx/compose/ui/layout/AlignmentLineKt;->a:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    invoke-interface {v0, v1}, Landroidx/compose/ui/layout/Measured;->W(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v0

    goto :goto_d

    :cond_11
    move v0, v7

    :goto_d
    if-eq v0, v7, :cond_12

    const/4 v12, 0x1

    goto :goto_e

    :cond_12
    const/4 v12, 0x0

    :goto_e
    iput-boolean v12, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->h:Z

    iput v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->g:I

    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v18, 0x0

    aput-object v4, v0, v18

    const/16 v16, 0x1

    aput-object v4, v0, v16

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v10

    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_13
    const/16 v18, 0x0

    :goto_f
    check-cast v0, [Ljava/lang/Integer;

    iget v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v18

    iget v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v16, 0x1

    aput-object v1, v0, v16

    iget v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v10

    iget v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->e:I

    iget v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->c:I

    if-ne v0, v1, :cond_15

    iget v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->f:I

    iget v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->d:I

    if-eq v0, v1, :cond_14

    goto :goto_10

    :cond_14
    move/from16 v3, v18

    goto :goto_11

    :cond_15
    :goto_10
    move/from16 v3, v16

    :goto_11
    iput-boolean v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->i:Z

    return-void
.end method

.method public final c(Landroidx/constraintlayout/core/widgets/ConstraintWidget;J)J
    .locals 4

    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:Ljava/lang/Object;

    instance-of v1, p1, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->f(J)Z

    move-result p0

    const/high16 v0, -0x80000000

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->d(J)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v0

    goto :goto_0

    :cond_1
    move p0, v2

    :goto_0
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->e(J)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->c(J)Z

    move-result v1

    if-eqz v1, :cond_3

    move v2, v0

    :cond_3
    :goto_1
    check-cast p1, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v0

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result p2

    invoke-virtual {p1, p0, v0, v2, p2}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->a0(IIII)V

    iget p0, p1, Landroidx/constraintlayout/core/widgets/VirtualLayout;->F0:I

    iget p1, p1, Landroidx/constraintlayout/core/widgets/VirtualLayout;->G0:I

    invoke-static {p0, p1}, Landroidx/collection/IntIntPair;->a(II)J

    move-result-wide p0

    return-wide p0

    :cond_4
    instance-of p1, v0, Landroidx/compose/ui/layout/Measurable;

    if-eqz p1, :cond_5

    move-object p1, v0

    check-cast p1, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {p1, p2, p3}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p1

    iget-object p0, p0, Landroidx/constraintlayout/compose/Measurer2;->b:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p0, p1, Landroidx/compose/ui/layout/Placeable;->b:I

    iget p1, p1, Landroidx/compose/ui/layout/Placeable;->c:I

    invoke-static {p0, p1}, Landroidx/collection/IntIntPair;->a(II)J

    move-result-wide p0

    return-wide p0

    :cond_5
    invoke-static {v2, v2}, Landroidx/collection/IntIntPair;->a(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public final e(Landroidx/compose/ui/layout/Placeable$PlacementScope;Ljava/util/List;Ljava/util/Map;)V
    .locals 12

    iput-object p3, p0, Landroidx/constraintlayout/compose/Measurer2;->b:Ljava/util/Map;

    iget-object p3, p0, Landroidx/constraintlayout/compose/Measurer2;->d:Ljava/util/LinkedHashMap;

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/compose/Measurer2;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->w0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:Ljava/lang/Object;

    instance-of v7, v6, Landroidx/compose/ui/layout/Measurable;

    if-eqz v7, :cond_1

    new-instance v7, Landroidx/constraintlayout/core/state/WidgetFrame;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget-object v8, v5, Landroidx/constraintlayout/core/state/WidgetFrame;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()I

    move-result v9

    iput v9, v5, Landroidx/constraintlayout/core/state/WidgetFrame;->b:I

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()I

    move-result v9

    iput v9, v5, Landroidx/constraintlayout/core/state/WidgetFrame;->c:I

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()I

    move-result v9

    iget v10, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    add-int/2addr v9, v10

    iput v9, v5, Landroidx/constraintlayout/core/state/WidgetFrame;->d:I

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()I

    move-result v9

    iget v10, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:I

    add-int/2addr v9, v10

    iput v9, v5, Landroidx/constraintlayout/core/state/WidgetFrame;->e:I

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k:Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-virtual {v5, v8}, Landroidx/constraintlayout/core/state/WidgetFrame;->c(Landroidx/constraintlayout/core/state/WidgetFrame;)V

    :cond_0
    invoke-direct {v7, v5}, Landroidx/constraintlayout/core/state/WidgetFrame;-><init>(Landroidx/constraintlayout/core/state/WidgetFrame;)V

    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v6}, Landroidx/constraintlayout/compose/MeasurerKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_8

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v4}, Landroidx/constraintlayout/compose/MeasurerKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/state/WidgetFrame;

    if-nez v5, :cond_3

    :goto_2
    move-object v6, p1

    goto/16 :goto_5

    :cond_3
    iget-object v6, p0, Landroidx/constraintlayout/compose/Measurer2;->b:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroidx/compose/ui/layout/Placeable;

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    sget-object v4, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v5, Landroidx/constraintlayout/core/state/WidgetFrame;->q:I

    const/16 v6, 0x8

    if-ne v4, v6, :cond_5

    goto :goto_2

    :cond_5
    iget v4, v5, Landroidx/constraintlayout/core/state/WidgetFrame;->h:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, v5, Landroidx/constraintlayout/core/state/WidgetFrame;->i:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, v5, Landroidx/constraintlayout/core/state/WidgetFrame;->j:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, v5, Landroidx/constraintlayout/core/state/WidgetFrame;->k:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, v5, Landroidx/constraintlayout/core/state/WidgetFrame;->l:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, v5, Landroidx/constraintlayout/core/state/WidgetFrame;->m:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, v5, Landroidx/constraintlayout/core/state/WidgetFrame;->n:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, v5, Landroidx/constraintlayout/core/state/WidgetFrame;->o:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, v5, Landroidx/constraintlayout/core/state/WidgetFrame;->p:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, v5, Landroidx/constraintlayout/core/state/WidgetFrame;->b:I

    iget v5, v5, Landroidx/constraintlayout/core/state/WidgetFrame;->c:I

    int-to-long v8, v4

    const/16 v4, 0x20

    shl-long/2addr v8, v4

    int-to-long v4, v5

    const-wide v10, 0xffffffffL

    and-long/2addr v4, v10

    or-long/2addr v4, v8

    invoke-static {p1, v7, v4, v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->u(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    goto :goto_2

    :cond_6
    new-instance v11, Landroidx/constraintlayout/compose/ConstraintLayoutKt$placeWithFrameTransform$layerBlock$1;

    invoke-direct {v11, v5}, Landroidx/constraintlayout/compose/ConstraintLayoutKt$placeWithFrameTransform$layerBlock$1;-><init>(Landroidx/constraintlayout/core/state/WidgetFrame;)V

    iget v8, v5, Landroidx/constraintlayout/core/state/WidgetFrame;->b:I

    iget v9, v5, Landroidx/constraintlayout/core/state/WidgetFrame;->c:I

    iget v4, v5, Landroidx/constraintlayout/core/state/WidgetFrame;->m:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    :goto_3
    move-object v6, p1

    move v10, v4

    goto :goto_4

    :cond_7
    iget v4, v5, Landroidx/constraintlayout/core/state/WidgetFrame;->m:F

    goto :goto_3

    :goto_4
    invoke-virtual/range {v6 .. v11}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->E(Landroidx/compose/ui/layout/Placeable;IIFLkotlin/jvm/functions/Function1;)V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    move-object p1, v6

    goto/16 :goto_1

    :cond_8
    sget-object p0, Landroidx/constraintlayout/compose/LayoutInfoFlags;->BOUNDS:Landroidx/constraintlayout/compose/LayoutInfoFlags;

    if-nez p0, :cond_18

    const-string p0, "{   root: {interpolated: { left:  0,  top:  0,"

    invoke-static {p0}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "  right:   "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ,"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "  bottom:  "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " } }"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->w0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const-string v0, " }"

    if-eqz p2, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:Ljava/lang/Object;

    instance-of v3, v1, Landroidx/compose/ui/layout/Measurable;

    const-string v4, "}, "

    const-string v5, ": {"

    const-string v6, " "

    if-nez v3, :cond_b

    instance-of v1, p2, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Landroidx/constraintlayout/core/widgets/Guideline;

    iget v1, p2, Landroidx/constraintlayout/core/widgets/Guideline;->A0:I

    if-nez v1, :cond_a

    const-string v1, " type: \'hGuideline\', "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_a
    const-string v1, " type: \'vGuideline\', "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    const-string v1, " interpolated: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " { left: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", top: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", right: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()I

    move-result v3

    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", bottom: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()I

    move-result v3

    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_b
    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v0, :cond_e

    move-object v0, v1

    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_c

    invoke-static {v0}, Landroidx/constraintlayout/compose/ConstraintLayoutTagKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/String;

    move-result-object v7

    :cond_c
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_d
    move-object v0, v3

    :goto_8
    iput-object v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l:Ljava/lang/String;

    :cond_e
    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v1}, Landroidx/constraintlayout/compose/MeasurerKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/state/WidgetFrame;

    if-eqz v0, :cond_f

    iget-object v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_f

    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k:Landroidx/constraintlayout/core/state/WidgetFrame;

    :cond_f
    if-nez v3, :cond_10

    goto/16 :goto_6

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " interpolated : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->r:Ljava/util/HashMap;

    const-string v0, "{\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "left"

    iget v1, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->b:I

    invoke-static {v1, v0, p0}, Landroidx/constraintlayout/core/state/WidgetFrame;->b(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v0, "top"

    iget v1, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->c:I

    invoke-static {v1, v0, p0}, Landroidx/constraintlayout/core/state/WidgetFrame;->b(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v0, "right"

    iget v1, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->d:I

    invoke-static {v1, v0, p0}, Landroidx/constraintlayout/core/state/WidgetFrame;->b(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v0, "bottom"

    iget v1, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->e:I

    invoke-static {v1, v0, p0}, Landroidx/constraintlayout/core/state/WidgetFrame;->b(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v0, "pivotX"

    iget v1, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->f:F

    invoke-static {v1, v0, p0}, Landroidx/constraintlayout/core/state/WidgetFrame;->a(FLjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v0, "pivotY"

    iget v1, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->g:F

    invoke-static {v1, v0, p0}, Landroidx/constraintlayout/core/state/WidgetFrame;->a(FLjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v0, "rotationX"

    iget v1, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->h:F

    invoke-static {v1, v0, p0}, Landroidx/constraintlayout/core/state/WidgetFrame;->a(FLjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v0, "rotationY"

    iget v1, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->i:F

    invoke-static {v1, v0, p0}, Landroidx/constraintlayout/core/state/WidgetFrame;->a(FLjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v0, "rotationZ"

    iget v1, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->j:F

    invoke-static {v1, v0, p0}, Landroidx/constraintlayout/core/state/WidgetFrame;->a(FLjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v0, "translationX"

    iget v1, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->k:F

    invoke-static {v1, v0, p0}, Landroidx/constraintlayout/core/state/WidgetFrame;->a(FLjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v0, "translationY"

    iget v1, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->l:F

    invoke-static {v1, v0, p0}, Landroidx/constraintlayout/core/state/WidgetFrame;->a(FLjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v0, "translationZ"

    iget v1, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->m:F

    invoke-static {v1, v0, p0}, Landroidx/constraintlayout/core/state/WidgetFrame;->a(FLjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v0, "scaleX"

    iget v1, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->n:F

    invoke-static {v1, v0, p0}, Landroidx/constraintlayout/core/state/WidgetFrame;->a(FLjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v0, "scaleY"

    iget v1, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->o:F

    invoke-static {v1, v0, p0}, Landroidx/constraintlayout/core/state/WidgetFrame;->a(FLjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v0, "alpha"

    iget v1, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->p:F

    invoke-static {v1, v0, p0}, Landroidx/constraintlayout/core/state/WidgetFrame;->a(FLjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v0, "visibility"

    iget v1, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->q:I

    invoke-static {v1, v0, p0}, Landroidx/constraintlayout/core/state/WidgetFrame;->b(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v0, "interpolatedPos"

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-static {v1, v0, p0}, Landroidx/constraintlayout/core/state/WidgetFrame;->a(FLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_14

    invoke-static {}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->values()[Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-result-object v3

    array-length v5, v3

    move v6, v2

    :goto_9
    if-ge v6, v5, :cond_14

    aget-object v7, v3, v6

    invoke-virtual {v0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v8

    if-eqz v8, :cond_13

    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v9, :cond_11

    goto :goto_a

    :cond_11
    const-string v9, "Anchor"

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": [\'"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l:Ljava/lang/String;

    if-nez v7, :cond_12

    const-string v7, "#PARENT"

    :cond_12
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\', \'"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\'],\n"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_14
    const-string v0, "phone_orientation"

    invoke-static {v1, v0, p0}, Landroidx/constraintlayout/core/state/WidgetFrame;->a(FLjava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-static {v1, v0, p0}, Landroidx/constraintlayout/core/state/WidgetFrame;->a(FLjava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v0

    const-string v1, "}\n"

    if-eqz v0, :cond_16

    const-string v0, "custom : {\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/motion/CustomVariable;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Landroidx/constraintlayout/core/motion/CustomVariable;->b:I

    const-string v6, ",\n"

    const-string v7, "\',\n"

    const-string v8, "\'"

    packed-switch v3, :pswitch_data_0

    goto :goto_b

    :pswitch_0
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v5, Landroidx/constraintlayout/core/motion/CustomVariable;->f:Z

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :pswitch_1
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Landroidx/constraintlayout/core/motion/CustomVariable;->e:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :pswitch_2
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Landroidx/constraintlayout/core/motion/CustomVariable;->c:I

    invoke-static {v3}, Landroidx/constraintlayout/core/motion/CustomVariable;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :pswitch_3
    iget v3, v5, Landroidx/constraintlayout/core/motion/CustomVariable;->d:F

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :pswitch_4
    iget v3, v5, Landroidx/constraintlayout/core/motion/CustomVariable;->c:I

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_15
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_17
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    return-void

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final f(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/constraintlayout/compose/ConstraintSet;Ljava/util/List;Ljava/util/LinkedHashMap;I)J
    .locals 9

    iput-object p6, p0, Landroidx/constraintlayout/compose/Measurer2;->b:Ljava/util/Map;

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    move-result p0

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    move-result p1

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntSizeKt;->a(II)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->f(J)Z

    move-result v1

    sget-object v2, Landroidx/constraintlayout/core/state/Dimension;->i:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v1

    invoke-static {v1}, Landroidx/constraintlayout/core/state/Dimension;->b(I)Landroidx/constraintlayout/core/state/Dimension;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Landroidx/constraintlayout/core/state/Dimension;

    invoke-direct {v1, v2}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    move-result v3

    if-ltz v3, :cond_2

    iput v3, v1, Landroidx/constraintlayout/core/state/Dimension;->a:I

    :cond_2
    :goto_0
    iget-object v3, p0, Landroidx/constraintlayout/compose/Measurer2;->e:Landroidx/constraintlayout/compose/State;

    iget-object v4, v3, Landroidx/constraintlayout/core/state/State;->f:Landroidx/constraintlayout/core/state/ConstraintReference;

    iget-object v5, v3, Landroidx/constraintlayout/core/state/State;->d:Ljava/util/HashMap;

    iget-object v6, v3, Landroidx/constraintlayout/core/state/State;->c:Ljava/util/HashMap;

    iget-object v7, v3, Landroidx/constraintlayout/core/state/State;->f:Landroidx/constraintlayout/core/state/ConstraintReference;

    iput-object v1, v4, Landroidx/constraintlayout/core/state/ConstraintReference;->e0:Landroidx/constraintlayout/core/state/Dimension;

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->e(J)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result v1

    invoke-static {v1}, Landroidx/constraintlayout/core/state/Dimension;->b(I)Landroidx/constraintlayout/core/state/Dimension;

    move-result-object v1

    goto :goto_1

    :cond_3
    new-instance v1, Landroidx/constraintlayout/core/state/Dimension;

    invoke-direct {v1, v2}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    move-result v2

    if-ltz v2, :cond_4

    iput v2, v1, Landroidx/constraintlayout/core/state/Dimension;->a:I

    :cond_4
    :goto_1
    iput-object v1, v7, Landroidx/constraintlayout/core/state/ConstraintReference;->f0:Landroidx/constraintlayout/core/state/Dimension;

    iget-object v1, v7, Landroidx/constraintlayout/core/state/ConstraintReference;->e0:Landroidx/constraintlayout/core/state/Dimension;

    iget-object v2, p0, Landroidx/constraintlayout/compose/Measurer2;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroidx/constraintlayout/core/state/Dimension;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V

    iget-object v1, v7, Landroidx/constraintlayout/core/state/ConstraintReference;->f0:Landroidx/constraintlayout/core/state/Dimension;

    const/4 v8, 0x1

    invoke-virtual {v1, v2, v8}, Landroidx/constraintlayout/core/state/Dimension;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V

    iput-wide p1, v3, Landroidx/constraintlayout/compose/State;->l:J

    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p3, v1, :cond_5

    move p3, v8

    goto :goto_2

    :cond_5
    move p3, v4

    :goto_2
    xor-int/2addr p3, v8

    iput-boolean p3, v3, Landroidx/constraintlayout/core/state/State;->b:Z

    iget-object p3, p0, Landroidx/constraintlayout/compose/Measurer2;->b:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->clear()V

    iget-object p3, p0, Landroidx/constraintlayout/compose/Measurer2;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->clear()V

    iget-object p0, p0, Landroidx/constraintlayout/compose/Measurer2;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    invoke-interface/range {p4 .. p5}, Landroidx/constraintlayout/compose/ConstraintSet;->b(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_19

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/constraintlayout/core/state/Reference;

    invoke-interface {p3}, Landroidx/constraintlayout/core/state/Reference;->b()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H()V

    goto :goto_3

    :cond_6
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v6, p0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    iget-object p0, v3, Landroidx/constraintlayout/core/state/State;->e:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    iget-object p0, v3, Landroidx/constraintlayout/core/state/State;->h:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    iput-boolean v8, v3, Landroidx/constraintlayout/core/state/State;->j:Z

    invoke-interface {p4, v3, p5}, Landroidx/constraintlayout/compose/ConstraintSet;->a(Landroidx/constraintlayout/compose/State;Ljava/util/List;)V

    invoke-static {v3, p5}, Landroidx/constraintlayout/compose/ConstraintLayoutKt;->a(Landroidx/constraintlayout/compose/State;Ljava/util/List;)V

    iget-object p0, v2, Landroidx/constraintlayout/core/widgets/WidgetContainer;->w0:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, v7, Landroidx/constraintlayout/core/state/ConstraintReference;->e0:Landroidx/constraintlayout/core/state/Dimension;

    invoke-virtual {p0, v2, v4}, Landroidx/constraintlayout/core/state/Dimension;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V

    iget-object p0, v7, Landroidx/constraintlayout/core/state/ConstraintReference;->f0:Landroidx/constraintlayout/core/state/Dimension;

    invoke-virtual {p0, v2, v8}, Landroidx/constraintlayout/core/state/Dimension;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v5, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/constraintlayout/core/state/HelperReference;

    invoke-virtual {p4}, Landroidx/constraintlayout/core/state/HelperReference;->s()Landroidx/constraintlayout/core/widgets/HelperWidget;

    move-result-object p4

    if-eqz p4, :cond_7

    invoke-virtual {v6, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/state/Reference;

    if-nez v0, :cond_8

    invoke-virtual {v3, p3}, Landroidx/constraintlayout/core/state/State;->b(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    :cond_8
    invoke-interface {v0, p4}, Landroidx/constraintlayout/core/state/Reference;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    goto :goto_4

    :cond_9
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/constraintlayout/core/state/Reference;

    if-eq p4, v7, :cond_a

    invoke-interface {p4}, Landroidx/constraintlayout/core/state/Reference;->c()Landroidx/constraintlayout/core/state/helpers/Facade;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/core/state/HelperReference;

    if-eqz v0, :cond_a

    invoke-interface {p4}, Landroidx/constraintlayout/core/state/Reference;->c()Landroidx/constraintlayout/core/state/helpers/Facade;

    move-result-object p4

    check-cast p4, Landroidx/constraintlayout/core/state/HelperReference;

    invoke-virtual {p4}, Landroidx/constraintlayout/core/state/HelperReference;->s()Landroidx/constraintlayout/core/widgets/HelperWidget;

    move-result-object p4

    if-eqz p4, :cond_a

    invoke-virtual {v6, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/state/Reference;

    if-nez v0, :cond_b

    invoke-virtual {v3, p3}, Landroidx/constraintlayout/core/state/State;->b(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    :cond_b
    invoke-interface {v0, p4}, Landroidx/constraintlayout/core/state/Reference;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    goto :goto_5

    :cond_c
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/constraintlayout/core/state/Reference;

    if-eq p3, v7, :cond_e

    invoke-interface {p3}, Landroidx/constraintlayout/core/state/Reference;->b()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object p4

    invoke-interface {p3}, Landroidx/constraintlayout/core/state/Reference;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m0:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-interface {p3}, Landroidx/constraintlayout/core/state/Reference;->c()Landroidx/constraintlayout/core/state/helpers/Facade;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;

    if-eqz v0, :cond_d

    invoke-interface {p3}, Landroidx/constraintlayout/core/state/Reference;->apply()V

    :cond_d
    invoke-virtual {v2, p4}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    goto :goto_6

    :cond_e
    invoke-interface {p3, v2}, Landroidx/constraintlayout/core/state/Reference;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    goto :goto_6

    :cond_f
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_12

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v5, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/constraintlayout/core/state/HelperReference;

    invoke-virtual {p3}, Landroidx/constraintlayout/core/state/HelperReference;->s()Landroidx/constraintlayout/core/widgets/HelperWidget;

    move-result-object p4

    if-eqz p4, :cond_11

    iget-object p4, p3, Landroidx/constraintlayout/core/state/HelperReference;->m0:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_8
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/state/Reference;

    invoke-virtual {p3}, Landroidx/constraintlayout/core/state/HelperReference;->s()Landroidx/constraintlayout/core/widgets/HelperWidget;

    move-result-object v1

    invoke-interface {v0}, Landroidx/constraintlayout/core/state/Reference;->b()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/HelperWidget;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    goto :goto_8

    :cond_10
    invoke-virtual {p3}, Landroidx/constraintlayout/core/state/HelperReference;->apply()V

    goto :goto_7

    :cond_11
    invoke-virtual {p3}, Landroidx/constraintlayout/core/state/HelperReference;->apply()V

    goto :goto_7

    :cond_12
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/constraintlayout/core/state/Reference;

    if-eq p3, v7, :cond_13

    invoke-interface {p3}, Landroidx/constraintlayout/core/state/Reference;->c()Landroidx/constraintlayout/core/state/helpers/Facade;

    move-result-object p4

    instance-of p4, p4, Landroidx/constraintlayout/core/state/HelperReference;

    if-eqz p4, :cond_13

    invoke-interface {p3}, Landroidx/constraintlayout/core/state/Reference;->c()Landroidx/constraintlayout/core/state/helpers/Facade;

    move-result-object p4

    check-cast p4, Landroidx/constraintlayout/core/state/HelperReference;

    invoke-virtual {p4}, Landroidx/constraintlayout/core/state/HelperReference;->s()Landroidx/constraintlayout/core/widgets/HelperWidget;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object p4, p4, Landroidx/constraintlayout/core/state/HelperReference;->m0:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_a
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/state/Reference;

    if-eqz v3, :cond_14

    invoke-interface {v3}, Landroidx/constraintlayout/core/state/Reference;->b()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/HelperWidget;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    goto :goto_a

    :cond_14
    instance-of v3, v1, Landroidx/constraintlayout/core/state/Reference;

    if-eqz v3, :cond_15

    check-cast v1, Landroidx/constraintlayout/core/state/Reference;

    invoke-interface {v1}, Landroidx/constraintlayout/core/state/Reference;->b()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/HelperWidget;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    goto :goto_a

    :cond_15
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "couldn\'t find reference for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_a

    :cond_16
    invoke-interface {p3}, Landroidx/constraintlayout/core/state/Reference;->apply()V

    goto :goto_9

    :cond_17
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_18
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/constraintlayout/core/state/Reference;

    invoke-interface {p4}, Landroidx/constraintlayout/core/state/Reference;->apply()V

    invoke-interface {p4}, Landroidx/constraintlayout/core/state/Reference;->b()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object p4

    if-eqz p4, :cond_18

    if-eqz p3, :cond_18

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l:Ljava/lang/String;

    goto :goto_b

    :cond_19
    invoke-static {v3, p5}, Landroidx/constraintlayout/compose/ConstraintLayoutKt;->a(Landroidx/constraintlayout/compose/State;Ljava/util/List;)V

    :cond_1a
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result p0

    invoke-virtual {v2, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W(I)V

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result p0

    invoke-virtual {v2, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R(I)V

    iget-object p0, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->x0:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->c(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    move/from16 p0, p7

    iput p0, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->J0:I

    const/16 p0, 0x200

    invoke-virtual {v2, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->e0(I)Z

    move-result p0

    sput-boolean p0, Landroidx/constraintlayout/core/LinearSystem;->q:Z

    iget p1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->J0:I

    const/4 p0, 0x0

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move p6, p0

    move/from16 p7, p2

    move p2, p3

    move p3, p4

    move p4, v0

    move p5, v1

    move-object p0, v2

    invoke-virtual/range {p0 .. p7}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->c0(IIIIIII)V

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()I

    move-result p1

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    move-result p0

    invoke-static {p1, p0}, Landroidx/compose/ui/unit/IntSizeKt;->a(II)J

    move-result-wide p0

    return-wide p0
.end method
