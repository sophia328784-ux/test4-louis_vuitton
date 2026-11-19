.class public final synthetic Lib0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Landroidx/media3/exoplayer/ExoPlayer;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/Float;

.field public final synthetic g:Z

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Landroidx/compose/ui/layout/ContentScale;

.field public final synthetic j:Z

.field public final synthetic k:Z

.field public final synthetic l:Z

.field public final synthetic m:Z

.field public final synthetic n:Ljava/lang/Boolean;

.field public final synthetic o:Z

.field public final synthetic p:I

.field public final synthetic q:Lkotlin/jvm/functions/Function2;

.field public final synthetic r:Lkotlin/jvm/functions/Function2;

.field public final synthetic s:Lkotlin/jvm/functions/Function0;

.field public final synthetic t:Lkotlin/jvm/functions/Function1;

.field public final synthetic u:Lkotlin/jvm/functions/Function0;

.field public final synthetic v:Lkotlin/jvm/functions/Function0;

.field public final synthetic w:I

.field public final synthetic x:I

.field public final synthetic y:I

.field public final synthetic z:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/media3/exoplayer/ExoPlayer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLjava/lang/String;Landroidx/compose/ui/layout/ContentScale;ZZZZLjava/lang/Boolean;ZILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lib0;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lib0;->c:Landroidx/media3/exoplayer/ExoPlayer;

    iput-object p3, p0, Lib0;->d:Ljava/lang/String;

    iput-object p4, p0, Lib0;->e:Ljava/lang/String;

    iput-object p5, p0, Lib0;->f:Ljava/lang/Float;

    iput-boolean p6, p0, Lib0;->g:Z

    iput-object p7, p0, Lib0;->h:Ljava/lang/String;

    iput-object p8, p0, Lib0;->i:Landroidx/compose/ui/layout/ContentScale;

    iput-boolean p9, p0, Lib0;->j:Z

    iput-boolean p10, p0, Lib0;->k:Z

    iput-boolean p11, p0, Lib0;->l:Z

    iput-boolean p12, p0, Lib0;->m:Z

    iput-object p13, p0, Lib0;->n:Ljava/lang/Boolean;

    iput-boolean p14, p0, Lib0;->o:Z

    iput p15, p0, Lib0;->p:I

    move-object/from16 p1, p16

    iput-object p1, p0, Lib0;->q:Lkotlin/jvm/functions/Function2;

    move-object/from16 p1, p17

    iput-object p1, p0, Lib0;->r:Lkotlin/jvm/functions/Function2;

    move-object/from16 p1, p18

    iput-object p1, p0, Lib0;->s:Lkotlin/jvm/functions/Function0;

    move-object/from16 p1, p19

    iput-object p1, p0, Lib0;->t:Lkotlin/jvm/functions/Function1;

    move-object/from16 p1, p20

    iput-object p1, p0, Lib0;->u:Lkotlin/jvm/functions/Function0;

    move-object/from16 p1, p21

    iput-object p1, p0, Lib0;->v:Lkotlin/jvm/functions/Function0;

    move/from16 p1, p22

    iput p1, p0, Lib0;->w:I

    move/from16 p1, p23

    iput p1, p0, Lib0;->x:I

    move/from16 p1, p24

    iput p1, p0, Lib0;->y:I

    move/from16 p1, p25

    iput p1, p0, Lib0;->z:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v21, p1

    check-cast v21, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lib0;->w:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v22

    iget v1, v0, Lib0;->x:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v23

    iget v1, v0, Lib0;->y:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v24

    iget-object v1, v0, Lib0;->b:Landroidx/compose/ui/Modifier;

    move-object v2, v1

    iget-object v1, v0, Lib0;->c:Landroidx/media3/exoplayer/ExoPlayer;

    move-object v3, v2

    iget-object v2, v0, Lib0;->d:Ljava/lang/String;

    move-object v4, v3

    iget-object v3, v0, Lib0;->e:Ljava/lang/String;

    move-object v5, v4

    iget-object v4, v0, Lib0;->f:Ljava/lang/Float;

    move-object v6, v5

    iget-boolean v5, v0, Lib0;->g:Z

    move-object v7, v6

    iget-object v6, v0, Lib0;->h:Ljava/lang/String;

    move-object v8, v7

    iget-object v7, v0, Lib0;->i:Landroidx/compose/ui/layout/ContentScale;

    move-object v9, v8

    iget-boolean v8, v0, Lib0;->j:Z

    move-object v10, v9

    iget-boolean v9, v0, Lib0;->k:Z

    move-object v11, v10

    iget-boolean v10, v0, Lib0;->l:Z

    move-object v12, v11

    iget-boolean v11, v0, Lib0;->m:Z

    move-object v13, v12

    iget-object v12, v0, Lib0;->n:Ljava/lang/Boolean;

    move-object v14, v13

    iget-boolean v13, v0, Lib0;->o:Z

    move-object v15, v14

    iget v14, v0, Lib0;->p:I

    move-object/from16 v16, v15

    iget-object v15, v0, Lib0;->q:Lkotlin/jvm/functions/Function2;

    move-object/from16 v17, v1

    iget-object v1, v0, Lib0;->r:Lkotlin/jvm/functions/Function2;

    move-object/from16 v18, v1

    iget-object v1, v0, Lib0;->s:Lkotlin/jvm/functions/Function0;

    move-object/from16 v19, v1

    iget-object v1, v0, Lib0;->t:Lkotlin/jvm/functions/Function1;

    move-object/from16 v20, v1

    iget-object v1, v0, Lib0;->u:Lkotlin/jvm/functions/Function0;

    move-object/from16 v25, v1

    iget-object v1, v0, Lib0;->v:Lkotlin/jvm/functions/Function0;

    iget v0, v0, Lib0;->z:I

    move-object/from16 v26, v25

    move/from16 v25, v0

    move-object/from16 v0, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v20

    move-object/from16 v20, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v26

    invoke-static/range {v0 .. v25}, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt;->b(Landroidx/compose/ui/Modifier;Landroidx/media3/exoplayer/ExoPlayer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLjava/lang/String;Landroidx/compose/ui/layout/ContentScale;ZZZZLjava/lang/Boolean;ZILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;IIII)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
