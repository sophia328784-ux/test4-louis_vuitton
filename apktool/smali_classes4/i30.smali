.class public final synthetic Li30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/immersivearticle/models/CtaListArticleSectionUiModel;

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/immersivearticle/models/CtaListArticleSectionUiModel;ZZLkotlin/jvm/functions/Function1;II)V
    .locals 0

    iput p7, p0, Li30;->b:I

    iput-object p1, p0, Li30;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Li30;->d:Lcom/vuitton/android/presentation/screen/immersivearticle/models/CtaListArticleSectionUiModel;

    iput-boolean p3, p0, Li30;->e:Z

    iput-boolean p4, p0, Li30;->f:Z

    iput-object p5, p0, Li30;->g:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Li30;->b:I

    const/4 v1, 0x7

    packed-switch v0, :pswitch_data_0

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    iget-object v2, p0, Li30;->c:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Li30;->d:Lcom/vuitton/android/presentation/screen/immersivearticle/models/CtaListArticleSectionUiModel;

    iget-boolean v4, p0, Li30;->e:Z

    iget-boolean v5, p0, Li30;->f:Z

    iget-object v6, p0, Li30;->g:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v2 .. v8}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleCtaListViewKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/immersivearticle/models/CtaListArticleSectionUiModel;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-object v0, p0, Li30;->c:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Li30;->d:Lcom/vuitton/android/presentation/screen/immersivearticle/models/CtaListArticleSectionUiModel;

    iget-boolean v2, p0, Li30;->e:Z

    iget-boolean v3, p0, Li30;->f:Z

    iget-object v4, p0, Li30;->g:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleCtaListViewKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/immersivearticle/models/CtaListArticleSectionUiModel;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
