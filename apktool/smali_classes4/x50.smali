.class public final synthetic Lx50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:I

.field public final synthetic d:Landroidx/compose/material3/SnackbarHostState;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Z

.field public final synthetic i:Lkotlin/jvm/functions/Function0;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Lkotlin/jvm/functions/Function0;

.field public final synthetic l:Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;

.field public final synthetic m:Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;

.field public final synthetic n:I

.field public final synthetic o:I

.field public final synthetic p:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ILandroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx50;->b:Landroidx/compose/ui/Modifier;

    iput p2, p0, Lx50;->c:I

    iput-object p3, p0, Lx50;->d:Landroidx/compose/material3/SnackbarHostState;

    iput-object p4, p0, Lx50;->e:Ljava/lang/String;

    iput-object p5, p0, Lx50;->f:Ljava/lang/String;

    iput-object p6, p0, Lx50;->g:Ljava/lang/String;

    iput-boolean p7, p0, Lx50;->h:Z

    iput-object p8, p0, Lx50;->i:Lkotlin/jvm/functions/Function0;

    iput-object p9, p0, Lx50;->j:Ljava/lang/String;

    iput-object p10, p0, Lx50;->k:Lkotlin/jvm/functions/Function0;

    iput-object p11, p0, Lx50;->l:Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;

    iput-object p12, p0, Lx50;->m:Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;

    iput p13, p0, Lx50;->n:I

    iput p14, p0, Lx50;->o:I

    iput p15, p0, Lx50;->p:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lx50;->n:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v13

    iget v1, v0, Lx50;->o:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v14

    iget-object v1, v0, Lx50;->b:Landroidx/compose/ui/Modifier;

    move-object v2, v1

    iget v1, v0, Lx50;->c:I

    move-object v3, v2

    iget-object v2, v0, Lx50;->d:Landroidx/compose/material3/SnackbarHostState;

    move-object v4, v3

    iget-object v3, v0, Lx50;->e:Ljava/lang/String;

    move-object v5, v4

    iget-object v4, v0, Lx50;->f:Ljava/lang/String;

    move-object v6, v5

    iget-object v5, v0, Lx50;->g:Ljava/lang/String;

    move-object v7, v6

    iget-boolean v6, v0, Lx50;->h:Z

    move-object v8, v7

    iget-object v7, v0, Lx50;->i:Lkotlin/jvm/functions/Function0;

    move-object v9, v8

    iget-object v8, v0, Lx50;->j:Ljava/lang/String;

    move-object v10, v9

    iget-object v9, v0, Lx50;->k:Lkotlin/jvm/functions/Function0;

    move-object v11, v10

    iget-object v10, v0, Lx50;->l:Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;

    move-object v15, v11

    iget-object v11, v0, Lx50;->m:Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;

    iget v0, v0, Lx50;->p:I

    move-object/from16 v16, v15

    move v15, v0

    move-object/from16 v0, v16

    invoke-static/range {v0 .. v15}, Lcom/vuitton/android/designkit/ui/theme/templates/LVEmptyViewKt;->d(Landroidx/compose/ui/Modifier;ILandroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
