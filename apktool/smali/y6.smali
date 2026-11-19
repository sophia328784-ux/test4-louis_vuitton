.class public final synthetic Ly6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lkotlin/jvm/functions/Function2;

.field public final synthetic d:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic e:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic f:Landroidx/compose/ui/Alignment$Horizontal;

.field public final synthetic g:Lkotlin/jvm/functions/Function2;

.field public final synthetic h:Lkotlin/jvm/functions/Function3;

.field public final synthetic i:F

.field public final synthetic j:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic k:Landroidx/compose/material3/TopAppBarColors;

.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/Alignment$Horizontal;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly6;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Ly6;->c:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Ly6;->d:Landroidx/compose/ui/text/TextStyle;

    iput-object p4, p0, Ly6;->e:Landroidx/compose/ui/text/TextStyle;

    iput-object p5, p0, Ly6;->f:Landroidx/compose/ui/Alignment$Horizontal;

    iput-object p6, p0, Ly6;->g:Lkotlin/jvm/functions/Function2;

    iput-object p7, p0, Ly6;->h:Lkotlin/jvm/functions/Function3;

    iput p8, p0, Ly6;->i:F

    iput-object p9, p0, Ly6;->j:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p10, p0, Ly6;->k:Landroidx/compose/material3/TopAppBarColors;

    iput p11, p0, Ly6;->l:I

    iput p12, p0, Ly6;->m:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Ly6;->l:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v11

    iget p1, p0, Ly6;->m:I

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v12

    iget-object v0, p0, Ly6;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Ly6;->c:Lkotlin/jvm/functions/Function2;

    iget-object v2, p0, Ly6;->d:Landroidx/compose/ui/text/TextStyle;

    iget-object v3, p0, Ly6;->e:Landroidx/compose/ui/text/TextStyle;

    iget-object v4, p0, Ly6;->f:Landroidx/compose/ui/Alignment$Horizontal;

    iget-object v5, p0, Ly6;->g:Lkotlin/jvm/functions/Function2;

    iget-object v6, p0, Ly6;->h:Lkotlin/jvm/functions/Function3;

    iget v7, p0, Ly6;->i:F

    iget-object v8, p0, Ly6;->j:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v9, p0, Ly6;->k:Landroidx/compose/material3/TopAppBarColors;

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/AppBarKt;->b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/Alignment$Horizontal;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
