.class public final synthetic Lxv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;

.field public final synthetic c:Landroidx/compose/material3/SnackbarHostState;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Lkotlin/jvm/functions/Function1;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Lkotlin/jvm/functions/Function1;

.field public final synthetic n:Lkotlin/jvm/functions/Function0;

.field public final synthetic o:Lkotlin/jvm/functions/Function0;

.field public final synthetic p:I


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxv;->b:Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;

    iput-object p2, p0, Lxv;->c:Landroidx/compose/material3/SnackbarHostState;

    iput-object p3, p0, Lxv;->d:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lxv;->e:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lxv;->f:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lxv;->g:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lxv;->h:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lxv;->i:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Lxv;->j:Lkotlin/jvm/functions/Function1;

    iput-object p10, p0, Lxv;->k:Lkotlin/jvm/functions/Function1;

    iput-object p11, p0, Lxv;->l:Lkotlin/jvm/functions/Function1;

    iput-object p12, p0, Lxv;->m:Lkotlin/jvm/functions/Function1;

    iput-object p13, p0, Lxv;->n:Lkotlin/jvm/functions/Function0;

    iput-object p14, p0, Lxv;->o:Lkotlin/jvm/functions/Function0;

    iput p15, p0, Lxv;->p:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lxv;->p:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v15

    iget-object v1, v0, Lxv;->b:Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;

    move-object v2, v1

    iget-object v1, v0, Lxv;->c:Landroidx/compose/material3/SnackbarHostState;

    move-object v3, v2

    iget-object v2, v0, Lxv;->d:Lkotlin/jvm/functions/Function0;

    move-object v4, v3

    iget-object v3, v0, Lxv;->e:Lkotlin/jvm/functions/Function0;

    move-object v5, v4

    iget-object v4, v0, Lxv;->f:Lkotlin/jvm/functions/Function0;

    move-object v6, v5

    iget-object v5, v0, Lxv;->g:Lkotlin/jvm/functions/Function0;

    move-object v7, v6

    iget-object v6, v0, Lxv;->h:Lkotlin/jvm/functions/Function1;

    move-object v8, v7

    iget-object v7, v0, Lxv;->i:Lkotlin/jvm/functions/Function1;

    move-object v9, v8

    iget-object v8, v0, Lxv;->j:Lkotlin/jvm/functions/Function1;

    move-object v10, v9

    iget-object v9, v0, Lxv;->k:Lkotlin/jvm/functions/Function1;

    move-object v11, v10

    iget-object v10, v0, Lxv;->l:Lkotlin/jvm/functions/Function1;

    move-object v12, v11

    iget-object v11, v0, Lxv;->m:Lkotlin/jvm/functions/Function1;

    move-object v13, v12

    iget-object v12, v0, Lxv;->n:Lkotlin/jvm/functions/Function0;

    iget-object v0, v0, Lxv;->o:Lkotlin/jvm/functions/Function0;

    move-object/from16 v16, v13

    move-object v13, v0

    move-object/from16 v0, v16

    invoke-static/range {v0 .. v15}, Lcom/vuitton/android/presentation/screen/options/settings/components/EditSettingsComposableKt;->b(Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
