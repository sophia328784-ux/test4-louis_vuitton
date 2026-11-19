.class public final synthetic Lcom/vuitton/android/designkit/ui/theme/molecules/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/text/input/TextFieldValue;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSearchBar;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:I

.field public final synthetic g:Z

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:Lkotlin/jvm/functions/Function0;

.field public final synthetic j:Z

.field public final synthetic k:Lcom/vuitton/android/designkit/ui/theme/molecules/SearchBarState;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Landroidx/compose/ui/focus/FocusRequester;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/input/TextFieldValue;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSearchBar;Ljava/lang/String;IZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLcom/vuitton/android/designkit/ui/theme/molecules/SearchBarState;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/a;->b:Landroidx/compose/ui/text/input/TextFieldValue;

    iput-object p2, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/a;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/a;->d:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSearchBar;

    iput-object p4, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/a;->e:Ljava/lang/String;

    iput p5, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/a;->f:I

    iput-boolean p6, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/a;->g:Z

    iput-object p7, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/a;->h:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/a;->i:Lkotlin/jvm/functions/Function0;

    iput-boolean p9, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/a;->j:Z

    iput-object p10, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/a;->k:Lcom/vuitton/android/designkit/ui/theme/molecules/SearchBarState;

    iput-object p11, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/a;->l:Lkotlin/jvm/functions/Function1;

    iput-object p12, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/a;->m:Landroidx/compose/ui/focus/FocusRequester;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    move-object/from16 v7, p2

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSearchBarKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v2, v1, 0x6

    if-nez v2, :cond_1

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit8 v2, v1, 0x13

    const/16 v3, 0x12

    if-eq v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    and-int/lit8 v3, v1, 0x1

    invoke-interface {v7, v3, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/molecules/LVTextFieldInternal;->a:Lcom/vuitton/android/designkit/ui/theme/molecules/LVTextFieldInternal;

    iget-object v3, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/a;->b:Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object v3, v3, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    new-instance v8, Lj8;

    iget-object v9, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/a;->e:Ljava/lang/String;

    iget v10, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/a;->f:I

    iget-object v6, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/a;->d:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSearchBar;

    iget-boolean v12, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/a;->g:Z

    iget-object v13, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/a;->h:Lkotlin/jvm/functions/Function0;

    iget-object v14, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/a;->i:Lkotlin/jvm/functions/Function0;

    move-object v11, v6

    invoke-direct/range {v8 .. v14}, Lj8;-><init>(Ljava/lang/String;ILcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSearchBar;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    const v4, 0x65e19fec

    invoke-static {v4, v8, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    new-instance v8, Lcom/vuitton/android/designkit/ui/theme/molecules/b;

    iget-boolean v9, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/a;->j:Z

    iget-object v10, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/a;->k:Lcom/vuitton/android/designkit/ui/theme/molecules/SearchBarState;

    iget-object v11, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/a;->l:Lkotlin/jvm/functions/Function1;

    iget-object v12, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/a;->m:Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/vuitton/android/designkit/ui/theme/molecules/b;-><init>(ZLcom/vuitton/android/designkit/ui/theme/molecules/SearchBarState;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/focus/FocusRequester;)V

    const v9, 0x12db25cb

    invoke-static {v9, v8, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v8

    shl-int/lit8 v1, v1, 0xc

    const v9, 0xe000

    and-int/2addr v1, v9

    const v9, 0x180d80

    or-int/2addr v1, v9

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/a;->c:Ljava/lang/String;

    move-object v15, v2

    move-object v2, v0

    move-object v0, v15

    move-object v15, v8

    move v8, v1

    move-object v1, v3

    move-object v3, v4

    move-object v4, v15

    invoke-virtual/range {v0 .. v8}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVTextFieldInternal;->a(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSearchBar;Landroidx/compose/runtime/Composer;I)V

    goto :goto_2

    :cond_3
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
