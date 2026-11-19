.class public final synthetic Lej0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/time/LocalDateTime;

.field public final synthetic g:Z

.field public final synthetic h:Ljava/time/LocalDateTime;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:Lkotlin/jvm/functions/Function0;

.field public final synthetic l:Lkotlin/jvm/functions/Function0;

.field public final synthetic m:Lkotlin/jvm/functions/Function0;

.field public final synthetic n:Lkotlin/jvm/functions/Function0;

.field public final synthetic o:Lkotlin/jvm/functions/Function0;

.field public final synthetic p:Lkotlin/jvm/functions/Function0;

.field public final synthetic q:Lkotlin/jvm/functions/Function0;

.field public final synthetic r:I

.field public final synthetic s:I

.field public final synthetic t:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen;Ljava/lang/String;Ljava/time/LocalDateTime;ZLjava/time/LocalDateTime;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lej0;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lej0;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-object p3, p0, Lej0;->d:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen;

    iput-object p4, p0, Lej0;->e:Ljava/lang/String;

    iput-object p5, p0, Lej0;->f:Ljava/time/LocalDateTime;

    iput-boolean p6, p0, Lej0;->g:Z

    iput-object p7, p0, Lej0;->h:Ljava/time/LocalDateTime;

    iput-object p8, p0, Lej0;->i:Ljava/lang/String;

    iput-object p9, p0, Lej0;->j:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Lej0;->k:Lkotlin/jvm/functions/Function0;

    iput-object p11, p0, Lej0;->l:Lkotlin/jvm/functions/Function0;

    iput-object p12, p0, Lej0;->m:Lkotlin/jvm/functions/Function0;

    iput-object p13, p0, Lej0;->n:Lkotlin/jvm/functions/Function0;

    iput-object p14, p0, Lej0;->o:Lkotlin/jvm/functions/Function0;

    iput-object p15, p0, Lej0;->p:Lkotlin/jvm/functions/Function0;

    move-object/from16 p1, p16

    iput-object p1, p0, Lej0;->q:Lkotlin/jvm/functions/Function0;

    move/from16 p1, p17

    iput p1, p0, Lej0;->r:I

    move/from16 p1, p18

    iput p1, p0, Lej0;->s:I

    move/from16 p1, p19

    iput p1, p0, Lej0;->t:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v16, p1

    check-cast v16, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lej0;->r:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v17

    iget v1, v0, Lej0;->s:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v18

    iget-object v1, v0, Lej0;->b:Landroidx/compose/ui/Modifier;

    move-object v2, v1

    iget-object v1, v0, Lej0;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-object v3, v2

    iget-object v2, v0, Lej0;->d:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen;

    move-object v4, v3

    iget-object v3, v0, Lej0;->e:Ljava/lang/String;

    move-object v5, v4

    iget-object v4, v0, Lej0;->f:Ljava/time/LocalDateTime;

    move-object v6, v5

    iget-boolean v5, v0, Lej0;->g:Z

    move-object v7, v6

    iget-object v6, v0, Lej0;->h:Ljava/time/LocalDateTime;

    move-object v8, v7

    iget-object v7, v0, Lej0;->i:Ljava/lang/String;

    move-object v9, v8

    iget-object v8, v0, Lej0;->j:Lkotlin/jvm/functions/Function0;

    move-object v10, v9

    iget-object v9, v0, Lej0;->k:Lkotlin/jvm/functions/Function0;

    move-object v11, v10

    iget-object v10, v0, Lej0;->l:Lkotlin/jvm/functions/Function0;

    move-object v12, v11

    iget-object v11, v0, Lej0;->m:Lkotlin/jvm/functions/Function0;

    move-object v13, v12

    iget-object v12, v0, Lej0;->n:Lkotlin/jvm/functions/Function0;

    move-object v14, v13

    iget-object v13, v0, Lej0;->o:Lkotlin/jvm/functions/Function0;

    move-object v15, v14

    iget-object v14, v0, Lej0;->p:Lkotlin/jvm/functions/Function0;

    move-object/from16 v19, v15

    iget-object v15, v0, Lej0;->q:Lkotlin/jvm/functions/Function0;

    iget v0, v0, Lej0;->t:I

    move-object/from16 v20, v19

    move/from16 v19, v0

    move-object/from16 v0, v20

    invoke-static/range {v0 .. v19}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreenKt;->e(Landroidx/compose/ui/Modifier;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen;Ljava/lang/String;Ljava/time/LocalDateTime;ZLjava/time/LocalDateTime;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
