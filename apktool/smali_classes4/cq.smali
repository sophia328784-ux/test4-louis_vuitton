.class public final synthetic Lcq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/layout/ColumnScope;

.field public final synthetic c:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:F

.field public final synthetic h:Lcom/vuitton/android/presentation/screen/portal/models/PortalTeaserUiModel;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/foundation/pager/PagerState;IIIFLcom/vuitton/android/presentation/screen/portal/models/PortalTeaserUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcq;->b:Landroidx/compose/foundation/layout/ColumnScope;

    iput-object p2, p0, Lcq;->c:Landroidx/compose/foundation/pager/PagerState;

    iput p3, p0, Lcq;->d:I

    iput p4, p0, Lcq;->e:I

    iput p5, p0, Lcq;->f:I

    iput p6, p0, Lcq;->g:F

    iput-object p7, p0, Lcq;->h:Lcom/vuitton/android/presentation/screen/portal/models/PortalTeaserUiModel;

    iput-object p8, p0, Lcq;->i:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Lcq;->j:Lkotlin/jvm/functions/Function0;

    iput p10, p0, Lcq;->k:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lcq;->k:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget-object v0, p0, Lcq;->b:Landroidx/compose/foundation/layout/ColumnScope;

    iget-object v1, p0, Lcq;->c:Landroidx/compose/foundation/pager/PagerState;

    iget v2, p0, Lcq;->d:I

    iget v3, p0, Lcq;->e:I

    iget v4, p0, Lcq;->f:I

    iget v5, p0, Lcq;->g:F

    iget-object v6, p0, Lcq;->h:Lcom/vuitton/android/presentation/screen/portal/models/PortalTeaserUiModel;

    iget-object v7, p0, Lcq;->i:Lkotlin/jvm/functions/Function1;

    iget-object v8, p0, Lcq;->j:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v0 .. v10}, Lcom/vuitton/android/presentation/screen/portal/components/ContentSlideWithCountdownKt;->a(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/foundation/pager/PagerState;IIIFLcom/vuitton/android/presentation/screen/portal/models/PortalTeaserUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
