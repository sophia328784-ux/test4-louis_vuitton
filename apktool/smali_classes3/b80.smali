.class public final synthetic Lb80;
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


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;FFILjava/util/List;Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb80;->b:Landroidx/compose/ui/Modifier;

    iput p2, p0, Lb80;->c:F

    iput p3, p0, Lb80;->d:F

    iput p4, p0, Lb80;->e:I

    iput-object p5, p0, Lb80;->f:Ljava/util/List;

    iput-object p6, p0, Lb80;->g:Landroidx/compose/foundation/pager/PagerState;

    iput-object p7, p0, Lb80;->h:Lkotlin/jvm/functions/Function1;

    iput p8, p0, Lb80;->i:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    iget p1, p0, Lb80;->i:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    iget-object v0, p0, Lb80;->b:Landroidx/compose/ui/Modifier;

    iget v1, p0, Lb80;->c:F

    iget v2, p0, Lb80;->d:F

    iget v3, p0, Lb80;->e:I

    iget-object v4, p0, Lb80;->f:Ljava/util/List;

    iget-object v5, p0, Lb80;->g:Landroidx/compose/foundation/pager/PagerState;

    iget-object v6, p0, Lb80;->h:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVTabsKt;->b(Landroidx/compose/ui/Modifier;FFILjava/util/List;Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
