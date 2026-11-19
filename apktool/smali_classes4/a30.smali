.class public final synthetic La30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/CarouselArticleSectionUiModel;

.field public final synthetic d:F

.field public final synthetic e:Z

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Z

.field public final synthetic h:Z

.field public final synthetic i:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/immersivearticle/models/CarouselArticleSectionUiModel;FZLkotlin/jvm/functions/Function1;ZZLkotlin/jvm/functions/Function0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La30;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, La30;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/CarouselArticleSectionUiModel;

    iput p3, p0, La30;->d:F

    iput-boolean p4, p0, La30;->e:Z

    iput-object p5, p0, La30;->f:Lkotlin/jvm/functions/Function1;

    iput-boolean p6, p0, La30;->g:Z

    iput-boolean p7, p0, La30;->h:Z

    iput-object p8, p0, La30;->i:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-object v0, p0, La30;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, La30;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/CarouselArticleSectionUiModel;

    iget v2, p0, La30;->d:F

    iget-boolean v3, p0, La30;->e:Z

    iget-object v4, p0, La30;->f:Lkotlin/jvm/functions/Function1;

    iget-boolean v5, p0, La30;->g:Z

    iget-boolean v6, p0, La30;->h:Z

    iget-object v7, p0, La30;->i:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleCarouselViewKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/immersivearticle/models/CarouselArticleSectionUiModel;FZLkotlin/jvm/functions/Function1;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
