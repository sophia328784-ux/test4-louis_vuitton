.class final Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$18$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
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
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticle3dSectionUiModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticle3dSectionUiModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$18$1;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$18$1;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$18$1;->d:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticle3dSectionUiModel;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$On3DTouchedEvent;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$18$1;->d:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticle3dSectionUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticle3dSectionUiModel;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$18$1;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$18$1;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    invoke-direct {v0, v3, p0, v2, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$On3DTouchedEvent;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
