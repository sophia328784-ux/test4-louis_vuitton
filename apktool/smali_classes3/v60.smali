.class public final synthetic Lv60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic c:I

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:J

.field public final synthetic f:J

.field public final synthetic g:F

.field public final synthetic h:I

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/pager/PagerState;ILandroidx/compose/ui/Modifier;JJFII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv60;->b:Landroidx/compose/foundation/pager/PagerState;

    iput p2, p0, Lv60;->c:I

    iput-object p3, p0, Lv60;->d:Landroidx/compose/ui/Modifier;

    iput-wide p4, p0, Lv60;->e:J

    iput-wide p6, p0, Lv60;->f:J

    iput p8, p0, Lv60;->g:F

    iput p9, p0, Lv60;->h:I

    iput p10, p0, Lv60;->i:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lv60;->h:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-object v0, p0, Lv60;->b:Landroidx/compose/foundation/pager/PagerState;

    iget v1, p0, Lv60;->c:I

    iget-object v2, p0, Lv60;->d:Landroidx/compose/ui/Modifier;

    iget-wide v3, p0, Lv60;->e:J

    iget-wide v5, p0, Lv60;->f:J

    iget v7, p0, Lv60;->g:F

    iget v10, p0, Lv60;->i:I

    invoke-static/range {v0 .. v10}, Lcom/vuitton/android/presentation/compose/components/LVPagerLineIndicatorKt;->a(Landroidx/compose/foundation/pager/PagerState;ILandroidx/compose/ui/Modifier;JJFLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
