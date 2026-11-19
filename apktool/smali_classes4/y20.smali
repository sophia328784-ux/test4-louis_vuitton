.class public final synthetic Ly20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:F

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleAssetUiModel;

.field public final synthetic e:Z

.field public final synthetic f:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;FLcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleAssetUiModel;ZLkotlin/jvm/functions/Function1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly20;->b:Landroidx/compose/ui/Modifier;

    iput p2, p0, Ly20;->c:F

    iput-object p3, p0, Ly20;->d:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleAssetUiModel;

    iput-boolean p4, p0, Ly20;->e:Z

    iput-object p5, p0, Ly20;->f:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-object v0, p0, Ly20;->b:Landroidx/compose/ui/Modifier;

    iget v1, p0, Ly20;->c:F

    iget-object v2, p0, Ly20;->d:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleAssetUiModel;

    iget-boolean v3, p0, Ly20;->e:Z

    iget-object v4, p0, Ly20;->f:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleCarouselViewKt;->a(Landroidx/compose/ui/Modifier;FLcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleAssetUiModel;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
