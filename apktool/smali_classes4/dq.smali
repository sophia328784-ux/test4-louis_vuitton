.class public final synthetic Ldq;
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

.field public final synthetic h:Lcom/vuitton/android/presentation/screen/portal/models/PortalDataUiModel;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/foundation/pager/PagerState;IIIFLcom/vuitton/android/presentation/screen/portal/models/PortalDataUiModel;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldq;->b:Landroidx/compose/foundation/layout/ColumnScope;

    iput-object p2, p0, Ldq;->c:Landroidx/compose/foundation/pager/PagerState;

    iput p3, p0, Ldq;->d:I

    iput p4, p0, Ldq;->e:I

    iput p5, p0, Ldq;->f:I

    iput p6, p0, Ldq;->g:F

    iput-object p7, p0, Ldq;->h:Lcom/vuitton/android/presentation/screen/portal/models/PortalDataUiModel;

    iput-object p8, p0, Ldq;->i:Lkotlin/jvm/functions/Function1;

    iput p9, p0, Ldq;->j:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Ldq;->j:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-object v0, p0, Ldq;->b:Landroidx/compose/foundation/layout/ColumnScope;

    iget-object v1, p0, Ldq;->c:Landroidx/compose/foundation/pager/PagerState;

    iget v2, p0, Ldq;->d:I

    iget v3, p0, Ldq;->e:I

    iget v4, p0, Ldq;->f:I

    iget v5, p0, Ldq;->g:F

    iget-object v6, p0, Ldq;->h:Lcom/vuitton/android/presentation/screen/portal/models/PortalDataUiModel;

    iget-object v7, p0, Ldq;->i:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/portal/components/ContentSlideWithoutCountdownKt;->a(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/foundation/pager/PagerState;IIIFLcom/vuitton/android/presentation/screen/portal/models/PortalDataUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
