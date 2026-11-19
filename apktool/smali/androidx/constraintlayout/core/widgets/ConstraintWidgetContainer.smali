.class public Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
.super Landroidx/constraintlayout/core/widgets/WidgetContainer;
.source "SourceFile"


# instance fields
.field public A0:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

.field public B0:Z

.field public final C0:Landroidx/constraintlayout/core/LinearSystem;

.field public D0:I

.field public E0:I

.field public F0:I

.field public G0:I

.field public H0:[Landroidx/constraintlayout/core/widgets/ChainHead;

.field public I0:[Landroidx/constraintlayout/core/widgets/ChainHead;

.field public J0:I

.field public K0:Z

.field public L0:Z

.field public M0:Ljava/lang/ref/WeakReference;

.field public N0:Ljava/lang/ref/WeakReference;

.field public O0:Ljava/lang/ref/WeakReference;

.field public P0:Ljava/lang/ref/WeakReference;

.field public final Q0:Ljava/util/HashSet;

.field public final R0:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

.field public final x0:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

.field public final y0:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

.field public z0:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 114
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/WidgetContainer;-><init>()V

    .line 115
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->x0:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    .line 116
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->y0:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->A0:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    const/4 v1, 0x0

    .line 118
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->B0:Z

    .line 119
    new-instance v2, Landroidx/constraintlayout/core/LinearSystem;

    invoke-direct {v2}, Landroidx/constraintlayout/core/LinearSystem;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->C0:Landroidx/constraintlayout/core/LinearSystem;

    .line 120
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->F0:I

    .line 121
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->G0:I

    const/4 v2, 0x4

    .line 122
    new-array v3, v2, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->H0:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 123
    new-array v2, v2, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->I0:[Landroidx/constraintlayout/core/widgets/ChainHead;

    const/16 v2, 0x101

    .line 124
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->J0:I

    .line 125
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->K0:Z

    .line 126
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->L0:Z

    .line 127
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->M0:Ljava/lang/ref/WeakReference;

    .line 128
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->N0:Ljava/lang/ref/WeakReference;

    .line 129
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->O0:Ljava/lang/ref/WeakReference;

    .line 130
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->P0:Ljava/lang/ref/WeakReference;

    .line 131
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->Q0:Ljava/util/HashSet;

    .line 132
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->R0:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 95
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/WidgetContainer;-><init>(II)V

    .line 96
    new-instance p1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->x0:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    .line 97
    new-instance p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->y0:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    const/4 p1, 0x0

    .line 98
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->A0:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    const/4 p2, 0x0

    .line 99
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->B0:Z

    .line 100
    new-instance v0, Landroidx/constraintlayout/core/LinearSystem;

    invoke-direct {v0}, Landroidx/constraintlayout/core/LinearSystem;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->C0:Landroidx/constraintlayout/core/LinearSystem;

    .line 101
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->F0:I

    .line 102
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->G0:I

    const/4 v0, 0x4

    .line 103
    new-array v1, v0, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->H0:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 104
    new-array v0, v0, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->I0:[Landroidx/constraintlayout/core/widgets/ChainHead;

    const/16 v0, 0x101

    .line 105
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->J0:I

    .line 106
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->K0:Z

    .line 107
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->L0:Z

    .line 108
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->M0:Ljava/lang/ref/WeakReference;

    .line 109
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->N0:Ljava/lang/ref/WeakReference;

    .line 110
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->O0:Ljava/lang/ref/WeakReference;

    .line 111
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->P0:Ljava/lang/ref/WeakReference;

    .line 112
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->Q0:Ljava/util/HashSet;

    .line 113
    new-instance p1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->R0:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/core/widgets/WidgetContainer;-><init>(IIII)V

    .line 77
    new-instance p1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->x0:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    .line 78
    new-instance p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->y0:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    const/4 p1, 0x0

    .line 79
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->A0:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    const/4 p2, 0x0

    .line 80
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->B0:Z

    .line 81
    new-instance p3, Landroidx/constraintlayout/core/LinearSystem;

    invoke-direct {p3}, Landroidx/constraintlayout/core/LinearSystem;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->C0:Landroidx/constraintlayout/core/LinearSystem;

    .line 82
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->F0:I

    .line 83
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->G0:I

    const/4 p3, 0x4

    .line 84
    new-array p4, p3, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object p4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->H0:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 85
    new-array p3, p3, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->I0:[Landroidx/constraintlayout/core/widgets/ChainHead;

    const/16 p3, 0x101

    .line 86
    iput p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->J0:I

    .line 87
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->K0:Z

    .line 88
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->L0:Z

    .line 89
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->M0:Ljava/lang/ref/WeakReference;

    .line 90
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->N0:Ljava/lang/ref/WeakReference;

    .line 91
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->O0:Ljava/lang/ref/WeakReference;

    .line 92
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->P0:Ljava/lang/ref/WeakReference;

    .line 93
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->Q0:Ljava/util/HashSet;

    .line 94
    new-instance p1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->R0:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    invoke-direct {p0, p2, p3}, Landroidx/constraintlayout/core/widgets/WidgetContainer;-><init>(II)V

    new-instance p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    invoke-direct {p2, p0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->x0:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    new-instance p2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    invoke-direct {p2, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->y0:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    const/4 p2, 0x0

    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->A0:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    const/4 p3, 0x0

    iput-boolean p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->B0:Z

    new-instance v0, Landroidx/constraintlayout/core/LinearSystem;

    invoke-direct {v0}, Landroidx/constraintlayout/core/LinearSystem;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->C0:Landroidx/constraintlayout/core/LinearSystem;

    iput p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->F0:I

    iput p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->G0:I

    const/4 v0, 0x4

    new-array v1, v0, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->H0:[Landroidx/constraintlayout/core/widgets/ChainHead;

    new-array v0, v0, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->I0:[Landroidx/constraintlayout/core/widgets/ChainHead;

    const/16 v0, 0x101

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->J0:I

    iput-boolean p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->K0:Z

    iput-boolean p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->L0:Z

    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->M0:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->N0:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->O0:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->P0:Ljava/lang/ref/WeakReference;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->Q0:Ljava/util/HashSet;

    new-instance p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {p2}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->R0:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m0:Ljava/lang/String;

    return-void
.end method

.method public static d0(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k0:I

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v:[I

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eq v0, v2, :cond_13

    instance-of v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;

    if-nez v0, :cond_13

    instance-of v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v0, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v0, v3

    iput-object v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iput-object v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()I

    move-result v0

    iput v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->c:I

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    move-result v0

    iput v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->d:I

    iput-boolean v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->i:Z

    iput v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->j:I

    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v4, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    iget-object v5, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v4, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    const/4 v5, 0x0

    if-eqz v0, :cond_4

    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_4

    move v6, v2

    goto :goto_2

    :cond_4
    move v6, v3

    :goto_2
    if-eqz v4, :cond_5

    iget v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:F

    cmpl-float v5, v7, v5

    if-lez v5, :cond_5

    move v5, v2

    goto :goto_3

    :cond_5
    move v5, v3

    :goto_3
    if-eqz v0, :cond_7

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y(I)Z

    move-result v7

    if-eqz v7, :cond_7

    iget v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    if-nez v7, :cond_7

    if-nez v6, :cond_7

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eqz v4, :cond_6

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:I

    if-nez v0, :cond_6

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_6
    move v0, v3

    :cond_7
    if-eqz v4, :cond_9

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y(I)Z

    move-result v7

    if-eqz v7, :cond_9

    iget v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:I

    if-nez v7, :cond_9

    if-nez v5, :cond_9

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eqz v0, :cond_8

    iget v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    if-nez v4, :cond_8

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_8
    move v4, v3

    :cond_9
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F()Z

    move-result v7

    if-eqz v7, :cond_a

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move v0, v3

    :cond_a
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G()Z

    move-result v7

    if-eqz v7, :cond_b

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move v4, v3

    :cond_b
    const/4 v7, 0x4

    if-eqz v6, :cond_e

    aget v6, v1, v3

    if-ne v6, v7, :cond_c

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    goto :goto_5

    :cond_c
    if-nez v4, :cond_e

    iget-object v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v6, :cond_d

    iget v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->d:I

    goto :goto_4

    :cond_d
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-interface {p1, p0, p2}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    iget v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->f:I

    :goto_4
    iput-object v6, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:F

    int-to-float v4, v4

    mul-float/2addr v6, v4

    float-to-int v4, v6

    iput v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->c:I

    :cond_e
    :goto_5
    if-eqz v5, :cond_12

    aget v1, v1, v2

    if-ne v1, v7, :cond_f

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    goto :goto_7

    :cond_f
    if-nez v0, :cond_12

    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_10

    iget v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->c:I

    goto :goto_6

    :cond_10
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-interface {p1, p0, p2}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    iget v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->e:I

    :goto_6
    iput-object v1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:F

    const/4 v4, -0x1

    if-ne v1, v4, :cond_11

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->d:I

    goto :goto_7

    :cond_11
    int-to-float v0, v0

    mul-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->d:I

    :cond_12
    :goto_7
    invoke-interface {p1, p0, p2}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    iget p1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->e:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W(I)V

    iget p1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->f:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R(I)V

    iget-boolean p1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->h:Z

    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G:Z

    iget p1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->g:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N(I)V

    iput v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->j:I

    return-void

    :cond_13
    :goto_8
    iput v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->e:I

    iput v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->f:I

    return-void
.end method


# virtual methods
.method public final H()V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->C0:Landroidx/constraintlayout/core/LinearSystem;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/LinearSystem;->t()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->D0:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->E0:I

    invoke-super {p0}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->H()V

    return-void
.end method

.method public final X(ZZ)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X(ZZ)V

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->w0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->w0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final Z()V
    .locals 29

    move-object/from16 v1, p0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->K0:Z

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->L0:Z

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->w0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x1

    aget-object v7, v5, v6

    aget-object v5, v5, v2

    iget v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->z0:I

    iget-object v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v8, :cond_1e

    iget v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->J0:I

    invoke-static {v8, v6}, Landroidx/constraintlayout/core/widgets/Optimizer;->b(II)Z

    move-result v8

    if-eqz v8, :cond_1e

    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->A0:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    sget-object v12, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->a:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v13, v12, v2

    aget-object v12, v12, v6

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J()V

    iget-object v14, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->w0:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    move v11, v2

    :goto_0
    if-ge v11, v15, :cond_0

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual/range {v16 .. v16}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J()V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->B0:Z

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v6, :cond_1

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()I

    move-result v6

    invoke-virtual {v1, v2, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->P(II)V

    goto :goto_1

    :cond_1
    invoke-virtual {v10, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->l(I)V

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    :goto_1
    move v6, v2

    move v13, v6

    move/from16 v17, v13

    :goto_2
    const/high16 v18, 0x3f000000    # 0.5f

    if-ge v13, v15, :cond_7

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v2, v19

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move/from16 v19, v6

    instance-of v6, v2, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v6, :cond_6

    check-cast v2, Landroidx/constraintlayout/core/widgets/Guideline;

    iget v6, v2, Landroidx/constraintlayout/core/widgets/Guideline;->A0:I

    move/from16 v21, v13

    const/4 v13, 0x1

    if-ne v6, v13, :cond_5

    iget v6, v2, Landroidx/constraintlayout/core/widgets/Guideline;->x0:I

    const/4 v13, -0x1

    if-eq v6, v13, :cond_2

    invoke-virtual {v2, v6}, Landroidx/constraintlayout/core/widgets/Guideline;->Z(I)V

    goto :goto_3

    :cond_2
    iget v6, v2, Landroidx/constraintlayout/core/widgets/Guideline;->y0:I

    if-eq v6, v13, :cond_3

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()I

    move-result v6

    iget v13, v2, Landroidx/constraintlayout/core/widgets/Guideline;->y0:I

    sub-int/2addr v6, v13

    invoke-virtual {v2, v6}, Landroidx/constraintlayout/core/widgets/Guideline;->Z(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F()Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, v2, Landroidx/constraintlayout/core/widgets/Guideline;->w0:F

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v6, v13

    add-float v6, v6, v18

    float-to-int v6, v6

    invoke-virtual {v2, v6}, Landroidx/constraintlayout/core/widgets/Guideline;->Z(I)V

    :cond_4
    :goto_3
    const/16 v19, 0x1

    :cond_5
    move/from16 v6, v19

    goto :goto_4

    :cond_6
    move/from16 v21, v13

    instance-of v6, v2, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v6, :cond_5

    check-cast v2, Landroidx/constraintlayout/core/widgets/Barrier;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/Barrier;->b0()I

    move-result v2

    if-nez v2, :cond_5

    move/from16 v6, v19

    const/16 v17, 0x1

    :goto_4
    add-int/lit8 v13, v21, 0x1

    const/4 v2, 0x0

    goto :goto_2

    :cond_7
    move/from16 v19, v6

    if-eqz v19, :cond_a

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v15, :cond_a

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v13, v6, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v13, :cond_9

    check-cast v6, Landroidx/constraintlayout/core/widgets/Guideline;

    iget v13, v6, Landroidx/constraintlayout/core/widgets/Guideline;->A0:I

    move/from16 v19, v2

    const/4 v2, 0x1

    if-ne v13, v2, :cond_8

    const/4 v2, 0x0

    invoke-static {v2, v6, v8, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v2, 0x0

    goto :goto_7

    :cond_9
    move/from16 v19, v2

    goto :goto_6

    :goto_7
    add-int/lit8 v6, v19, 0x1

    move v2, v6

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    invoke-static {v2, v1, v8, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    if-eqz v17, :cond_c

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v15, :cond_c

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v13, v6, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v13, :cond_b

    check-cast v6, Landroidx/constraintlayout/core/widgets/Barrier;

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Barrier;->b0()I

    move-result v13

    if-nez v13, :cond_b

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Barrier;->a0()Z

    move-result v13

    if-eqz v13, :cond_b

    const/4 v13, 0x1

    invoke-static {v13, v6, v8, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_c
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v2, :cond_d

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    move-result v2

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Q(II)V

    goto :goto_9

    :cond_d
    const/4 v6, 0x0

    invoke-virtual {v9, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->l(I)V

    iput v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    :goto_9
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_a
    if-ge v2, v15, :cond_13

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move/from16 v17, v2

    instance-of v2, v13, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v2, :cond_11

    check-cast v13, Landroidx/constraintlayout/core/widgets/Guideline;

    iget v2, v13, Landroidx/constraintlayout/core/widgets/Guideline;->A0:I

    if-nez v2, :cond_12

    iget v2, v13, Landroidx/constraintlayout/core/widgets/Guideline;->x0:I

    const/4 v6, -0x1

    if-eq v2, v6, :cond_e

    invoke-virtual {v13, v2}, Landroidx/constraintlayout/core/widgets/Guideline;->Z(I)V

    goto :goto_b

    :cond_e
    iget v2, v13, Landroidx/constraintlayout/core/widgets/Guideline;->y0:I

    if-eq v2, v6, :cond_f

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    move-result v2

    iget v6, v13, Landroidx/constraintlayout/core/widgets/Guideline;->y0:I

    sub-int/2addr v2, v6

    invoke-virtual {v13, v2}, Landroidx/constraintlayout/core/widgets/Guideline;->Z(I)V

    goto :goto_b

    :cond_f
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G()Z

    move-result v2

    if-eqz v2, :cond_10

    iget v2, v13, Landroidx/constraintlayout/core/widgets/Guideline;->w0:F

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v2, v6

    add-float v2, v2, v18

    float-to-int v2, v2

    invoke-virtual {v13, v2}, Landroidx/constraintlayout/core/widgets/Guideline;->Z(I)V

    :cond_10
    :goto_b
    const/4 v6, 0x1

    goto :goto_c

    :cond_11
    instance-of v2, v13, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v2, :cond_12

    check-cast v13, Landroidx/constraintlayout/core/widgets/Barrier;

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/Barrier;->b0()I

    move-result v2

    const/4 v13, 0x1

    if-ne v2, v13, :cond_12

    const/4 v12, 0x1

    :cond_12
    :goto_c
    add-int/lit8 v2, v17, 0x1

    goto :goto_a

    :cond_13
    if-eqz v6, :cond_15

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v15, :cond_15

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v13, v6, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v13, :cond_14

    check-cast v6, Landroidx/constraintlayout/core/widgets/Guideline;

    iget v13, v6, Landroidx/constraintlayout/core/widgets/Guideline;->A0:I

    if-nez v13, :cond_14

    const/4 v13, 0x1

    invoke-static {v13, v6, v8}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_15
    const/4 v2, 0x0

    invoke-static {v2, v1, v8}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    if-eqz v12, :cond_17

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v15, :cond_17

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v12, v6, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v12, :cond_16

    check-cast v6, Landroidx/constraintlayout/core/widgets/Barrier;

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Barrier;->b0()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_16

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Barrier;->a0()Z

    move-result v12

    if-eqz v12, :cond_16

    invoke-static {v13, v6, v8}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_17
    const/4 v2, 0x0

    :goto_f
    if-ge v2, v15, :cond_1b

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->E()Z

    move-result v12

    if-eqz v12, :cond_1a

    invoke-static {v6}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    move-result v12

    if-eqz v12, :cond_1a

    sget-object v12, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->a:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-static {v6, v8, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->d0(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    instance-of v12, v6, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v12, :cond_19

    move-object v12, v6

    check-cast v12, Landroidx/constraintlayout/core/widgets/Guideline;

    iget v12, v12, Landroidx/constraintlayout/core/widgets/Guideline;->A0:I

    if-nez v12, :cond_18

    const/4 v12, 0x0

    invoke-static {v12, v6, v8}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    goto :goto_10

    :cond_18
    const/4 v12, 0x0

    invoke-static {v12, v6, v8, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    goto :goto_10

    :cond_19
    const/4 v12, 0x0

    invoke-static {v12, v6, v8, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    invoke-static {v12, v6, v8}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    :cond_1a
    :goto_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1b
    const/4 v2, 0x0

    :goto_11
    if-ge v2, v3, :cond_1e

    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->w0:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->E()Z

    move-result v8

    if-eqz v8, :cond_1d

    instance-of v8, v6, Landroidx/constraintlayout/core/widgets/Guideline;

    if-nez v8, :cond_1d

    instance-of v8, v6, Landroidx/constraintlayout/core/widgets/Barrier;

    if-nez v8, :cond_1d

    instance-of v8, v6, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    if-nez v8, :cond_1d

    iget-boolean v8, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Z

    if-nez v8, :cond_1d

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v11

    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v12, :cond_1c

    iget v8, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    if-eq v8, v13, :cond_1c

    if-ne v11, v12, :cond_1c

    iget v8, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:I

    if-eq v8, v13, :cond_1c

    goto :goto_12

    :cond_1c
    new-instance v8, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v8}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->A0:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    invoke-static {v6, v11, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->d0(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    :cond_1d
    :goto_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1e
    const/4 v2, 0x2

    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->C0:Landroidx/constraintlayout/core/LinearSystem;

    if-le v3, v2, :cond_1f

    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v11, :cond_20

    if-ne v7, v11, :cond_1f

    goto :goto_13

    :cond_1f
    move-object/from16 v22, v10

    goto/16 :goto_3b

    :cond_20
    :goto_13
    iget v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->J0:I

    const/16 v12, 0x400

    invoke-static {v11, v12}, Landroidx/constraintlayout/core/widgets/Optimizer;->b(II)Z

    move-result v11

    if-eqz v11, :cond_1f

    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->A0:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->w0:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_14
    if-ge v14, v13, :cond_23

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v20, 0x0

    aget-object v6, v2, v20

    const/16 v16, 0x1

    aget-object v2, v2, v16

    move/from16 v19, v14

    iget-object v14, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v14

    aget-object v14, v21, v20

    move-object/from16 v22, v10

    aget-object v10, v21, v16

    invoke-static {v6, v2, v14, v10}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)Z

    move-result v2

    if-nez v2, :cond_21

    goto/16 :goto_3b

    :cond_21
    instance-of v2, v15, Landroidx/constraintlayout/core/widgets/Flow;

    if-eqz v2, :cond_22

    goto/16 :goto_3b

    :cond_22
    add-int/lit8 v14, v19, 0x1

    move-object/from16 v10, v22

    const/4 v2, 0x2

    goto :goto_14

    :cond_23
    move-object/from16 v22, v10

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    :goto_15
    if-ge v2, v13, :cond_35

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    move/from16 v24, v2

    move-object/from16 v2, v23

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v23, v6

    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v25, v6

    const/16 v20, 0x0

    aget-object v6, v25, v20

    move-object/from16 v26, v10

    const/16 v16, 0x1

    aget-object v10, v25, v16

    move-object/from16 v25, v14

    iget-object v14, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v27, v14

    aget-object v14, v27, v20

    move-object/from16 v28, v15

    aget-object v15, v27, v16

    invoke-static {v6, v10, v14, v15}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)Z

    move-result v6

    if-nez v6, :cond_24

    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->R0:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-static {v2, v11, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->d0(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    :cond_24
    instance-of v6, v2, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v6, :cond_28

    move-object v10, v2

    check-cast v10, Landroidx/constraintlayout/core/widgets/Guideline;

    iget v14, v10, Landroidx/constraintlayout/core/widgets/Guideline;->A0:I

    if-nez v14, :cond_26

    if-nez v26, :cond_25

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    goto :goto_16

    :cond_25
    move-object/from16 v14, v26

    :goto_16
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v26, v14

    :cond_26
    iget v14, v10, Landroidx/constraintlayout/core/widgets/Guideline;->A0:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_28

    if-nez v21, :cond_27

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    goto :goto_17

    :cond_27
    move-object/from16 v14, v21

    :goto_17
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v21, v14

    :cond_28
    move-object/from16 v10, v26

    instance-of v14, v2, Landroidx/constraintlayout/core/widgets/HelperWidget;

    if-eqz v14, :cond_30

    instance-of v14, v2, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v14, :cond_2d

    move-object v14, v2

    check-cast v14, Landroidx/constraintlayout/core/widgets/Barrier;

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/Barrier;->b0()I

    move-result v15

    if-nez v15, :cond_2a

    if-nez v23, :cond_29

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    goto :goto_18

    :cond_29
    move-object/from16 v15, v23

    :goto_18
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_19
    move/from16 v27, v6

    goto :goto_1a

    :cond_2a
    move-object/from16 v15, v23

    goto :goto_19

    :goto_1a
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/Barrier;->b0()I

    move-result v6

    move-object/from16 v26, v10

    const/4 v10, 0x1

    if-ne v6, v10, :cond_2c

    if-nez v25, :cond_2b

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1b

    :cond_2b
    move-object/from16 v6, v25

    :goto_1b
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v14, v6

    goto :goto_1c

    :cond_2c
    move-object/from16 v14, v25

    :goto_1c
    move-object v6, v15

    goto :goto_1f

    :cond_2d
    move/from16 v27, v6

    move-object/from16 v26, v10

    move-object v6, v2

    check-cast v6, Landroidx/constraintlayout/core/widgets/HelperWidget;

    if-nez v23, :cond_2e

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1d

    :cond_2e
    move-object/from16 v10, v23

    :goto_1d
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v25, :cond_2f

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1e

    :cond_2f
    move-object/from16 v14, v25

    :goto_1e
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v10

    goto :goto_1f

    :cond_30
    move/from16 v27, v6

    move-object/from16 v26, v10

    move-object/from16 v6, v23

    move-object/from16 v14, v25

    :goto_1f
    iget-object v10, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v10, :cond_32

    iget-object v10, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v10, :cond_32

    if-nez v27, :cond_32

    instance-of v10, v2, Landroidx/constraintlayout/core/widgets/Barrier;

    if-nez v10, :cond_32

    if-nez v28, :cond_31

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    goto :goto_20

    :cond_31
    move-object/from16 v15, v28

    :goto_20
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_32
    move-object/from16 v15, v28

    :goto_21
    iget-object v10, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v10, :cond_34

    iget-object v10, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v10, :cond_34

    iget-object v10, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->P:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v10, :cond_34

    if-nez v27, :cond_34

    instance-of v10, v2, Landroidx/constraintlayout/core/widgets/Barrier;

    if-nez v10, :cond_34

    if-nez v19, :cond_33

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    :cond_33
    move-object/from16 v10, v19

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v19, v10

    :cond_34
    add-int/lit8 v2, v24, 0x1

    move-object/from16 v10, v26

    goto/16 :goto_15

    :cond_35
    move-object/from16 v23, v6

    move-object/from16 v26, v10

    move-object/from16 v25, v14

    move-object/from16 v28, v15

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v21, :cond_36

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_22
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_36

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/core/widgets/Guideline;

    const/4 v11, 0x0

    const/4 v14, 0x0

    invoke-static {v10, v14, v2, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    goto :goto_22

    :cond_36
    const/4 v11, 0x0

    const/4 v14, 0x0

    if-eqz v23, :cond_37

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_23
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_37

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/core/widgets/HelperWidget;

    invoke-static {v10, v14, v2, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    move-result-object v15

    invoke-virtual {v10, v14, v15, v2}, Landroidx/constraintlayout/core/widgets/HelperWidget;->Z(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;Ljava/util/ArrayList;)V

    invoke-virtual {v15, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->a(Ljava/util/ArrayList;)V

    const/4 v11, 0x0

    const/4 v14, 0x0

    goto :goto_23

    :cond_37
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v6

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    if-eqz v6, :cond_38

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_24
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_38

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v11, 0x0

    const/4 v14, 0x0

    invoke-static {v10, v14, v2, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    goto :goto_24

    :cond_38
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v6

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    if-eqz v6, :cond_39

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_25
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_39

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v11, 0x0

    const/4 v14, 0x0

    invoke-static {v10, v14, v2, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    goto :goto_25

    :cond_39
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v6

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    if-eqz v6, :cond_3a

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_26
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v11, 0x0

    const/4 v14, 0x0

    invoke-static {v10, v14, v2, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    goto :goto_26

    :cond_3a
    const/4 v11, 0x0

    const/4 v14, 0x0

    if-eqz v28, :cond_3b

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-static {v10, v14, v2, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    goto :goto_27

    :cond_3b
    if-eqz v26, :cond_3c

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_28
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/core/widgets/Guideline;

    const/4 v15, 0x1

    invoke-static {v10, v15, v2, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    goto :goto_28

    :cond_3c
    const/4 v15, 0x1

    if-eqz v25, :cond_3d

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_29
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/core/widgets/HelperWidget;

    invoke-static {v10, v15, v2, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    move-result-object v14

    invoke-virtual {v10, v15, v14, v2}, Landroidx/constraintlayout/core/widgets/HelperWidget;->Z(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;Ljava/util/ArrayList;)V

    invoke-virtual {v14, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->a(Ljava/util/ArrayList;)V

    const/4 v11, 0x0

    const/4 v15, 0x1

    goto :goto_29

    :cond_3d
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v6

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    if-eqz v6, :cond_3e

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v11, 0x0

    const/4 v15, 0x1

    invoke-static {v10, v15, v2, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    goto :goto_2a

    :cond_3e
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v6

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    if-eqz v6, :cond_3f

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v11, 0x0

    const/4 v15, 0x1

    invoke-static {v10, v15, v2, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    goto :goto_2b

    :cond_3f
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v6

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    if-eqz v6, :cond_40

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_40

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v11, 0x0

    const/4 v15, 0x1

    invoke-static {v10, v15, v2, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    goto :goto_2c

    :cond_40
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v6

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    if-eqz v6, :cond_41

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_41

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v11, 0x0

    const/4 v15, 0x1

    invoke-static {v10, v15, v2, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    goto :goto_2d

    :cond_41
    const/4 v11, 0x0

    const/4 v15, 0x1

    if-eqz v19, :cond_42

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_42

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-static {v10, v15, v2, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    goto :goto_2e

    :cond_42
    const/4 v6, 0x0

    :goto_2f
    if-ge v6, v13, :cond_49

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v11, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v20, 0x0

    aget-object v14, v11, v20

    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v14, v15, :cond_47

    const/16 v16, 0x1

    aget-object v11, v11, v16

    if-ne v11, v15, :cond_47

    iget v11, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u0:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_30
    if-ge v15, v14, :cond_44

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move/from16 v21, v6

    move-object/from16 v6, v19

    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    move-object/from16 v19, v12

    iget v12, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->b:I

    if-ne v11, v12, :cond_43

    goto :goto_31

    :cond_43
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v12, v19

    move/from16 v6, v21

    goto :goto_30

    :cond_44
    move/from16 v21, v6

    move-object/from16 v19, v12

    const/4 v6, 0x0

    :goto_31
    iget v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v0:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_32
    if-ge v12, v11, :cond_46

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    iget v15, v14, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->b:I

    if-ne v10, v15, :cond_45

    goto :goto_33

    :cond_45
    add-int/lit8 v12, v12, 0x1

    goto :goto_32

    :cond_46
    const/4 v14, 0x0

    :goto_33
    if-eqz v6, :cond_48

    if-eqz v14, :cond_48

    const/4 v12, 0x0

    invoke-virtual {v6, v12, v14}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->c(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)V

    const/4 v10, 0x2

    iput v10, v14, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->c:I

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_47
    move/from16 v21, v6

    move-object/from16 v19, v12

    :cond_48
    :goto_34
    add-int/lit8 v6, v21, 0x1

    move-object/from16 v12, v19

    goto :goto_2f

    :cond_49
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v15, 0x1

    if-gt v6, v15, :cond_4a

    goto/16 :goto_3b

    :cond_4a
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v20, 0x0

    aget-object v6, v6, v20

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v10, :cond_4e

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    :cond_4b
    :goto_35
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    iget v13, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->c:I

    const/4 v15, 0x1

    if-ne v13, v15, :cond_4c

    goto :goto_35

    :cond_4c
    const/4 v14, 0x0

    invoke-virtual {v12, v8, v14}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->b(Landroidx/constraintlayout/core/LinearSystem;I)I

    move-result v13

    if-le v13, v11, :cond_4b

    move-object v10, v12

    move v11, v13

    goto :goto_35

    :cond_4d
    if-eqz v10, :cond_4e

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {v1, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W(I)V

    goto :goto_36

    :cond_4e
    const/4 v10, 0x0

    :goto_36
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v16, 0x1

    aget-object v6, v6, v16

    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v11, :cond_52

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v11, 0x0

    :cond_4f
    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    iget v13, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->c:I

    if-nez v13, :cond_50

    goto :goto_37

    :cond_50
    const/4 v15, 0x1

    invoke-virtual {v12, v8, v15}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->b(Landroidx/constraintlayout/core/LinearSystem;I)I

    move-result v13

    if-le v13, v11, :cond_4f

    move-object v6, v12

    move v11, v13

    goto :goto_37

    :cond_51
    if-eqz v6, :cond_52

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {v1, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R(I)V

    goto :goto_38

    :cond_52
    const/4 v6, 0x0

    :goto_38
    if-nez v10, :cond_53

    if-eqz v6, :cond_58

    :cond_53
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v2, :cond_55

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()I

    move-result v6

    if-ge v0, v6, :cond_54

    if-lez v0, :cond_54

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W(I)V

    const/4 v15, 0x1

    iput-boolean v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->K0:Z

    goto :goto_39

    :cond_54
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()I

    move-result v0

    :cond_55
    :goto_39
    if-ne v7, v2, :cond_57

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    move-result v2

    if-ge v4, v2, :cond_56

    if-lez v4, :cond_56

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R(I)V

    const/4 v15, 0x1

    iput-boolean v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->L0:Z

    goto :goto_3a

    :cond_56
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    move-result v4

    :cond_57
    :goto_3a
    move v2, v0

    const/4 v0, 0x1

    goto :goto_3c

    :cond_58
    :goto_3b
    move v2, v0

    const/4 v0, 0x0

    :goto_3c
    const/16 v6, 0x40

    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->e0(I)Z

    move-result v10

    if-nez v10, :cond_5a

    const/16 v10, 0x80

    invoke-virtual {v1, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->e0(I)Z

    move-result v10

    if-eqz v10, :cond_59

    goto :goto_3d

    :cond_59
    const/4 v10, 0x0

    goto :goto_3e

    :cond_5a
    :goto_3d
    const/4 v10, 0x1

    :goto_3e
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v14, 0x0

    iput-boolean v14, v8, Landroidx/constraintlayout/core/LinearSystem;->h:Z

    iget v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->J0:I

    if-eqz v11, :cond_5b

    if-eqz v10, :cond_5b

    const/4 v15, 0x1

    iput-boolean v15, v8, Landroidx/constraintlayout/core/LinearSystem;->h:Z

    goto :goto_3f

    :cond_5b
    const/4 v15, 0x1

    :goto_3f
    iget-object v10, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->w0:Ljava/util/ArrayList;

    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v12, v11, v14

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v12, v13, :cond_5d

    aget-object v11, v11, v15

    if-ne v11, v13, :cond_5c

    goto :goto_40

    :cond_5c
    move v13, v14

    goto :goto_41

    :cond_5d
    :goto_40
    const/4 v13, 0x1

    :goto_41
    iput v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->F0:I

    iput v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->G0:I

    const/4 v11, 0x0

    :goto_42
    if-ge v11, v3, :cond_5f

    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->w0:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v14, v12, Landroidx/constraintlayout/core/widgets/WidgetContainer;

    if-eqz v14, :cond_5e

    check-cast v12, Landroidx/constraintlayout/core/widgets/WidgetContainer;

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->Z()V

    :cond_5e
    add-int/lit8 v11, v11, 0x1

    goto :goto_42

    :cond_5f
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->e0(I)Z

    move-result v11

    move v12, v0

    const/4 v0, 0x0

    const/4 v14, 0x1

    :goto_43
    if-eqz v14, :cond_74

    const/16 v16, 0x1

    add-int/lit8 v15, v0, 0x1

    :try_start_0
    invoke-virtual {v8}, Landroidx/constraintlayout/core/LinearSystem;->t()V

    const/4 v6, 0x0

    iput v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->F0:I

    iput v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->G0:I

    invoke-virtual {v1, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l(Landroidx/constraintlayout/core/LinearSystem;)V

    const/4 v0, 0x0

    :goto_44
    if-ge v0, v3, :cond_60

    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->w0:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v6, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l(Landroidx/constraintlayout/core/LinearSystem;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    :catch_0
    move-exception v0

    move-object/from16 v21, v9

    const/4 v9, 0x0

    goto/16 :goto_4a

    :cond_60
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->b0(Landroidx/constraintlayout/core/LinearSystem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->M0:Ljava/lang/ref/WeakReference;

    const/4 v6, 0x5

    if-eqz v0, :cond_61

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_61

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->M0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v14

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v21, v9

    const/4 v9, 0x0

    :try_start_2
    invoke-virtual {v8, v0, v14, v9, v6}, Landroidx/constraintlayout/core/LinearSystem;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    const/4 v9, 0x0

    iput-object v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->M0:Ljava/lang/ref/WeakReference;

    goto :goto_47

    :catch_1
    move-exception v0

    :goto_45
    const/4 v9, 0x0

    :goto_46
    const/4 v14, 0x1

    goto/16 :goto_4a

    :catch_2
    move-exception v0

    move-object/from16 v21, v9

    goto :goto_45

    :cond_61
    move-object/from16 v21, v9

    :goto_47
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->O0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_62

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_62

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->O0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v9

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    const/4 v14, 0x0

    invoke-virtual {v8, v9, v0, v14, v6}, Landroidx/constraintlayout/core/LinearSystem;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    const/4 v9, 0x0

    iput-object v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->O0:Ljava/lang/ref/WeakReference;

    :cond_62
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->N0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_63

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_63

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->N0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v9, v22

    :try_start_3
    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v14

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v22, v9

    const/4 v9, 0x0

    :try_start_4
    invoke-virtual {v8, v0, v14, v9, v6}, Landroidx/constraintlayout/core/LinearSystem;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    const/4 v9, 0x0

    iput-object v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->N0:Ljava/lang/ref/WeakReference;

    goto :goto_48

    :catch_3
    move-exception v0

    move-object/from16 v22, v9

    goto :goto_45

    :cond_63
    :goto_48
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->P0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_64

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_64

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->P0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    invoke-virtual {v8, v0}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    const/4 v14, 0x0

    invoke-virtual {v8, v9, v0, v14, v6}, Landroidx/constraintlayout/core/LinearSystem;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    const/4 v9, 0x0

    :try_start_6
    iput-object v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->P0:Ljava/lang/ref/WeakReference;

    goto :goto_49

    :catch_4
    move-exception v0

    goto :goto_46

    :catch_5
    move-exception v0

    goto :goto_45

    :cond_64
    const/4 v9, 0x0

    :goto_49
    invoke-virtual {v8}, Landroidx/constraintlayout/core/LinearSystem;->p()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move/from16 v23, v12

    const/4 v14, 0x1

    goto :goto_4b

    :goto_4a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    move/from16 v23, v12

    const-string v12, "EXCEPTION : "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_4b
    sget-object v0, Landroidx/constraintlayout/core/widgets/Optimizer;->a:[Z

    if-eqz v14, :cond_68

    const/16 v17, 0x2

    const/16 v20, 0x0

    aput-boolean v20, v0, v17

    const/16 v6, 0x40

    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->e0(I)Z

    move-result v9

    invoke-virtual {v1, v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y(Landroidx/constraintlayout/core/LinearSystem;Z)V

    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->w0:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v6, 0x0

    const/4 v14, 0x0

    :goto_4c
    if-ge v6, v12, :cond_67

    move-object/from16 v24, v0

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->w0:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v0, v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y(Landroidx/constraintlayout/core/LinearSystem;Z)V

    move/from16 v25, v6

    iget v6, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i:I

    move/from16 v26, v9

    const/4 v9, -0x1

    if-ne v6, v9, :cond_65

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j:I

    if-eq v0, v9, :cond_66

    :cond_65
    const/4 v14, 0x1

    :cond_66
    add-int/lit8 v6, v25, 0x1

    move-object/from16 v0, v24

    move/from16 v9, v26

    goto :goto_4c

    :cond_67
    move-object/from16 v24, v0

    const/4 v9, -0x1

    goto :goto_4e

    :cond_68
    move-object/from16 v24, v0

    const/4 v9, -0x1

    invoke-virtual {v1, v8, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y(Landroidx/constraintlayout/core/LinearSystem;Z)V

    const/4 v0, 0x0

    :goto_4d
    if-ge v0, v3, :cond_69

    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->w0:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v6, v8, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y(Landroidx/constraintlayout/core/LinearSystem;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    :cond_69
    const/4 v14, 0x0

    :goto_4e
    const/16 v0, 0x8

    if-eqz v13, :cond_6d

    if-ge v15, v0, :cond_6d

    const/16 v17, 0x2

    aget-boolean v6, v24, v17

    if-eqz v6, :cond_6c

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_4f
    if-ge v6, v3, :cond_6a

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->w0:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move/from16 v25, v3

    iget v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()I

    move-result v26

    add-int v3, v26, v3

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    iget v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    move-result v0

    add-int/2addr v0, v3

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v25

    const/16 v0, 0x8

    goto :goto_4f

    :cond_6a
    move/from16 v25, v3

    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g0:I

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_6b

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()I

    move-result v9

    if-ge v9, v0, :cond_6b

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W(I)V

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v20, 0x0

    aput-object v6, v0, v20

    const/4 v14, 0x1

    const/16 v23, 0x1

    :cond_6b
    if-ne v7, v6, :cond_6e

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    move-result v0

    if-ge v0, v3, :cond_6e

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R(I)V

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v16, 0x1

    aput-object v6, v0, v16

    const/4 v14, 0x1

    const/16 v23, 0x1

    goto :goto_50

    :cond_6c
    move/from16 v25, v3

    goto :goto_50

    :cond_6d
    move/from16 v25, v3

    const/16 v17, 0x2

    :cond_6e
    :goto_50
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()I

    move-result v3

    if-le v0, v3, :cond_6f

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W(I)V

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v20, 0x0

    aput-object v3, v0, v20

    const/4 v14, 0x1

    const/16 v23, 0x1

    :cond_6f
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g0:I

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    move-result v3

    if-le v0, v3, :cond_70

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R(I)V

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x1

    aput-object v3, v0, v6

    move v14, v6

    move/from16 v23, v14

    goto :goto_51

    :cond_70
    const/4 v6, 0x1

    :goto_51
    if-nez v23, :cond_72

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v20, 0x0

    aget-object v0, v0, v20

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_71

    if-lez v2, :cond_71

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()I

    move-result v0

    if-le v0, v2, :cond_71

    iput-boolean v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->K0:Z

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v9, v0, v20

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W(I)V

    move v14, v6

    move/from16 v23, v14

    :cond_71
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v6

    if-ne v0, v3, :cond_72

    if-lez v4, :cond_72

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    move-result v0

    if-le v0, v4, :cond_72

    iput-boolean v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->L0:Z

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v3, v0, v6

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R(I)V

    const/16 v0, 0x8

    const/4 v12, 0x1

    const/4 v14, 0x1

    goto :goto_52

    :cond_72
    move/from16 v12, v23

    const/16 v0, 0x8

    :goto_52
    if-le v15, v0, :cond_73

    const/4 v14, 0x0

    :cond_73
    move v0, v15

    move-object/from16 v9, v21

    move/from16 v3, v25

    const/16 v6, 0x40

    goto/16 :goto_43

    :cond_74
    move/from16 v23, v12

    iput-object v10, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->w0:Ljava/util/ArrayList;

    if-eqz v23, :cond_75

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v20, 0x0

    aput-object v5, v0, v20

    const/16 v16, 0x1

    aput-object v7, v0, v16

    :cond_75
    iget-object v0, v8, Landroidx/constraintlayout/core/LinearSystem;->m:Landroidx/constraintlayout/core/Cache;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->K(Landroidx/constraintlayout/core/Cache;)V

    return-void
.end method

.method public final a0(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V
    .locals 5

    const/4 v0, 0x1

    if-nez p2, :cond_1

    iget p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->F0:I

    add-int/2addr p2, v0

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->I0:[Landroidx/constraintlayout/core/widgets/ChainHead;

    array-length v2, v1

    if-lt p2, v2, :cond_0

    array-length p2, v1

    mul-int/lit8 p2, p2, 0x2

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->I0:[Landroidx/constraintlayout/core/widgets/ChainHead;

    :cond_0
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->I0:[Landroidx/constraintlayout/core/widgets/ChainHead;

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->F0:I

    new-instance v2, Landroidx/constraintlayout/core/widgets/ChainHead;

    const/4 v3, 0x0

    iget-boolean v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->B0:Z

    invoke-direct {v2, p1, v3, v4}, Landroidx/constraintlayout/core/widgets/ChainHead;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V

    aput-object v2, p2, v1

    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->F0:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->F0:I

    return-void

    :cond_1
    if-ne p2, v0, :cond_3

    iget p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->G0:I

    add-int/2addr p2, v0

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->H0:[Landroidx/constraintlayout/core/widgets/ChainHead;

    array-length v2, v1

    if-lt p2, v2, :cond_2

    array-length p2, v1

    mul-int/lit8 p2, p2, 0x2

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->H0:[Landroidx/constraintlayout/core/widgets/ChainHead;

    :cond_2
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->H0:[Landroidx/constraintlayout/core/widgets/ChainHead;

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->G0:I

    new-instance v2, Landroidx/constraintlayout/core/widgets/ChainHead;

    iget-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->B0:Z

    invoke-direct {v2, p1, v0, v3}, Landroidx/constraintlayout/core/widgets/ChainHead;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V

    aput-object v2, p2, v1

    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->G0:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->G0:I

    :cond_3
    return-void
.end method

.method public final b0(Landroidx/constraintlayout/core/LinearSystem;)V
    .locals 12

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->e0(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f(Landroidx/constraintlayout/core/LinearSystem;Z)V

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->w0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->w0:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Z

    aput-boolean v2, v7, v2

    aput-boolean v2, v7, v5

    instance-of v6, v6, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v6, :cond_0

    move v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_8

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_8

    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->w0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v6, :cond_7

    check-cast v4, Landroidx/constraintlayout/core/widgets/Barrier;

    move v6, v2

    :goto_2
    iget v7, v4, Landroidx/constraintlayout/core/widgets/HelperWidget;->x0:I

    if-ge v6, v7, :cond_7

    iget-object v7, v4, Landroidx/constraintlayout/core/widgets/HelperWidget;->w0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v7, v7, v6

    iget-boolean v8, v4, Landroidx/constraintlayout/core/widgets/Barrier;->z0:Z

    if-nez v8, :cond_2

    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g()Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_4

    :cond_2
    iget v8, v4, Landroidx/constraintlayout/core/widgets/Barrier;->y0:I

    if-eqz v8, :cond_5

    if-ne v8, v5, :cond_3

    goto :goto_3

    :cond_3
    const/4 v9, 0x2

    if-eq v8, v9, :cond_4

    const/4 v9, 0x3

    if-ne v8, v9, :cond_6

    :cond_4
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Z

    aput-boolean v5, v7, v5

    goto :goto_4

    :cond_5
    :goto_3
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Z

    aput-boolean v5, v7, v2

    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->Q0:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    move v4, v2

    :goto_5
    if-ge v4, v1, :cond_c

    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->w0:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v6, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    if-nez v7, :cond_9

    instance-of v8, v6, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v8, :cond_b

    :cond_9
    if-eqz v7, :cond_a

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    invoke-virtual {v6, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f(Landroidx/constraintlayout/core/LinearSystem;Z)V

    :cond_b
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_c
    :goto_7
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_11

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    check-cast v7, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    move v8, v2

    :goto_8
    iget v9, v7, Landroidx/constraintlayout/core/widgets/HelperWidget;->x0:I

    if-ge v8, v9, :cond_d

    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/HelperWidget;->w0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v9, v9, v8

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {v7, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f(Landroidx/constraintlayout/core/LinearSystem;Z)V

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_f
    :goto_9
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v6

    if-ne v4, v6, :cond_c

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v6, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f(Landroidx/constraintlayout/core/LinearSystem;Z)V

    goto :goto_a

    :cond_10
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    goto :goto_7

    :cond_11
    sget-boolean v3, Landroidx/constraintlayout/core/LinearSystem;->q:Z

    if-eqz v3, :cond_16

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_14

    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->w0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    if-nez v6, :cond_13

    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v6, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {v9, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_14
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, v2

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v3, :cond_15

    move v10, v2

    goto :goto_d

    :cond_15
    move v10, v5

    :goto_d
    const/4 v11, 0x0

    move-object v7, p0

    move-object v6, p0

    move-object v8, p1

    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-static {v6, v8, p1}, Landroidx/constraintlayout/core/widgets/Optimizer;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    invoke-virtual {p1, v8, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f(Landroidx/constraintlayout/core/LinearSystem;Z)V

    goto :goto_e

    :cond_16
    move-object v6, p0

    move-object v8, p1

    move p0, v2

    :goto_f
    if-ge p0, v1, :cond_1d

    iget-object p1, v6, Landroidx/constraintlayout/core/widgets/WidgetContainer;->w0:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v3, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-eqz v3, :cond_1a

    iget-object v3, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v3, v2

    aget-object v3, v3, v5

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v7, :cond_17

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_17
    if-ne v3, v7, :cond_18

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_18
    invoke-virtual {p1, v8, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f(Landroidx/constraintlayout/core/LinearSystem;Z)V

    if-ne v4, v7, :cond_19

    invoke-virtual {p1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_19
    if-ne v3, v7, :cond_1c

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_10

    :cond_1a
    invoke-static {v6, v8, p1}, Landroidx/constraintlayout/core/widgets/Optimizer;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    instance-of v3, p1, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    if-nez v3, :cond_1c

    instance-of v3, p1, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v3, :cond_1b

    goto :goto_10

    :cond_1b
    invoke-virtual {p1, v8, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f(Landroidx/constraintlayout/core/LinearSystem;Z)V

    :cond_1c
    :goto_10
    add-int/lit8 p0, p0, 0x1

    goto :goto_f

    :cond_1d
    iget p0, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->F0:I

    const/4 p1, 0x0

    if-lez p0, :cond_1e

    invoke-static {v6, v8, p1, v2}, Landroidx/constraintlayout/core/widgets/Chain;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V

    :cond_1e
    iget p0, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->G0:I

    if-lez p0, :cond_1f

    invoke-static {v6, v8, p1, v5}, Landroidx/constraintlayout/core/widgets/Chain;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V

    :cond_1f
    return-void
.end method

.method public final c0(IIIIIII)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p6

    iput v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->D0:I

    move/from16 v4, p7

    iput v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->E0:I

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->x0:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->c:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->a:Ljava/util/ArrayList;

    iget-object v7, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->A0:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->w0:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()I

    move-result v9

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    move-result v10

    const/16 v11, 0x80

    invoke-static {v1, v11}, Landroidx/constraintlayout/core/widgets/Optimizer;->b(II)Z

    move-result v11

    const/16 v12, 0x40

    if-nez v11, :cond_1

    invoke-static {v1, v12}, Landroidx/constraintlayout/core/widgets/Optimizer;->b(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/16 p1, 0x0

    if-eqz v1, :cond_a

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v8, :cond_a

    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->w0:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/16 p7, 0x0

    iget-object v13, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v16, 0x1

    aget-object v14, v13, p7

    move/from16 v17, v1

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v14, v1, :cond_2

    move/from16 v14, v16

    goto :goto_3

    :cond_2
    move/from16 v14, p7

    :goto_3
    aget-object v13, v13, v16

    if-ne v13, v1, :cond_3

    move/from16 v1, v16

    goto :goto_4

    :cond_3
    move/from16 v1, p7

    :goto_4
    if-eqz v14, :cond_4

    if-eqz v1, :cond_4

    iget v1, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:F

    cmpl-float v1, v1, p1

    if-lez v1, :cond_4

    move/from16 v1, v16

    goto :goto_5

    :cond_4
    move/from16 v1, p7

    :goto_5
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C()Z

    move-result v13

    if-eqz v13, :cond_6

    if-eqz v1, :cond_6

    :cond_5
    :goto_6
    move/from16 v1, p7

    goto :goto_7

    :cond_6
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D()Z

    move-result v13

    if-eqz v13, :cond_7

    if-eqz v1, :cond_7

    goto :goto_6

    :cond_7
    instance-of v1, v12, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    if-eqz v1, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_6

    :cond_9
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v17

    const/16 v12, 0x40

    goto :goto_2

    :cond_a
    move/from16 v17, v1

    const/16 p7, 0x0

    const/16 v16, 0x1

    move/from16 v1, v17

    :goto_7
    const/high16 v12, 0x40000000    # 2.0f

    if-ne v2, v12, :cond_b

    if-eq v3, v12, :cond_c

    :cond_b
    if-eqz v11, :cond_d

    :cond_c
    move/from16 v13, v16

    goto :goto_8

    :cond_d
    move/from16 v13, p7

    :goto_8
    and-int/2addr v1, v13

    if-eqz v1, :cond_18

    iget-object v14, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->E:[I

    aget v14, v14, p7

    move/from16 v15, p3

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    iget-object v15, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->E:[I

    aget v15, v15, v16

    move/from16 v13, p5

    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    iget-object v15, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->y0:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    if-ne v2, v12, :cond_e

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()I

    move-result v12

    if-eq v12, v14, :cond_e

    invoke-virtual {v0, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W(I)V

    move/from16 v12, v16

    iput-boolean v12, v15, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->b:Z

    :goto_9
    const/high16 v14, 0x40000000    # 2.0f

    goto :goto_a

    :cond_e
    move/from16 v12, v16

    goto :goto_9

    :goto_a
    if-ne v3, v14, :cond_10

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    move-result v14

    if-eq v14, v13, :cond_f

    invoke-virtual {v0, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R(I)V

    iput-boolean v12, v15, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->b:Z

    :cond_f
    const/high16 v14, 0x40000000    # 2.0f

    :cond_10
    if-ne v2, v14, :cond_11

    if-ne v3, v14, :cond_11

    invoke-virtual {v15, v11}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->e(Z)Z

    move-result v11

    move/from16 v19, v1

    move/from16 v20, v8

    move v8, v11

    const/4 v1, 0x2

    const/high16 v14, 0x40000000    # 2.0f

    goto/16 :goto_e

    :cond_11
    iget-object v12, v15, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-boolean v13, v15, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->b:Z

    if-eqz v13, :cond_13

    iget-object v13, v12, Landroidx/constraintlayout/core/widgets/WidgetContainer;->w0:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m()V

    move/from16 v19, v1

    move/from16 v1, p7

    iput-boolean v1, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    move/from16 v20, v8

    iget-object v8, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    move-object/from16 p3, v13

    iget-object v13, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iput-boolean v1, v13, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    iput-boolean v1, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g:Z

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->n()V

    iget-object v8, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v13, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iput-boolean v1, v13, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    iput-boolean v1, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g:Z

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->m()V

    move-object/from16 v13, p3

    move/from16 v1, v19

    move/from16 v8, v20

    goto :goto_b

    :cond_12
    move/from16 v19, v1

    move/from16 v20, v8

    move/from16 v1, p7

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m()V

    iput-boolean v1, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    iget-object v8, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v13, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iput-boolean v1, v13, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    iput-boolean v1, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g:Z

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->n()V

    iget-object v8, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v13, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iput-boolean v1, v13, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    iput-boolean v1, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g:Z

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->m()V

    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->c()V

    goto :goto_c

    :cond_13
    move/from16 v19, v1

    move/from16 v20, v8

    move/from16 v1, p7

    :goto_c
    iget-object v8, v15, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v15, v8}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput v1, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    iput v1, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    iget-object v8, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v8, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    iget-object v8, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v8, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    const/high16 v14, 0x40000000    # 2.0f

    if-ne v2, v14, :cond_14

    invoke-virtual {v15, v1, v11}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->f(IZ)Z

    move-result v8

    const/4 v1, 0x1

    goto :goto_d

    :cond_14
    const/4 v1, 0x0

    const/4 v8, 0x1

    :goto_d
    if-ne v3, v14, :cond_15

    const/4 v12, 0x1

    invoke-virtual {v15, v12, v11}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->f(IZ)Z

    move-result v11

    and-int/2addr v8, v11

    add-int/lit8 v1, v1, 0x1

    :cond_15
    :goto_e
    if-eqz v8, :cond_19

    if-ne v2, v14, :cond_16

    const/4 v2, 0x1

    goto :goto_f

    :cond_16
    const/4 v2, 0x0

    :goto_f
    if-ne v3, v14, :cond_17

    const/4 v3, 0x1

    goto :goto_10

    :cond_17
    const/4 v3, 0x0

    :goto_10
    invoke-virtual {v0, v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->X(ZZ)V

    goto :goto_11

    :cond_18
    move/from16 v19, v1

    move/from16 v20, v8

    const/4 v1, 0x0

    const/4 v8, 0x0

    :cond_19
    :goto_11
    if-eqz v8, :cond_1a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3f

    :cond_1a
    iget v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->J0:I

    if-lez v20, :cond_27

    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->w0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x40

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->e0(I)Z

    move-result v3

    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->A0:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    const/4 v11, 0x0

    :goto_12
    if-ge v11, v2, :cond_26

    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->w0:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v13, v12, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v13, :cond_1b

    :goto_13
    move/from16 p2, v2

    move/from16 p3, v3

    :goto_14
    const/4 v13, 0x0

    goto/16 :goto_16

    :cond_1b
    instance-of v13, v12, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v13, :cond_1c

    goto :goto_13

    :cond_1c
    iget-boolean v13, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Z

    if-eqz v13, :cond_1d

    goto :goto_13

    :cond_1d
    if-eqz v3, :cond_1e

    iget-object v13, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    if-eqz v13, :cond_1e

    iget-object v14, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    if-eqz v14, :cond_1e

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v13, v13, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v13, :cond_1e

    iget-object v13, v14, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v13, v13, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v13, :cond_1e

    goto :goto_13

    :cond_1e
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v14

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v15

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move/from16 p2, v2

    if-ne v14, v13, :cond_1f

    iget v2, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    move/from16 p3, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_20

    if-ne v15, v13, :cond_20

    iget v2, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:I

    if-eq v2, v3, :cond_20

    move v2, v3

    goto :goto_15

    :cond_1f
    move/from16 p3, v3

    const/4 v3, 0x1

    :cond_20
    const/4 v2, 0x0

    :goto_15
    if-nez v2, :cond_24

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->e0(I)Z

    move-result v18

    if-eqz v18, :cond_24

    instance-of v3, v12, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    if-nez v3, :cond_24

    if-ne v14, v13, :cond_21

    iget v3, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    if-nez v3, :cond_21

    if-eq v15, v13, :cond_21

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C()Z

    move-result v3

    if-nez v3, :cond_21

    const/4 v2, 0x1

    :cond_21
    if-ne v15, v13, :cond_22

    iget v3, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:I

    if-nez v3, :cond_22

    if-eq v14, v13, :cond_22

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C()Z

    move-result v3

    if-nez v3, :cond_22

    const/4 v2, 0x1

    :cond_22
    if-eq v14, v13, :cond_23

    if-ne v15, v13, :cond_24

    :cond_23
    iget v3, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:F

    cmpl-float v3, v3, p1

    if-lez v3, :cond_24

    const/4 v2, 0x1

    :cond_24
    if-eqz v2, :cond_25

    goto :goto_14

    :cond_25
    const/4 v13, 0x0

    invoke-virtual {v4, v13, v12, v8}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->a(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)Z

    :goto_16
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, p2

    move/from16 v3, p3

    goto/16 :goto_12

    :cond_26
    const/4 v13, 0x0

    invoke-interface {v8}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;->a()V

    goto :goto_17

    :cond_27
    const/4 v13, 0x0

    :goto_17
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->c(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v20, :cond_28

    invoke-virtual {v4, v0, v13, v9, v10}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    :cond_28
    if-lez v2, :cond_3e

    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v8, v3, v13

    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v11, :cond_29

    const/4 v12, 0x1

    :goto_18
    const/16 v16, 0x1

    goto :goto_19

    :cond_29
    move v12, v13

    goto :goto_18

    :goto_19
    aget-object v3, v3, v16

    if-ne v3, v11, :cond_2a

    const/4 v3, 0x1

    goto :goto_1a

    :cond_2a
    move v3, v13

    :goto_1a
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()I

    move-result v8

    iget v11, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    move-result v11

    iget v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g0:I

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v11, v5

    move v14, v8

    move v5, v13

    move v8, v5

    :goto_1b
    if-ge v5, v2, :cond_30

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v13, v15, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    if-nez v13, :cond_2b

    move/from16 p1, v3

    move/from16 v18, v5

    goto/16 :goto_1d

    :cond_2b
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()I

    move-result v13

    move/from16 p1, v3

    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    move-result v3

    move/from16 v18, v5

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v15, v7}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->a(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)Z

    move-result v20

    or-int v5, v8, v20

    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()I

    move-result v8

    move/from16 p2, v5

    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    move-result v5

    if-eq v8, v13, :cond_2d

    invoke-virtual {v15, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W(I)V

    if-eqz v12, :cond_2c

    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()I

    move-result v8

    iget v13, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    add-int/2addr v8, v13

    if-le v8, v14, :cond_2c

    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()I

    move-result v8

    iget v13, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    add-int/2addr v8, v13

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v15, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v13

    add-int/2addr v13, v8

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v14

    :cond_2c
    const/4 v8, 0x1

    goto :goto_1c

    :cond_2d
    move/from16 v8, p2

    :goto_1c
    if-eq v5, v3, :cond_2f

    invoke-virtual {v15, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R(I)V

    if-eqz p1, :cond_2e

    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()I

    move-result v3

    iget v5, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:I

    add-int/2addr v3, v5

    if-le v3, v11, :cond_2e

    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()I

    move-result v3

    iget v5, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:I

    add-int/2addr v3, v5

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v15, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    :cond_2e
    const/4 v8, 0x1

    :cond_2f
    check-cast v15, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    iget-boolean v3, v15, Landroidx/constraintlayout/core/widgets/VirtualLayout;->E0:Z

    or-int/2addr v3, v8

    move v8, v3

    :goto_1d
    add-int/lit8 v5, v18, 0x1

    move/from16 v3, p1

    const/4 v13, 0x0

    goto/16 :goto_1b

    :cond_30
    move/from16 p1, v3

    const/4 v3, 0x0

    :goto_1e
    const/4 v5, 0x2

    if-ge v3, v5, :cond_3e

    move v13, v8

    const/4 v8, 0x0

    :goto_1f
    if-ge v8, v2, :cond_3d

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v5, v15, Landroidx/constraintlayout/core/widgets/Helper;

    if-eqz v5, :cond_32

    instance-of v5, v15, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    if-eqz v5, :cond_31

    goto :goto_21

    :cond_31
    :goto_20
    move/from16 p2, v2

    goto :goto_22

    :cond_32
    :goto_21
    instance-of v5, v15, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v5, :cond_33

    goto :goto_20

    :cond_33
    iget v5, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k0:I

    move/from16 p2, v2

    const/16 v2, 0x8

    if-ne v5, v2, :cond_34

    goto :goto_22

    :cond_34
    if-eqz v19, :cond_35

    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v2, :cond_35

    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v2, :cond_35

    goto :goto_22

    :cond_35
    instance-of v2, v15, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    if-eqz v2, :cond_36

    :goto_22
    move/from16 p3, v3

    move-object/from16 v18, v6

    move/from16 v20, v8

    goto/16 :goto_23

    :cond_36
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()I

    move-result v2

    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    move-result v5

    move-object/from16 v18, v6

    iget v6, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    move/from16 v20, v8

    const/4 v8, 0x1

    if-ne v3, v8, :cond_37

    const/4 v8, 0x2

    :cond_37
    invoke-virtual {v4, v8, v15, v7}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->a(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)Z

    move-result v8

    or-int/2addr v8, v13

    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()I

    move-result v13

    move/from16 p3, v3

    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    move-result v3

    if-eq v13, v2, :cond_39

    invoke-virtual {v15, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W(I)V

    if-eqz v12, :cond_38

    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()I

    move-result v2

    iget v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    add-int/2addr v2, v8

    if-le v2, v14, :cond_38

    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()I

    move-result v2

    iget v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    add-int/2addr v2, v8

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v15, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v8

    add-int/2addr v8, v2

    invoke-static {v14, v8}, Ljava/lang/Math;->max(II)I

    move-result v14

    :cond_38
    const/4 v8, 0x1

    :cond_39
    if-eq v3, v5, :cond_3b

    invoke-virtual {v15, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R(I)V

    if-eqz p1, :cond_3a

    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()I

    move-result v2

    iget v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:I

    add-int/2addr v2, v3

    if-le v2, v11, :cond_3a

    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()I

    move-result v2

    iget v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:I

    add-int/2addr v2, v3

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v15, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    :cond_3a
    const/4 v8, 0x1

    :cond_3b
    iget-boolean v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G:Z

    if-eqz v2, :cond_3c

    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    if-eq v6, v2, :cond_3c

    const/4 v13, 0x1

    goto :goto_23

    :cond_3c
    move v13, v8

    :goto_23
    add-int/lit8 v8, v20, 0x1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v6, v18

    const/4 v5, 0x2

    goto/16 :goto_1f

    :cond_3d
    move/from16 p2, v2

    move/from16 p3, v3

    move-object/from16 v18, v6

    if-eqz v13, :cond_3e

    add-int/lit8 v3, p3, 0x1

    invoke-virtual {v4, v0, v3, v9, v10}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    move/from16 v2, p2

    move-object/from16 v6, v18

    const/4 v8, 0x0

    goto/16 :goto_1e

    :cond_3e
    iput v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->J0:I

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->e0(I)Z

    move-result v0

    sput-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->q:Z

    :cond_3f
    return-void
.end method

.method public final e0(I)Z
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->J0:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final s(Ljava/lang/StringBuilder;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  actualWidth:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  actualHeight:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->w0:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s(Ljava/lang/StringBuilder;)V

    const-string v0, ",\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p0, "}"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
