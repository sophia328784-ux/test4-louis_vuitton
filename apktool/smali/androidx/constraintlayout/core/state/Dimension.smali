.class public Landroidx/constraintlayout/core/state/Dimension;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;

.field public static final k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;

.field public static final m:Ljava/lang/String;


# instance fields
.field public a:I

.field public b:I

.field public c:F

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/String;

    const-string v1, "FIXED_DIMENSION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/constraintlayout/core/state/Dimension;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    const-string v1, "WRAP_DIMENSION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/constraintlayout/core/state/Dimension;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    const-string v1, "SPREAD_DIMENSION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/constraintlayout/core/state/Dimension;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    const-string v1, "PARENT_DIMENSION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/constraintlayout/core/state/Dimension;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    const-string v1, "PERCENT_DIMENSION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/constraintlayout/core/state/Dimension;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    const-string v1, "RATIO_DIMENSION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/constraintlayout/core/state/Dimension;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/state/Dimension;->a:I

    const v1, 0x7fffffff

    iput v1, p0, Landroidx/constraintlayout/core/state/Dimension;->b:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/constraintlayout/core/state/Dimension;->c:F

    iput v0, p0, Landroidx/constraintlayout/core/state/Dimension;->d:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/core/state/Dimension;->e:Ljava/lang/String;

    iput-boolean v0, p0, Landroidx/constraintlayout/core/state/Dimension;->g:Z

    iput-object p1, p0, Landroidx/constraintlayout/core/state/Dimension;->f:Ljava/lang/String;

    return-void
.end method

.method public static b(I)Landroidx/constraintlayout/core/state/Dimension;
    .locals 2

    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/constraintlayout/core/state/Dimension;->f:Ljava/lang/String;

    iput p0, v0, Landroidx/constraintlayout/core/state/Dimension;->d:I

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Landroidx/constraintlayout/core/state/Dimension;
    .locals 3

    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/core/state/Dimension;->a:I

    const v2, 0x7fffffff

    iput v2, v0, Landroidx/constraintlayout/core/state/Dimension;->b:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Landroidx/constraintlayout/core/state/Dimension;->c:F

    iput v1, v0, Landroidx/constraintlayout/core/state/Dimension;->d:I

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/constraintlayout/core/state/Dimension;->e:Ljava/lang/String;

    iput-object p0, v0, Landroidx/constraintlayout/core/state/Dimension;->f:Ljava/lang/String;

    const/4 p0, 0x1

    iput-boolean p0, v0, Landroidx/constraintlayout/core/state/Dimension;->g:Z

    return-object v0
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V
    .locals 8

    iget-object v0, p0, Landroidx/constraintlayout/core/state/Dimension;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Landroidx/constraintlayout/core/state/Dimension;->g:Z

    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->k:Ljava/lang/String;

    const v2, 0x7fffffff

    const/4 v3, 0x2

    sget-object v4, Landroidx/constraintlayout/core/state/Dimension;->l:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    sget-object v7, Landroidx/constraintlayout/core/state/Dimension;->i:Ljava/lang/String;

    if-nez p2, :cond_9

    if-eqz v0, :cond_3

    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    iget-object p2, p0, Landroidx/constraintlayout/core/state/Dimension;->f:Ljava/lang/String;

    if-ne p2, v7, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    if-ne p2, v4, :cond_2

    goto :goto_0

    :cond_2
    move v3, v6

    :goto_0
    iget p2, p0, Landroidx/constraintlayout/core/state/Dimension;->a:I

    iget v0, p0, Landroidx/constraintlayout/core/state/Dimension;->b:I

    iget p0, p0, Landroidx/constraintlayout/core/state/Dimension;->c:F

    invoke-virtual {p1, v3, p2, v0, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T(IIIF)V

    return-void

    :cond_3
    iget p2, p0, Landroidx/constraintlayout/core/state/Dimension;->a:I

    if-lez p2, :cond_5

    if-gez p2, :cond_4

    iput v6, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    goto :goto_1

    :cond_4
    iput p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    :cond_5
    :goto_1
    iget p2, p0, Landroidx/constraintlayout/core/state/Dimension;->b:I

    if-ge p2, v2, :cond_6

    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->E:[I

    aput p2, v0, v6

    :cond_6
    iget-object p2, p0, Landroidx/constraintlayout/core/state/Dimension;->f:Ljava/lang/String;

    if-ne p2, v7, :cond_7

    sget-object p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    return-void

    :cond_7
    if-ne p2, v1, :cond_8

    sget-object p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    return-void

    :cond_8
    if-nez p2, :cond_12

    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    iget p0, p0, Landroidx/constraintlayout/core/state/Dimension;->d:I

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W(I)V

    return-void

    :cond_9
    if-eqz v0, :cond_c

    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    iget-object p2, p0, Landroidx/constraintlayout/core/state/Dimension;->f:Ljava/lang/String;

    if-ne p2, v7, :cond_a

    move v3, v5

    goto :goto_2

    :cond_a
    if-ne p2, v4, :cond_b

    goto :goto_2

    :cond_b
    move v3, v6

    :goto_2
    iget p2, p0, Landroidx/constraintlayout/core/state/Dimension;->a:I

    iget v0, p0, Landroidx/constraintlayout/core/state/Dimension;->b:I

    iget p0, p0, Landroidx/constraintlayout/core/state/Dimension;->c:F

    invoke-virtual {p1, v3, p2, v0, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V(IIIF)V

    return-void

    :cond_c
    iget p2, p0, Landroidx/constraintlayout/core/state/Dimension;->a:I

    if-lez p2, :cond_e

    if-gez p2, :cond_d

    iput v6, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g0:I

    goto :goto_3

    :cond_d
    iput p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g0:I

    :cond_e
    :goto_3
    iget p2, p0, Landroidx/constraintlayout/core/state/Dimension;->b:I

    if-ge p2, v2, :cond_f

    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->E:[I

    aput p2, v0, v5

    :cond_f
    iget-object p2, p0, Landroidx/constraintlayout/core/state/Dimension;->f:Ljava/lang/String;

    if-ne p2, v7, :cond_10

    sget-object p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    return-void

    :cond_10
    if-ne p2, v1, :cond_11

    sget-object p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    return-void

    :cond_11
    if-nez p2, :cond_12

    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    iget p0, p0, Landroidx/constraintlayout/core/state/Dimension;->d:I

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R(I)V

    :cond_12
    return-void
.end method
