.class public final synthetic Lvd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;IZLjava/lang/String;I)V
    .locals 0

    const/4 p5, 0x3

    iput p5, p0, Lvd;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvd;->d:Ljava/lang/Object;

    iput p2, p0, Lvd;->e:I

    iput-boolean p3, p0, Lvd;->c:Z

    iput-object p4, p0, Lvd;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutItemUiModel;ZI)V
    .locals 1

    .line 15
    const/4 v0, 0x7

    iput v0, p0, Lvd;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvd;->f:Ljava/lang/Object;

    iput-object p2, p0, Lvd;->d:Ljava/lang/Object;

    iput-boolean p3, p0, Lvd;->c:Z

    iput p4, p0, Lvd;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ZLkotlin/Function;II)V
    .locals 0

    .line 16
    iput p5, p0, Lvd;->b:I

    iput-object p1, p0, Lvd;->f:Ljava/lang/Object;

    iput-boolean p2, p0, Lvd;->c:Z

    iput-object p3, p0, Lvd;->d:Ljava/lang/Object;

    iput p4, p0, Lvd;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;II)V
    .locals 0

    .line 17
    const/4 p4, 0x0

    iput p4, p0, Lvd;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvd;->f:Ljava/lang/Object;

    iput-boolean p2, p0, Lvd;->c:Z

    iput-object p3, p0, Lvd;->d:Ljava/lang/Object;

    iput p5, p0, Lvd;->e:I

    return-void
.end method

.method public synthetic constructor <init>(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;I)V
    .locals 1

    .line 18
    const/4 v0, 0x6

    iput v0, p0, Lvd;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lvd;->c:Z

    iput-object p2, p0, Lvd;->f:Ljava/lang/Object;

    iput-object p3, p0, Lvd;->d:Ljava/lang/Object;

    iput p4, p0, Lvd;->e:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lvd;->b:I

    iget v1, p0, Lvd;->e:I

    iget-boolean v2, p0, Lvd;->c:Z

    const/4 v3, 0x1

    iget-object v4, p0, Lvd;->d:Ljava/lang/Object;

    iget-object v5, p0, Lvd;->f:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v5, Landroidx/compose/ui/Modifier;

    check-cast v4, Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutItemUiModel;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v5, v4, v2, p1, p0}, Lcom/vuitton/android/presentation/screen/thankyou/components/ThankYouScreenKt;->k(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutItemUiModel;ZLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast v5, Landroidx/compose/ui/text/style/ResolvedTextDirection;

    check-cast v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v2, v5, v4, p1, p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;->a(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast v5, Landroidx/compose/ui/Modifier;

    check-cast v4, Lkotlin/jvm/functions/Function2;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v5, v2, v4, p1, p0}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightBottomStepperKt;->a(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast v5, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ResetFilterTag;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v5, v2, v4, p1, p0}, Lcom/vuitton/android/presentation/screen/storemode/filters/components/ResetFilterTagListKt;->a(Lcom/vuitton/android/presentation/screen/storemode/filters/model/ResetFilterTag;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    move-object v0, v4

    check-cast v0, Landroidx/compose/ui/Modifier;

    check-cast v5, Ljava/lang/String;

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v6, v3

    move-object v3, v5

    invoke-static {v6}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v5

    iget v1, p0, Lvd;->e:I

    iget-boolean v2, p0, Lvd;->c:Z

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComponentsKt;->d(Landroidx/compose/ui/Modifier;IZLjava/lang/String;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    move v6, v3

    check-cast v5, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v5, v2, v4, p1, p0}, Lcom/vuitton/android/presentation/screen/mylv/components/MyLvComposableKt;->a(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    move v6, v3

    check-cast v5, Landroidx/media3/exoplayer/ExoPlayer;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    invoke-static {v5, v2, v4, p1, p0}, Lcom/vuitton/android/presentation/screen/livevideo/component/LiveVideoPlayerComponentKt;->a(Landroidx/media3/exoplayer/ExoPlayer;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v2, v4

    check-cast v2, Lkotlin/jvm/functions/Function0;

    move-object v3, p1

    check-cast v3, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x31

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v4

    iget-boolean v1, p0, Lvd;->c:Z

    iget v5, p0, Lvd;->e:I

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyDualColorComparatorKt;->c(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
