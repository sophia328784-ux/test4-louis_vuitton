.class public final synthetic Lt31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lt31;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt31;->d:Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;

    iput-object p2, p0, Lt31;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;)V
    .locals 1

    .line 11
    const/4 v0, 0x1

    iput v0, p0, Lt31;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt31;->c:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lt31;->d:Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lt31;->b:I

    iget-object v1, p0, Lt31;->d:Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;

    iget-object p0, p0, Lt31;->c:Lkotlin/jvm/functions/Function1;

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;->e:Ljava/util/List;

    iget v1, v1, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->a:Ljava/lang/String;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-boolean v0, v1, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;->g:Z

    if-nez v0, :cond_0

    iget v0, v1, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
