.class final synthetic Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$onViewCreated$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->H:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->H:Z

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->P()Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModel;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchDetailPageScreen;

    iget-object v2, p1, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchDetailPageScreen;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModel;->D(Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel;)V

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->P()Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModel;

    move-result-object v0

    iget v1, p1, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModel;->U9(Ljava/lang/Integer;)V

    const/4 v0, 0x2

    if-lt v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->P()Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModel;->p0()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->P()Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModel;->T9()V

    :goto_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentWatchDetailsBinding;

    move-result-object v2

    iget-object v3, v2, Lcom/vuitton/android/presentation/databinding/FragmentWatchDetailsBinding;->d:Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;

    iget-object v3, v3, Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;->c:Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;

    iget-object v3, v3, Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;->c:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v4, p1, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;->f:Ljava/lang/String;

    if-nez v4, :cond_2

    const-string v4, ""

    :cond_2
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/vuitton/android/presentation/databinding/FragmentWatchDetailsBinding;->q:Landroid/widget/ImageView;

    iget-object v4, p1, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;->i:Ljava/lang/String;

    iget v5, p1, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;->h:I

    const/16 v6, 0x78

    invoke-static {v3, v4, v5, v5, v6}, Lcom/vuitton/android/presentation/imageloading/xmlui/XmlUiKt;->a(Landroid/widget/ImageView;Ljava/lang/Object;III)V

    iget-object v3, v2, Lcom/vuitton/android/presentation/databinding/FragmentWatchDetailsBinding;->k:Landroid/widget/LinearLayout;

    new-instance v4, Lm21;

    const/16 v5, 0x1d

    invoke-direct {v4, p0, p1, v5}, Lm21;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v3, v4}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    if-lt v1, v0, :cond_3

    iget-object p0, v2, Lcom/vuitton/android/presentation/databinding/FragmentWatchDetailsBinding;->m:Landroid/widget/ProgressBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v2, Lcom/vuitton/android/presentation/databinding/FragmentWatchDetailsBinding;->l:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
