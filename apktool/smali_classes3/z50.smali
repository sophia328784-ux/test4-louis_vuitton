.class public final synthetic Lz50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:I

.field public final synthetic f:F

.field public final synthetic g:F

.field public final synthetic h:F

.field public final synthetic i:Lkotlin/jvm/functions/Function4;

.field public final synthetic j:I

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Ljava/util/List;IFFFLkotlin/jvm/functions/Function4;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz50;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lz50;->c:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p3, p0, Lz50;->d:Ljava/util/List;

    iput p4, p0, Lz50;->e:I

    iput p5, p0, Lz50;->f:F

    iput p6, p0, Lz50;->g:F

    iput p7, p0, Lz50;->h:F

    iput-object p8, p0, Lz50;->i:Lkotlin/jvm/functions/Function4;

    iput p9, p0, Lz50;->j:I

    iput p10, p0, Lz50;->k:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lz50;->j:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-object v0, p0, Lz50;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lz50;->c:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v2, p0, Lz50;->d:Ljava/util/List;

    iget v3, p0, Lz50;->e:I

    iget v4, p0, Lz50;->f:F

    iget v5, p0, Lz50;->g:F

    iget v6, p0, Lz50;->h:F

    iget-object v7, p0, Lz50;->i:Lkotlin/jvm/functions/Function4;

    iget v10, p0, Lz50;->k:I

    invoke-static/range {v0 .. v10}, Lcom/vuitton/android/designkit/components/components/LVFreeCarouselWithHintKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Ljava/util/List;IFFFLkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
