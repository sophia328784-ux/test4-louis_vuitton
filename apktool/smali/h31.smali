.class public final synthetic Lh31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:J

.field public final synthetic e:J

.field public final synthetic f:Landroidx/compose/ui/text/font/FontWeight;

.field public final synthetic g:J

.field public final synthetic h:Landroidx/compose/ui/text/style/TextDecoration;

.field public final synthetic i:Landroidx/compose/ui/text/style/TextAlign;

.field public final synthetic j:J

.field public final synthetic k:I

.field public final synthetic l:Z

.field public final synthetic m:I

.field public final synthetic n:I

.field public final synthetic o:Lkotlin/jvm/functions/Function1;

.field public final synthetic p:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic q:I

.field public final synthetic r:I

.field public final synthetic s:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh31;->b:Ljava/lang/String;

    iput-object p2, p0, Lh31;->c:Landroidx/compose/ui/Modifier;

    iput-wide p3, p0, Lh31;->d:J

    iput-wide p5, p0, Lh31;->e:J

    iput-object p7, p0, Lh31;->f:Landroidx/compose/ui/text/font/FontWeight;

    iput-wide p8, p0, Lh31;->g:J

    iput-object p10, p0, Lh31;->h:Landroidx/compose/ui/text/style/TextDecoration;

    iput-object p11, p0, Lh31;->i:Landroidx/compose/ui/text/style/TextAlign;

    iput-wide p12, p0, Lh31;->j:J

    iput p14, p0, Lh31;->k:I

    iput-boolean p15, p0, Lh31;->l:Z

    move/from16 p1, p16

    iput p1, p0, Lh31;->m:I

    move/from16 p1, p17

    iput p1, p0, Lh31;->n:I

    move-object/from16 p1, p18

    iput-object p1, p0, Lh31;->o:Lkotlin/jvm/functions/Function1;

    move-object/from16 p1, p19

    iput-object p1, p0, Lh31;->p:Landroidx/compose/ui/text/TextStyle;

    move/from16 p1, p20

    iput p1, p0, Lh31;->q:I

    move/from16 p1, p21

    iput p1, p0, Lh31;->r:I

    move/from16 p1, p22

    iput p1, p0, Lh31;->s:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v19, p1

    check-cast v19, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lh31;->q:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v20

    iget v1, v0, Lh31;->r:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v21

    iget-object v1, v0, Lh31;->b:Ljava/lang/String;

    move-object v2, v1

    iget-object v1, v0, Lh31;->c:Landroidx/compose/ui/Modifier;

    move-object v4, v2

    iget-wide v2, v0, Lh31;->d:J

    move-object v6, v4

    iget-wide v4, v0, Lh31;->e:J

    move-object v7, v6

    iget-object v6, v0, Lh31;->f:Landroidx/compose/ui/text/font/FontWeight;

    move-object v9, v7

    iget-wide v7, v0, Lh31;->g:J

    move-object v10, v9

    iget-object v9, v0, Lh31;->h:Landroidx/compose/ui/text/style/TextDecoration;

    move-object v11, v10

    iget-object v10, v0, Lh31;->i:Landroidx/compose/ui/text/style/TextAlign;

    move-object v13, v11

    iget-wide v11, v0, Lh31;->j:J

    move-object v14, v13

    iget v13, v0, Lh31;->k:I

    move-object v15, v14

    iget-boolean v14, v0, Lh31;->l:Z

    move-object/from16 v16, v15

    iget v15, v0, Lh31;->m:I

    move-object/from16 v17, v1

    iget v1, v0, Lh31;->n:I

    move/from16 v18, v1

    iget-object v1, v0, Lh31;->o:Lkotlin/jvm/functions/Function1;

    move-object/from16 v22, v1

    iget-object v1, v0, Lh31;->p:Landroidx/compose/ui/text/TextStyle;

    iget v0, v0, Lh31;->s:I

    move-object/from16 v23, v22

    move/from16 v22, v0

    move-object/from16 v0, v16

    move/from16 v16, v18

    move-object/from16 v18, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v23

    invoke-static/range {v0 .. v22}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
