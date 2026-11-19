.class public final synthetic Lic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;ZI)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lic;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lic;->e:Ljava/lang/Object;

    iput-boolean p2, p0, Lic;->c:Z

    iput p3, p0, Lic;->d:I

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/Function;II)V
    .locals 0

    .line 13
    iput p4, p0, Lic;->b:I

    iput-boolean p1, p0, Lic;->c:Z

    iput-object p2, p0, Lic;->e:Ljava/lang/Object;

    iput p3, p0, Lic;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lic;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lic;->e:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p0, Lic;->d:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-boolean p0, p0, Lic;->c:Z

    invoke-static {p0, v0, p1, p2}, Landroidx/activity/compose/PredictiveBackHandlerKt;->a(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lic;->e:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    iget p2, p0, Lic;->d:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-boolean p0, p0, Lic;->c:Z

    invoke-static {v0, p0, p1, p2}, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComponentsKt;->b(Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;ZLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lic;->e:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p0, Lic;->d:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-boolean p0, p0, Lic;->c:Z

    invoke-static {p2, p1, v0, p0}, Landroidx/compose/material3/internal/BackHandler_androidKt;->a(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function0;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
