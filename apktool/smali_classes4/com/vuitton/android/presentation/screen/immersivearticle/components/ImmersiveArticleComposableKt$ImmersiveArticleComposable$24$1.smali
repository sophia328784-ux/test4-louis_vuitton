.class final Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$24$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;",
        "Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;",
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


# instance fields
.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$24$1;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;->b:Ljava/lang/String;

    check-cast p2, Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$24$1;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToLiveVideoPage;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToLiveVideoPage;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
