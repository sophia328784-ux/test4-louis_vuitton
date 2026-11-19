.class public final synthetic Lz70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:I

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;FFILjava/util/List;Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function1;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz70;->b:Landroidx/compose/ui/Modifier;

    iput p2, p0, Lz70;->c:F

    iput p3, p0, Lz70;->d:F

    iput p4, p0, Lz70;->e:I

    iput-object p5, p0, Lz70;->f:Ljava/util/List;

    iput-object p6, p0, Lz70;->g:Landroidx/compose/foundation/pager/PagerState;

    iput-object p7, p0, Lz70;->h:Lkotlin/jvm/functions/Function1;

    iput p8, p0, Lz70;->i:I

    iput p9, p0, Lz70;->j:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lz70;->i:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    iget-object v0, p0, Lz70;->b:Landroidx/compose/ui/Modifier;

    iget v1, p0, Lz70;->c:F

    iget v2, p0, Lz70;->d:F

    iget v3, p0, Lz70;->e:I

    iget-object v4, p0, Lz70;->f:Ljava/util/List;

    iget-object v5, p0, Lz70;->g:Landroidx/compose/foundation/pager/PagerState;

    iget-object v6, p0, Lz70;->h:Lkotlin/jvm/functions/Function1;

    iget v9, p0, Lz70;->j:I

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVTabsKt;->a(Landroidx/compose/ui/Modifier;FFILjava/util/List;Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
