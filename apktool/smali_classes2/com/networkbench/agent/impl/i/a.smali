.class public Lcom/networkbench/agent/impl/i/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/i/c;


# static fields
.field private static final a:Ljava/lang/String; = "AxisShadowCalc"

.field private static final b:F = 0.8f

.field private static final c:F = 0.6f


# instance fields
.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(II)Z
    .locals 3

    .line 121
    iget v0, p0, Lcom/networkbench/agent/impl/i/a;->d:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget v2, p0, Lcom/networkbench/agent/impl/i/a;->e:I

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float p2, p2

    int-to-float v0, v2

    div-float/2addr p2, v0

    mul-float v0, p1, p2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 122
    iput v0, p0, Lcom/networkbench/agent/impl/i/a;->f:I

    const p0, 0x3f4ccccd    # 0.8f

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_1

    const p0, 0x3f19999a    # 0.6f

    cmpl-float p0, p2, p0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method private a(Ljava/util/List;)[I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)[I"
        }
    .end annotation

    const/4 v0, 0x2

    .line 109
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 110
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    return-object v0

    .line 111
    :cond_0
    new-instance v3, Lcom/networkbench/agent/impl/i/a$1;

    invoke-direct {v3, p0}, Lcom/networkbench/agent/impl/i/a$1;-><init>(Lcom/networkbench/agent/impl/i/a;)V

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 112
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    move v5, v4

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 113
    iget v7, v6, Landroid/graphics/Rect;->left:I

    .line 114
    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-lt v7, v4, :cond_2

    sub-int v4, v6, v7

    :goto_1
    add-int/2addr v5, v4

    move v4, v6

    goto :goto_0

    :cond_2
    if-le v6, v4, :cond_1

    sub-int v4, v6, v4

    goto :goto_1

    .line 115
    :cond_3
    new-instance v3, Lcom/networkbench/agent/impl/i/a$2;

    invoke-direct {v3, p0}, Lcom/networkbench/agent/impl/i/a$2;-><init>(Lcom/networkbench/agent/impl/i/a;)V

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 116
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move p1, v1

    move v3, p1

    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 117
    iget v6, v4, Landroid/graphics/Rect;->top:I

    .line 118
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-lt v6, v3, :cond_5

    sub-int v3, v4, v6

    :goto_3
    add-int/2addr p1, v3

    move v3, v4

    goto :goto_2

    :cond_5
    if-le v4, v3, :cond_4

    sub-int v3, v4, v3

    goto :goto_3

    .line 119
    :cond_6
    aput v5, v0, v1

    .line 120
    aput p1, v0, v2

    return-object v0
.end method

.method private b()I
    .locals 0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method private c()I
    .locals 0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 108
    iget p0, p0, Lcom/networkbench/agent/impl/i/a;->f:I

    return p0
.end method

.method public a(Ljava/util/List;Ljava/util/List;II)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;II)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-lez p3, :cond_5

    if-gtz p4, :cond_0

    goto :goto_3

    :cond_0
    iput p3, p0, Lcom/networkbench/agent/impl/i/a;->d:I

    iput p4, p0, Lcom/networkbench/agent/impl/i/a;->e:I

    new-instance p3, Ljava/util/BitSet;

    iget p4, p0, Lcom/networkbench/agent/impl/i/a;->d:I

    invoke-direct {p3, p4}, Ljava/util/BitSet;-><init>(I)V

    new-instance p4, Ljava/util/BitSet;

    iget v1, p0, Lcom/networkbench/agent/impl/i/a;->e:I

    invoke-direct {p4, v1}, Ljava/util/BitSet;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    const/4 v4, 0x1

    invoke-virtual {p3, v2, v3, v4}, Ljava/util/BitSet;->set(IIZ)V

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4, v2, v1, v4}, Ljava/util/BitSet;->set(IIZ)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p3, v1, v2, v0}, Ljava/util/BitSet;->set(IIZ)V

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4, v1, p2, v0}, Ljava/util/BitSet;->set(IIZ)V

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Ljava/util/BitSet;->cardinality()I

    move-result p1

    invoke-virtual {p4}, Ljava/util/BitSet;->cardinality()I

    move-result p2

    if-lez p1, :cond_3

    goto :goto_2

    :cond_3
    move p1, v0

    :goto_2
    if-lez p2, :cond_4

    move v0, p2

    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/networkbench/agent/impl/i/a;->a(II)Z

    move-result p0

    return p0

    :cond_5
    :goto_3
    return v0
.end method
