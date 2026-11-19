.class public final synthetic Lnj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

.field public final synthetic f:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

.field public final synthetic g:Z

.field public final synthetic h:Z

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnj;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lnj;->c:Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;

    iput-object p3, p0, Lnj;->d:Ljava/util/List;

    iput-object p4, p0, Lnj;->e:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    iput-object p5, p0, Lnj;->f:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iput-boolean p6, p0, Lnj;->g:Z

    iput-boolean p7, p0, Lnj;->h:Z

    iput-object p8, p0, Lnj;->i:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Lnj;->j:Lkotlin/jvm/functions/Function0;

    iput p10, p0, Lnj;->k:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lnj;->k:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget-object v0, p0, Lnj;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lnj;->c:Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;

    iget-object v2, p0, Lnj;->d:Ljava/util/List;

    iget-object v3, p0, Lnj;->e:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    iget-object v4, p0, Lnj;->f:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget-boolean v5, p0, Lnj;->g:Z

    iget-boolean v6, p0, Lnj;->h:Z

    iget-object v7, p0, Lnj;->i:Lkotlin/jvm/functions/Function1;

    iget-object v8, p0, Lnj;->j:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v0 .. v10}, Lcom/vuitton/android/presentation/common/editorial/components/carousell/CarouselLSingleKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
