.class public final synthetic Ld11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    iput p6, p0, Ld11;->b:I

    iput-object p1, p0, Ld11;->c:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;

    iput-object p2, p0, Ld11;->d:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Ld11;->e:Landroidx/compose/foundation/pager/PagerState;

    iput-object p4, p0, Ld11;->f:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Ld11;->g:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Ld11;->b:I

    iget-object v1, p0, Ld11;->g:Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Ld11;->f:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Ld11;->e:Landroidx/compose/foundation/pager/PagerState;

    iget-object v4, p0, Ld11;->d:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Ld11;->c:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightScreenKt;->a:F

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;->d:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->e:Z

    if-eqz p0, :cond_0

    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v4, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget v0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightScreenKt;->a:F

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;->d:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->e:Z

    if-eqz p0, :cond_1

    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v4, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
