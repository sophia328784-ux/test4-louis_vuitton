.class public Landroidx/constraintlayout/core/state/WidgetFrame;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:I

.field public final r:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->b:I

    .line 95
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->c:I

    .line 96
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->d:I

    .line 97
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->e:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 98
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->f:F

    .line 99
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->g:F

    .line 100
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->h:F

    .line 101
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->i:F

    .line 102
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->j:F

    .line 103
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->k:F

    .line 104
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->l:F

    .line 105
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->m:F

    .line 106
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->n:F

    .line 107
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->o:F

    .line 108
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->p:F

    .line 109
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->q:I

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->r:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/state/WidgetFrame;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->b:I

    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->c:I

    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->d:I

    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->e:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->f:F

    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->g:F

    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->h:F

    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->i:F

    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->j:F

    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->k:F

    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->l:F

    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->m:F

    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->n:F

    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->o:F

    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->p:F

    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->q:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->r:Ljava/util/HashMap;

    iget-object v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->b:I

    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->b:I

    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->c:I

    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->c:I

    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->d:I

    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->d:I

    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->e:I

    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->e:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/WidgetFrame;->c(Landroidx/constraintlayout/core/state/WidgetFrame;)V

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->b:I

    .line 75
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->c:I

    .line 76
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->d:I

    .line 77
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->e:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 78
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->f:F

    .line 79
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->g:F

    .line 80
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->h:F

    .line 81
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->i:F

    .line 82
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->j:F

    .line 83
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->k:F

    .line 84
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->l:F

    .line 85
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->m:F

    .line 86
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->n:F

    .line 87
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->o:F

    .line 88
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->p:F

    .line 89
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->q:I

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->r:Ljava/util/HashMap;

    .line 91
    iput-object p1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    return-void
.end method

.method public static a(FLjava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ",\n"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static b(ILjava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",\n"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final c(Landroidx/constraintlayout/core/state/WidgetFrame;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->f:F

    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->f:F

    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->g:F

    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->g:F

    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->h:F

    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->h:F

    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->i:F

    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->i:F

    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->j:F

    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->j:F

    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->k:F

    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->k:F

    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->l:F

    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->l:F

    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->m:F

    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->m:F

    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->n:F

    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->n:F

    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->o:F

    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->o:F

    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->p:F

    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->p:F

    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->q:I

    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->q:I

    iget-object p0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->r:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    iget-object p1, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->r:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/motion/CustomVariable;

    iget-object v1, v0, Landroidx/constraintlayout/core/motion/CustomVariable;->a:Ljava/lang/String;

    new-instance v2, Landroidx/constraintlayout/core/motion/CustomVariable;

    invoke-direct {v2, v0}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Landroidx/constraintlayout/core/motion/CustomVariable;)V

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
