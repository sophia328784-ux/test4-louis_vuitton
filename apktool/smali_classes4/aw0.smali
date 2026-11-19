.class public final synthetic Law0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:F

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/pager/PagerState;Ljava/util/List;FZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Law0;->b:Landroidx/compose/foundation/pager/PagerState;

    iput-object p2, p0, Law0;->c:Ljava/util/List;

    iput p3, p0, Law0;->d:F

    iput-boolean p4, p0, Law0;->e:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x181

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v5

    iget-object v0, p0, Law0;->b:Landroidx/compose/foundation/pager/PagerState;

    iget-object v1, p0, Law0;->c:Ljava/util/List;

    iget v2, p0, Law0;->d:F

    iget-boolean v3, p0, Law0;->e:Z

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt;->a(Landroidx/compose/foundation/pager/PagerState;Ljava/util/List;FZLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
