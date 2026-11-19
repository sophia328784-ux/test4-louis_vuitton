.class public final synthetic Lmz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SliderDefaults;

.field public final synthetic c:Landroidx/compose/material3/SliderState;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Z

.field public final synthetic f:Landroidx/compose/material3/SliderColors;

.field public final synthetic g:Lkotlin/jvm/functions/Function2;

.field public final synthetic h:Lkotlin/jvm/functions/Function3;

.field public final synthetic i:F

.field public final synthetic j:F

.field public final synthetic k:I

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FFII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmz0;->b:Landroidx/compose/material3/SliderDefaults;

    iput-object p2, p0, Lmz0;->c:Landroidx/compose/material3/SliderState;

    iput-object p3, p0, Lmz0;->d:Landroidx/compose/ui/Modifier;

    iput-boolean p4, p0, Lmz0;->e:Z

    iput-object p5, p0, Lmz0;->f:Landroidx/compose/material3/SliderColors;

    iput-object p6, p0, Lmz0;->g:Lkotlin/jvm/functions/Function2;

    iput-object p7, p0, Lmz0;->h:Lkotlin/jvm/functions/Function3;

    iput p8, p0, Lmz0;->i:F

    iput p9, p0, Lmz0;->j:F

    iput p10, p0, Lmz0;->k:I

    iput p11, p0, Lmz0;->l:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/material3/SliderDefaults;->a:Landroidx/compose/material3/SliderDefaults;

    iget p1, p0, Lmz0;->k:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget-object v0, p0, Lmz0;->b:Landroidx/compose/material3/SliderDefaults;

    iget-object v1, p0, Lmz0;->c:Landroidx/compose/material3/SliderState;

    iget-object v2, p0, Lmz0;->d:Landroidx/compose/ui/Modifier;

    iget-boolean v3, p0, Lmz0;->e:Z

    iget-object v4, p0, Lmz0;->f:Landroidx/compose/material3/SliderColors;

    iget-object v5, p0, Lmz0;->g:Lkotlin/jvm/functions/Function2;

    iget-object v6, p0, Lmz0;->h:Lkotlin/jvm/functions/Function3;

    iget v7, p0, Lmz0;->i:F

    iget v8, p0, Lmz0;->j:F

    iget v11, p0, Lmz0;->l:I

    invoke-virtual/range {v0 .. v11}, Landroidx/compose/material3/SliderDefaults;->b(Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FFLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
