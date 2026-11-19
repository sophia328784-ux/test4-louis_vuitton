.class public final synthetic Lm4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;

.field public final synthetic d:Landroidx/compose/material3/SnackbarHostState;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;

.field public final synthetic g:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

.field public final synthetic h:Z

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Lkotlin/jvm/functions/Function2;

.field public final synthetic k:Lkotlin/jvm/functions/Function0;

.field public final synthetic l:Lkotlin/jvm/functions/Function0;

.field public final synthetic m:Lkotlin/jvm/functions/Function1;

.field public final synthetic n:Lkotlin/jvm/functions/Function0;

.field public final synthetic o:I


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;Landroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm4;->b:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;

    iput-object p2, p0, Lm4;->c:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;

    iput-object p3, p0, Lm4;->d:Landroidx/compose/material3/SnackbarHostState;

    iput-object p4, p0, Lm4;->e:Ljava/lang/String;

    iput-object p5, p0, Lm4;->f:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;

    iput-object p6, p0, Lm4;->g:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iput-boolean p7, p0, Lm4;->h:Z

    iput-object p8, p0, Lm4;->i:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Lm4;->j:Lkotlin/jvm/functions/Function2;

    iput-object p10, p0, Lm4;->k:Lkotlin/jvm/functions/Function0;

    iput-object p11, p0, Lm4;->l:Lkotlin/jvm/functions/Function0;

    iput-object p12, p0, Lm4;->m:Lkotlin/jvm/functions/Function1;

    iput-object p13, p0, Lm4;->n:Lkotlin/jvm/functions/Function0;

    iput p14, p0, Lm4;->o:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    check-cast v13, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lm4;->o:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v14

    iget-object v1, v0, Lm4;->b:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;

    move-object v2, v1

    iget-object v1, v0, Lm4;->c:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;

    move-object v3, v2

    iget-object v2, v0, Lm4;->d:Landroidx/compose/material3/SnackbarHostState;

    move-object v4, v3

    iget-object v3, v0, Lm4;->e:Ljava/lang/String;

    move-object v5, v4

    iget-object v4, v0, Lm4;->f:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;

    move-object v6, v5

    iget-object v5, v0, Lm4;->g:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object v7, v6

    iget-boolean v6, v0, Lm4;->h:Z

    move-object v8, v7

    iget-object v7, v0, Lm4;->i:Lkotlin/jvm/functions/Function1;

    move-object v9, v8

    iget-object v8, v0, Lm4;->j:Lkotlin/jvm/functions/Function2;

    move-object v10, v9

    iget-object v9, v0, Lm4;->k:Lkotlin/jvm/functions/Function0;

    move-object v11, v10

    iget-object v10, v0, Lm4;->l:Lkotlin/jvm/functions/Function0;

    move-object v12, v11

    iget-object v11, v0, Lm4;->m:Lkotlin/jvm/functions/Function1;

    iget-object v0, v0, Lm4;->n:Lkotlin/jvm/functions/Function0;

    move-object v15, v12

    move-object v12, v0

    move-object v0, v15

    invoke-static/range {v0 .. v14}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt;->b(Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;Landroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
