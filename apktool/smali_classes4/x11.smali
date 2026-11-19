.class public final synthetic Lx11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:Landroidx/compose/animation/core/Animatable;


# direct methods
.method public synthetic constructor <init>(IIZLandroidx/compose/animation/core/Animatable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lx11;->b:I

    iput p2, p0, Lx11;->c:I

    iput-boolean p3, p0, Lx11;->d:Z

    iput-object p4, p0, Lx11;->e:Landroidx/compose/animation/core/Animatable;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lx11;->b:I

    iget v1, p0, Lx11;->c:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lx11;->d:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lx11;->e:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {p0}, Landroidx/compose/animation/core/Animatable;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
