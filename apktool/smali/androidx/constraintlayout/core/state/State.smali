.class public Landroidx/constraintlayout/core/state/State;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/state/State$Helper;,
        Landroidx/constraintlayout/core/state/State$Direction;,
        Landroidx/constraintlayout/core/state/State$Wrap;,
        Landroidx/constraintlayout/core/state/State$Chain;,
        Landroidx/constraintlayout/core/state/State$Constraint;
    }
.end annotation


# instance fields
.field public a:Lln0;

.field public b:Z

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/util/HashMap;

.field public final f:Landroidx/constraintlayout/core/state/ConstraintReference;

.field public g:I

.field public final h:Ljava/util/ArrayList;

.field public final i:Ljava/util/ArrayList;

.field public j:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/core/state/State;->b:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/core/state/State;->c:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/core/state/State;->d:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/core/state/State;->e:Ljava/util/HashMap;

    new-instance v2, Landroidx/constraintlayout/core/state/ConstraintReference;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;-><init>(Landroidx/constraintlayout/core/state/State;)V

    iput-object v2, p0, Landroidx/constraintlayout/core/state/State;->f:Landroidx/constraintlayout/core/state/ConstraintReference;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput v3, p0, Landroidx/constraintlayout/core/state/State;->g:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/core/state/State;->h:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/core/state/State;->i:Ljava/util/ArrayList;

    iput-boolean v0, p0, Landroidx/constraintlayout/core/state/State;->j:Z

    iput-object v4, v2, Landroidx/constraintlayout/core/state/ConstraintReference;->a:Ljava/lang/Object;

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/constraintlayout/core/state/State;->j:Z

    return-void
.end method

.method public final b(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/state/Reference;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/constraintlayout/core/state/ConstraintReference;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;-><init>(Landroidx/constraintlayout/core/state/State;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->a:Ljava/lang/Object;

    :cond_0
    instance-of p0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;

    if-eqz p0, :cond_1

    check-cast v1, Landroidx/constraintlayout/core/state/ConstraintReference;

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public c(Ljava/lang/Float;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public final d(ILjava/lang/String;)Landroidx/constraintlayout/core/state/helpers/GuidelineReference;
    .locals 2

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/state/State;->b(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    iget-object v1, v0, Landroidx/constraintlayout/core/state/ConstraintReference;->c:Landroidx/constraintlayout/core/state/helpers/Facade;

    if-eqz v1, :cond_0

    instance-of v1, v1, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;-><init>(Landroidx/constraintlayout/core/state/State;)V

    iput p1, v1, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->b:I

    iput-object p2, v1, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->g:Ljava/lang/String;

    iput-object v1, v0, Landroidx/constraintlayout/core/state/ConstraintReference;->c:Landroidx/constraintlayout/core/state/helpers/Facade;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->b()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    :cond_1
    iget-object p0, v0, Landroidx/constraintlayout/core/state/ConstraintReference;->c:Landroidx/constraintlayout/core/state/helpers/Facade;

    check-cast p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;

    return-object p0
.end method

.method public final e(Landroidx/constraintlayout/core/state/State$Helper;)Landroidx/constraintlayout/core/state/HelperReference;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "__HELPER_KEY_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/constraintlayout/core/state/State;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/constraintlayout/core/state/State;->g:I

    const-string v2, "__"

    invoke-static {v1, v2, v0}, La;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/core/state/State;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/state/HelperReference;

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v2, Landroidx/constraintlayout/core/state/HelperReference;

    invoke-direct {v2, p0, p1}, Landroidx/constraintlayout/core/state/HelperReference;-><init>(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/State$Helper;)V

    goto :goto_0

    :pswitch_1
    new-instance v2, Landroidx/constraintlayout/core/state/helpers/GridReference;

    invoke-direct {v2, p0, p1}, Landroidx/constraintlayout/core/state/helpers/GridReference;-><init>(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/State$Helper;)V

    goto :goto_0

    :pswitch_2
    new-instance v2, Landroidx/constraintlayout/core/state/helpers/FlowReference;

    invoke-direct {v2, p0, p1}, Landroidx/constraintlayout/core/state/helpers/FlowReference;-><init>(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/State$Helper;)V

    goto :goto_0

    :pswitch_3
    new-instance v2, Landroidx/constraintlayout/core/state/helpers/BarrierReference;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/core/state/helpers/BarrierReference;-><init>(Landroidx/constraintlayout/core/state/State;)V

    goto :goto_0

    :pswitch_4
    new-instance v2, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;-><init>(Landroidx/constraintlayout/core/state/State;)V

    goto :goto_0

    :pswitch_5
    new-instance v2, Landroidx/constraintlayout/core/state/helpers/AlignHorizontallyReference;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/core/state/helpers/AlignHorizontallyReference;-><init>(Landroidx/constraintlayout/core/state/State;)V

    goto :goto_0

    :pswitch_6
    new-instance v2, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;-><init>(Landroidx/constraintlayout/core/state/State;)V

    goto :goto_0

    :pswitch_7
    new-instance v2, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;-><init>(Landroidx/constraintlayout/core/state/State;)V

    :goto_0
    iput-object v0, v2, Landroidx/constraintlayout/core/state/ConstraintReference;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
