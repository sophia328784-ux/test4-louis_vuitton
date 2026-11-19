.class public final synthetic Len0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Lcom/perfectcorp/perfectlib/CameraView;

.field public final synthetic g:Lcom/perfectcorp/perfectlib/MakeupCam;

.field public final synthetic h:Lcom/perfectcorp/perfectlib/ShadeFinder;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Lkotlin/jvm/functions/Function1;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Lkotlin/jvm/functions/Function0;

.field public final synthetic n:Lkotlin/jvm/functions/Function0;

.field public final synthetic o:Lkotlin/jvm/functions/Function2;

.field public final synthetic p:Lkotlin/jvm/functions/Function0;

.field public final synthetic q:Lkotlin/jvm/functions/Function1;

.field public final synthetic r:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ZZZLcom/perfectcorp/perfectlib/CameraView;Lcom/perfectcorp/perfectlib/MakeupCam;Lcom/perfectcorp/perfectlib/ShadeFinder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Len0;->b:Landroid/content/Context;

    iput-boolean p2, p0, Len0;->c:Z

    iput-boolean p3, p0, Len0;->d:Z

    iput-boolean p4, p0, Len0;->e:Z

    iput-object p5, p0, Len0;->f:Lcom/perfectcorp/perfectlib/CameraView;

    iput-object p6, p0, Len0;->g:Lcom/perfectcorp/perfectlib/MakeupCam;

    iput-object p7, p0, Len0;->h:Lcom/perfectcorp/perfectlib/ShadeFinder;

    iput-object p8, p0, Len0;->i:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Len0;->j:Lkotlin/jvm/functions/Function1;

    iput-object p10, p0, Len0;->k:Lkotlin/jvm/functions/Function1;

    iput-object p11, p0, Len0;->l:Lkotlin/jvm/functions/Function1;

    iput-object p12, p0, Len0;->m:Lkotlin/jvm/functions/Function0;

    iput-object p13, p0, Len0;->n:Lkotlin/jvm/functions/Function0;

    iput-object p14, p0, Len0;->o:Lkotlin/jvm/functions/Function2;

    iput-object p15, p0, Len0;->p:Lkotlin/jvm/functions/Function0;

    move-object/from16 p1, p16

    iput-object p1, p0, Len0;->q:Lkotlin/jvm/functions/Function1;

    move-object/from16 p1, p17

    iput-object p1, p0, Len0;->r:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v17, p1

    check-cast v17, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x36c00001

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v18

    iget-object v1, v0, Len0;->b:Landroid/content/Context;

    move-object v2, v1

    iget-boolean v1, v0, Len0;->c:Z

    move-object v3, v2

    iget-boolean v2, v0, Len0;->d:Z

    move-object v4, v3

    iget-boolean v3, v0, Len0;->e:Z

    move-object v5, v4

    iget-object v4, v0, Len0;->f:Lcom/perfectcorp/perfectlib/CameraView;

    move-object v6, v5

    iget-object v5, v0, Len0;->g:Lcom/perfectcorp/perfectlib/MakeupCam;

    move-object v7, v6

    iget-object v6, v0, Len0;->h:Lcom/perfectcorp/perfectlib/ShadeFinder;

    move-object v8, v7

    iget-object v7, v0, Len0;->i:Lkotlin/jvm/functions/Function1;

    move-object v9, v8

    iget-object v8, v0, Len0;->j:Lkotlin/jvm/functions/Function1;

    move-object v10, v9

    iget-object v9, v0, Len0;->k:Lkotlin/jvm/functions/Function1;

    move-object v11, v10

    iget-object v10, v0, Len0;->l:Lkotlin/jvm/functions/Function1;

    move-object v12, v11

    iget-object v11, v0, Len0;->m:Lkotlin/jvm/functions/Function0;

    move-object v13, v12

    iget-object v12, v0, Len0;->n:Lkotlin/jvm/functions/Function0;

    move-object v14, v13

    iget-object v13, v0, Len0;->o:Lkotlin/jvm/functions/Function2;

    move-object v15, v14

    iget-object v14, v0, Len0;->p:Lkotlin/jvm/functions/Function0;

    move-object/from16 v16, v15

    iget-object v15, v0, Len0;->q:Lkotlin/jvm/functions/Function1;

    iget-object v0, v0, Len0;->r:Lkotlin/jvm/functions/Function0;

    move-object/from16 v19, v16

    move-object/from16 v16, v0

    move-object/from16 v0, v19

    invoke-static/range {v0 .. v18}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt;->a(Landroid/content/Context;ZZZLcom/perfectcorp/perfectlib/CameraView;Lcom/perfectcorp/perfectlib/MakeupCam;Lcom/perfectcorp/perfectlib/ShadeFinder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
