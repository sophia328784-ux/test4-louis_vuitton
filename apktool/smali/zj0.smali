.class public final synthetic Lzj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/OutlinedTextFieldDefaults;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Landroidx/compose/foundation/interaction/InteractionSource;

.field public final synthetic f:Landroidx/compose/ui/Modifier;

.field public final synthetic g:Landroidx/compose/material3/TextFieldColors;

.field public final synthetic h:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic i:F

.field public final synthetic j:F

.field public final synthetic k:I

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/OutlinedTextFieldDefaults;ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FFII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzj0;->b:Landroidx/compose/material3/OutlinedTextFieldDefaults;

    iput-boolean p2, p0, Lzj0;->c:Z

    iput-boolean p3, p0, Lzj0;->d:Z

    iput-object p4, p0, Lzj0;->e:Landroidx/compose/foundation/interaction/InteractionSource;

    iput-object p5, p0, Lzj0;->f:Landroidx/compose/ui/Modifier;

    iput-object p6, p0, Lzj0;->g:Landroidx/compose/material3/TextFieldColors;

    iput-object p7, p0, Lzj0;->h:Landroidx/compose/ui/graphics/Shape;

    iput p8, p0, Lzj0;->i:F

    iput p9, p0, Lzj0;->j:F

    iput p10, p0, Lzj0;->k:I

    iput p11, p0, Lzj0;->l:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/material3/OutlinedTextFieldDefaults;->a:Landroidx/compose/material3/OutlinedTextFieldDefaults;

    iget p1, p0, Lzj0;->k:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget-object v0, p0, Lzj0;->b:Landroidx/compose/material3/OutlinedTextFieldDefaults;

    iget-boolean v1, p0, Lzj0;->c:Z

    iget-boolean v2, p0, Lzj0;->d:Z

    iget-object v3, p0, Lzj0;->e:Landroidx/compose/foundation/interaction/InteractionSource;

    iget-object v4, p0, Lzj0;->f:Landroidx/compose/ui/Modifier;

    iget-object v5, p0, Lzj0;->g:Landroidx/compose/material3/TextFieldColors;

    iget-object v6, p0, Lzj0;->h:Landroidx/compose/ui/graphics/Shape;

    iget v7, p0, Lzj0;->i:F

    iget v8, p0, Lzj0;->j:F

    iget v11, p0, Lzj0;->l:I

    invoke-virtual/range {v0 .. v11}, Landroidx/compose/material3/OutlinedTextFieldDefaults;->a(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FFLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
