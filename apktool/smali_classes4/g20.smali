.class public final synthetic Lg20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Simple;

.field public final synthetic e:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(ZLcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Simple;Lkotlin/jvm/functions/Function2;II)V
    .locals 0

    iput p5, p0, Lg20;->b:I

    iput-boolean p1, p0, Lg20;->c:Z

    iput-object p2, p0, Lg20;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Simple;

    iput-object p3, p0, Lg20;->e:Lkotlin/jvm/functions/Function2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lg20;->b:I

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-boolean v0, p0, Lg20;->c:Z

    iget-object v1, p0, Lg20;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Simple;

    iget-object p0, p0, Lg20;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vuitton/android/presentation/screen/storemode/filters/components/TextFilterComponentKt;->b(ZLcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Simple;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-boolean v0, p0, Lg20;->c:Z

    iget-object v1, p0, Lg20;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Simple;

    iget-object p0, p0, Lg20;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vuitton/android/presentation/screen/storemode/filters/components/ImageFilterComponentKt;->a(ZLcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Simple;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
