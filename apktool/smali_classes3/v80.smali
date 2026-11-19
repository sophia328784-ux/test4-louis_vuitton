.class public final synthetic Lv80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/unit/Density;

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:Landroidx/compose/runtime/MutableIntState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/unit/Density;FFLandroidx/compose/runtime/MutableIntState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv80;->b:Landroidx/compose/ui/unit/Density;

    iput p2, p0, Lv80;->c:F

    iput p3, p0, Lv80;->d:F

    iput-object p4, p0, Lv80;->e:Landroidx/compose/runtime/MutableIntState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroidx/compose/ui/unit/Density;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lv80;->e:Landroidx/compose/runtime/MutableIntState;

    invoke-interface {v0}, Landroidx/compose/runtime/IntState;->f()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lv80;->b:Landroidx/compose/ui/unit/Density;

    invoke-interface {v1, v0}, Landroidx/compose/ui/unit/Density;->k1(I)F

    move-result v0

    iget v1, p0, Lv80;->c:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sget-object v3, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    add-float/2addr v0, v1

    iget p0, p0, Lv80;->d:F

    div-float/2addr p0, v2

    sub-float/2addr v0, p0

    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result p0

    float-to-int p0, p0

    int-to-long p0, p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    new-instance v0, Landroidx/compose/ui/unit/IntOffset;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    return-object v0
.end method
