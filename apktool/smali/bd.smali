.class public final synthetic Lbd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Landroidx/compose/ui/text/AnnotatedString;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Z

.field public final synthetic f:Ljava/util/Map;

.field public final synthetic g:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic h:I

.field public final synthetic i:Z

.field public final synthetic j:I

.field public final synthetic k:I

.field public final synthetic l:Landroidx/compose/ui/text/font/FontFamily$Resolver;

.field public final synthetic m:Landroidx/compose/foundation/text/modifiers/SelectionController;

.field public final synthetic n:Lkotlin/jvm/functions/Function1;

.field public final synthetic o:Landroidx/compose/foundation/text/TextAutoSize;

.field public final synthetic p:I

.field public final synthetic q:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;ZLjava/util/Map;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/foundation/text/modifiers/SelectionController;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/TextAutoSize;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbd;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lbd;->c:Landroidx/compose/ui/text/AnnotatedString;

    iput-object p3, p0, Lbd;->d:Lkotlin/jvm/functions/Function1;

    iput-boolean p4, p0, Lbd;->e:Z

    iput-object p5, p0, Lbd;->f:Ljava/util/Map;

    iput-object p6, p0, Lbd;->g:Landroidx/compose/ui/text/TextStyle;

    iput p7, p0, Lbd;->h:I

    iput-boolean p8, p0, Lbd;->i:Z

    iput p9, p0, Lbd;->j:I

    iput p10, p0, Lbd;->k:I

    iput-object p11, p0, Lbd;->l:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    iput-object p12, p0, Lbd;->m:Landroidx/compose/foundation/text/modifiers/SelectionController;

    iput-object p13, p0, Lbd;->n:Lkotlin/jvm/functions/Function1;

    iput-object p14, p0, Lbd;->o:Landroidx/compose/foundation/text/TextAutoSize;

    iput p15, p0, Lbd;->p:I

    move/from16 p1, p16

    iput p1, p0, Lbd;->q:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lbd;->p:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v15

    iget v1, v0, Lbd;->q:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v16

    iget-object v1, v0, Lbd;->b:Landroidx/compose/ui/Modifier;

    move-object v2, v1

    iget-object v1, v0, Lbd;->c:Landroidx/compose/ui/text/AnnotatedString;

    move-object v3, v2

    iget-object v2, v0, Lbd;->d:Lkotlin/jvm/functions/Function1;

    move-object v4, v3

    iget-boolean v3, v0, Lbd;->e:Z

    move-object v5, v4

    iget-object v4, v0, Lbd;->f:Ljava/util/Map;

    move-object v6, v5

    iget-object v5, v0, Lbd;->g:Landroidx/compose/ui/text/TextStyle;

    move-object v7, v6

    iget v6, v0, Lbd;->h:I

    move-object v8, v7

    iget-boolean v7, v0, Lbd;->i:Z

    move-object v9, v8

    iget v8, v0, Lbd;->j:I

    move-object v10, v9

    iget v9, v0, Lbd;->k:I

    move-object v11, v10

    iget-object v10, v0, Lbd;->l:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-object v12, v11

    iget-object v11, v0, Lbd;->m:Landroidx/compose/foundation/text/modifiers/SelectionController;

    move-object v13, v12

    iget-object v12, v0, Lbd;->n:Lkotlin/jvm/functions/Function1;

    iget-object v0, v0, Lbd;->o:Landroidx/compose/foundation/text/TextAutoSize;

    move-object/from16 v17, v13

    move-object v13, v0

    move-object/from16 v0, v17

    invoke-static/range {v0 .. v16}, Landroidx/compose/foundation/text/BasicTextKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;ZLjava/util/Map;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/foundation/text/modifiers/SelectionController;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/TextAutoSize;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
