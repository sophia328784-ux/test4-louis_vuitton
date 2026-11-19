.class public Landroidx/constraintlayout/core/state/helpers/GuidelineReference;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/core/state/helpers/Facade;
.implements Landroidx/constraintlayout/core/state/Reference;


# instance fields
.field public final a:Landroidx/constraintlayout/core/state/State;

.field public b:I

.field public c:Landroidx/constraintlayout/core/widgets/Guideline;

.field public d:I

.field public e:I

.field public f:F

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/state/State;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->d:I

    iput v0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->e:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->f:F

    iput-object p1, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->a:Landroidx/constraintlayout/core/state/State;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 1

    instance-of v0, p1, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/constraintlayout/core/widgets/Guideline;

    iput-object p1, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->c:Landroidx/constraintlayout/core/widgets/Guideline;

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->c:Landroidx/constraintlayout/core/widgets/Guideline;

    return-void
.end method

.method public final apply()V
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->c:Landroidx/constraintlayout/core/widgets/Guideline;

    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->b:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/Guideline;->a0(I)V

    iget v0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->d:I

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object p0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->c:Landroidx/constraintlayout/core/widgets/Guideline;

    if-le v0, v2, :cond_0

    iput v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->w0:F

    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->x0:I

    iput v2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->y0:I

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->e:I

    iget-object v3, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->c:Landroidx/constraintlayout/core/widgets/Guideline;

    if-eq v0, v2, :cond_3

    if-le v0, v2, :cond_2

    iput v1, v3, Landroidx/constraintlayout/core/widgets/Guideline;->w0:F

    iput v2, v3, Landroidx/constraintlayout/core/widgets/Guideline;->x0:I

    iput v0, v3, Landroidx/constraintlayout/core/widgets/Guideline;->y0:I

    return-void

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_3
    iget p0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->f:F

    cmpl-float v0, p0, v1

    if-lez v0, :cond_4

    iput p0, v3, Landroidx/constraintlayout/core/widgets/Guideline;->w0:F

    iput v2, v3, Landroidx/constraintlayout/core/widgets/Guideline;->x0:I

    iput v2, v3, Landroidx/constraintlayout/core/widgets/Guideline;->y0:I

    return-void

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final b()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->c:Landroidx/constraintlayout/core/widgets/Guideline;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/core/widgets/Guideline;

    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/Guideline;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->c:Landroidx/constraintlayout/core/widgets/Guideline;

    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->c:Landroidx/constraintlayout/core/widgets/Guideline;

    return-object p0
.end method

.method public final c()Landroidx/constraintlayout/core/state/helpers/Facade;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->g:Ljava/lang/String;

    return-object p0
.end method
