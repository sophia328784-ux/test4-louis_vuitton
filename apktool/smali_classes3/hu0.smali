.class public final synthetic Lhu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;IILkotlin/jvm/functions/Function1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhu0;->b:Landroidx/compose/foundation/lazy/LazyListState;

    iput p2, p0, Lhu0;->c:I

    iput p3, p0, Lhu0;->d:I

    iput-object p4, p0, Lhu0;->e:Lkotlin/jvm/functions/Function1;

    iput p5, p0, Lhu0;->f:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lhu0;->f:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v5

    iget-object v0, p0, Lhu0;->b:Landroidx/compose/foundation/lazy/LazyListState;

    iget v1, p0, Lhu0;->c:I

    iget v2, p0, Lhu0;->d:I

    iget-object v3, p0, Lhu0;->e:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/compose/components/ScrollProgressTrackerKt;->a(Landroidx/compose/foundation/lazy/LazyListState;IILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
