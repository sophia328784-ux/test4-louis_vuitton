.class public final synthetic Ln30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;

.field public final synthetic d:Z

.field public final synthetic e:F

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;ZFLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln30;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Ln30;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;

    iput-boolean p3, p0, Ln30;->d:Z

    iput p4, p0, Ln30;->e:F

    iput-object p5, p0, Ln30;->f:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Ln30;->g:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    iget-object v0, p0, Ln30;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Ln30;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;

    iget-boolean v2, p0, Ln30;->d:Z

    iget v3, p0, Ln30;->e:F

    iget-object v4, p0, Ln30;->f:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Ln30;->g:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleProductViewKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;ZFLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
