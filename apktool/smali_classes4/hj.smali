.class public final synthetic Lhj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

.field public final synthetic d:F

.field public final synthetic e:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic f:Z

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:I

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/model/common/AssetUiModel;FLandroidx/compose/ui/graphics/Shape;ZLkotlin/jvm/functions/Function0;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhj;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lhj;->c:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iput p3, p0, Lhj;->d:F

    iput-object p4, p0, Lhj;->e:Landroidx/compose/ui/graphics/Shape;

    iput-boolean p5, p0, Lhj;->f:Z

    iput-object p6, p0, Lhj;->g:Lkotlin/jvm/functions/Function0;

    iput p7, p0, Lhj;->h:I

    iput p8, p0, Lhj;->i:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lhj;->h:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    iget-object v0, p0, Lhj;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lhj;->c:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iget v2, p0, Lhj;->d:F

    iget-object v3, p0, Lhj;->e:Landroidx/compose/ui/graphics/Shape;

    iget-boolean v4, p0, Lhj;->f:Z

    iget-object v5, p0, Lhj;->g:Lkotlin/jvm/functions/Function0;

    iget v8, p0, Lhj;->i:I

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/common/editorial/components/CarouselAssetKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/model/common/AssetUiModel;FLandroidx/compose/ui/graphics/Shape;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
