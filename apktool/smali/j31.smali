.class public final synthetic Lj31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/text/AnnotatedString;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:J

.field public final synthetic e:J

.field public final synthetic f:J

.field public final synthetic g:Landroidx/compose/ui/text/style/TextAlign;

.field public final synthetic h:J

.field public final synthetic i:I

.field public final synthetic j:Z

.field public final synthetic k:I

.field public final synthetic l:I

.field public final synthetic m:Ljava/util/Map;

.field public final synthetic n:Lkotlin/jvm/functions/Function1;

.field public final synthetic o:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic p:I

.field public final synthetic q:I

.field public final synthetic r:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj31;->b:Landroidx/compose/ui/text/AnnotatedString;

    iput-object p2, p0, Lj31;->c:Landroidx/compose/ui/Modifier;

    iput-wide p3, p0, Lj31;->d:J

    iput-wide p5, p0, Lj31;->e:J

    iput-wide p7, p0, Lj31;->f:J

    iput-object p9, p0, Lj31;->g:Landroidx/compose/ui/text/style/TextAlign;

    iput-wide p10, p0, Lj31;->h:J

    iput p12, p0, Lj31;->i:I

    iput-boolean p13, p0, Lj31;->j:Z

    iput p14, p0, Lj31;->k:I

    iput p15, p0, Lj31;->l:I

    move-object/from16 p1, p16

    iput-object p1, p0, Lj31;->m:Ljava/util/Map;

    move-object/from16 p1, p17

    iput-object p1, p0, Lj31;->n:Lkotlin/jvm/functions/Function1;

    move-object/from16 p1, p18

    iput-object p1, p0, Lj31;->o:Landroidx/compose/ui/text/TextStyle;

    move/from16 p1, p19

    iput p1, p0, Lj31;->p:I

    move/from16 p1, p20

    iput p1, p0, Lj31;->q:I

    move/from16 p1, p21

    iput p1, p0, Lj31;->r:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v18, p1

    check-cast v18, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lj31;->p:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v19

    iget v1, v0, Lj31;->q:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v20

    iget-object v1, v0, Lj31;->b:Landroidx/compose/ui/text/AnnotatedString;

    move-object v2, v1

    iget-object v1, v0, Lj31;->c:Landroidx/compose/ui/Modifier;

    move-object v4, v2

    iget-wide v2, v0, Lj31;->d:J

    move-object v6, v4

    iget-wide v4, v0, Lj31;->e:J

    move-object v8, v6

    iget-wide v6, v0, Lj31;->f:J

    move-object v9, v8

    iget-object v8, v0, Lj31;->g:Landroidx/compose/ui/text/style/TextAlign;

    move-object v11, v9

    iget-wide v9, v0, Lj31;->h:J

    move-object v12, v11

    iget v11, v0, Lj31;->i:I

    move-object v13, v12

    iget-boolean v12, v0, Lj31;->j:Z

    move-object v14, v13

    iget v13, v0, Lj31;->k:I

    move-object v15, v14

    iget v14, v0, Lj31;->l:I

    move-object/from16 v16, v15

    iget-object v15, v0, Lj31;->m:Ljava/util/Map;

    move-object/from16 v17, v1

    iget-object v1, v0, Lj31;->n:Lkotlin/jvm/functions/Function1;

    move-object/from16 v21, v1

    iget-object v1, v0, Lj31;->o:Landroidx/compose/ui/text/TextStyle;

    iget v0, v0, Lj31;->r:I

    move-object/from16 v22, v21

    move/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v16, v22

    move-object/from16 v22, v17

    move-object/from16 v17, v1

    move-object/from16 v1, v22

    invoke-static/range {v0 .. v21}, Landroidx/compose/material3/TextKt;->d(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
