.class public final synthetic Lcom/vuitton/android/designkit/ui/theme/molecules/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/vuitton/android/designkit/ui/theme/molecules/SearchBarState;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Landroidx/compose/ui/focus/FocusRequester;


# direct methods
.method public synthetic constructor <init>(ZLcom/vuitton/android/designkit/ui/theme/molecules/SearchBarState;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/b;->b:Z

    iput-object p2, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/b;->c:Lcom/vuitton/android/designkit/ui/theme/molecules/SearchBarState;

    iput-object p3, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/b;->d:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/b;->e:Landroidx/compose/ui/focus/FocusRequester;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSearchBarKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/2addr p2, v3

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-boolean p2, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/b;->b:Z

    if-eqz p2, :cond_4

    sget-object p2, Lcom/vuitton/android/designkit/ui/theme/molecules/SearchBarState;->Completed:Lcom/vuitton/android/designkit/ui/theme/molecules/SearchBarState;

    iget-object v0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/b;->c:Lcom/vuitton/android/designkit/ui/theme/molecules/SearchBarState;

    if-eq v0, p2, :cond_1

    sget-object p2, Lcom/vuitton/android/designkit/ui/theme/molecules/SearchBarState;->Typing:Lcom/vuitton/android/designkit/ui/theme/molecules/SearchBarState;

    if-ne v0, p2, :cond_4

    :cond_1
    const p2, 0x4c753bd8    # 6.428656E7f

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object p2, Lcom/vuitton/android/designkit/ui/theme/molecules/LVTextFieldInternal;->a:Lcom/vuitton/android/designkit/ui/theme/molecules/LVTextFieldInternal;

    const-string v0, "LVSearchBarInternal$lambda$18$1"

    const-string v1, "search_clear_button"

    invoke-static {v0, v1}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/b;->d:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_2

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v3, :cond_3

    :cond_2
    new-instance v4, Lf70;

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/b;->e:Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct {v4, v1, p0, v2}, Lf70;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/focus/FocusRequester;I)V

    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/16 p0, 0x180

    invoke-virtual {p2, p0, p1, v0, v4}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVTextFieldInternal;->c(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_1

    :cond_4
    const p0, 0x4c7ad997    # 6.5758812E7f

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_1

    :cond_5
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
