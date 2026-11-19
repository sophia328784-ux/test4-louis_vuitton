.class public final synthetic Lq20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

.field public final synthetic f:Z

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(ILjava/util/ArrayList;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V
    .locals 0

    iput p9, p0, Lq20;->b:I

    iput p1, p0, Lq20;->c:I

    iput-object p2, p0, Lq20;->d:Ljava/util/ArrayList;

    iput-object p3, p0, Lq20;->e:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    iput-boolean p4, p0, Lq20;->f:Z

    iput-object p5, p0, Lq20;->g:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lq20;->h:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lq20;->i:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lq20;->b:I

    packed-switch v0, :pswitch_data_0

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget v1, p0, Lq20;->c:I

    iget-object v2, p0, Lq20;->d:Ljava/util/ArrayList;

    iget-object v3, p0, Lq20;->e:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    iget-boolean v4, p0, Lq20;->f:Z

    iget-object v5, p0, Lq20;->g:Lkotlin/jvm/functions/Function0;

    iget-object v6, p0, Lq20;->h:Lkotlin/jvm/functions/Function0;

    iget-object v7, p0, Lq20;->i:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/presentation/screen/imageviewer/components/ImageViewerScreenKt;->a(ILjava/util/ArrayList;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    iget v0, p0, Lq20;->c:I

    iget-object v1, p0, Lq20;->d:Ljava/util/ArrayList;

    iget-object v2, p0, Lq20;->e:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    iget-boolean v3, p0, Lq20;->f:Z

    iget-object v4, p0, Lq20;->g:Lkotlin/jvm/functions/Function0;

    iget-object v5, p0, Lq20;->h:Lkotlin/jvm/functions/Function0;

    iget-object v6, p0, Lq20;->i:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/imageviewer/components/ImageViewerComposableKt;->a(ILjava/util/ArrayList;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
