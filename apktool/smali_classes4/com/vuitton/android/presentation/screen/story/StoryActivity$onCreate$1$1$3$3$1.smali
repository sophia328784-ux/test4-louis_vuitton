.class final synthetic Lcom/vuitton/android/presentation/screen/story/StoryActivity$onCreate$1$1$3$3$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
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
    .locals 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/story/StoryActivity;

    sget-object v0, Lcom/vuitton/android/presentation/screen/story/StoryActivity;->t:Lcom/vuitton/android/presentation/screen/story/StoryActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/story/StoryActivity;->I()Lcom/vuitton/android/presentation/screen/story/StoryViewModel;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/story/components/StoryTrackingUiModel$OnHitCTAStoryEvent;->a:Lcom/vuitton/android/presentation/screen/story/components/StoryTrackingUiModel$OnHitCTAStoryEvent;

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/story/StoryViewModel;->K4(Lcom/vuitton/android/presentation/screen/story/components/StoryTrackingUiModel;)V

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/story/StoryActivity;->r:Z

    if-eqz v0, :cond_0

    const/16 p1, 0x65c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/story/StoryActivity;->H(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/story/StoryActivity;->q:Lcom/vuitton/android/presentation/link/LinkHandler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/story/StoryActivity;->s:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0, p1, p0, v1}, Lcom/vuitton/android/presentation/link/LinkHandler;->c(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Landroidx/activity/result/ActivityResultLauncher;)Z

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_1
    const-string p0, "linkHandler"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
