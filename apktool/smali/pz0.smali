.class public final synthetic Lpz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SliderDefaults;

.field public final synthetic c:Landroidx/compose/material3/SliderState;

.field public final synthetic d:F

.field public final synthetic e:Landroidx/compose/ui/Modifier;

.field public final synthetic f:Z

.field public final synthetic g:Landroidx/compose/material3/SliderColors;

.field public final synthetic h:Lkotlin/jvm/functions/Function2;

.field public final synthetic i:Lkotlin/jvm/functions/Function3;

.field public final synthetic j:F

.field public final synthetic k:F

.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FFII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpz0;->b:Landroidx/compose/material3/SliderDefaults;

    iput-object p2, p0, Lpz0;->c:Landroidx/compose/material3/SliderState;

    iput p3, p0, Lpz0;->d:F

    iput-object p4, p0, Lpz0;->e:Landroidx/compose/ui/Modifier;

    iput-boolean p5, p0, Lpz0;->f:Z

    iput-object p6, p0, Lpz0;->g:Landroidx/compose/material3/SliderColors;

    iput-object p7, p0, Lpz0;->h:Lkotlin/jvm/functions/Function2;

    iput-object p8, p0, Lpz0;->i:Lkotlin/jvm/functions/Function3;

    iput p9, p0, Lpz0;->j:F

    iput p10, p0, Lpz0;->k:F

    iput p11, p0, Lpz0;->l:I

    iput p12, p0, Lpz0;->m:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/material3/SliderDefaults;->a:Landroidx/compose/material3/SliderDefaults;

    iget p1, p0, Lpz0;->l:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v11

    iget p1, p0, Lpz0;->m:I

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v12

    iget-object v0, p0, Lpz0;->b:Landroidx/compose/material3/SliderDefaults;

    iget-object v1, p0, Lpz0;->c:Landroidx/compose/material3/SliderState;

    iget v2, p0, Lpz0;->d:F

    iget-object v3, p0, Lpz0;->e:Landroidx/compose/ui/Modifier;

    iget-boolean v4, p0, Lpz0;->f:Z

    iget-object v5, p0, Lpz0;->g:Landroidx/compose/material3/SliderColors;

    iget-object v6, p0, Lpz0;->h:Lkotlin/jvm/functions/Function2;

    iget-object v7, p0, Lpz0;->i:Lkotlin/jvm/functions/Function3;

    iget v8, p0, Lpz0;->j:F

    iget v9, p0, Lpz0;->k:F

    invoke-virtual/range {v0 .. v12}, Landroidx/compose/material3/SliderDefaults;->c(Landroidx/compose/material3/SliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FFLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
