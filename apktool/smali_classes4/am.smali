.class public final synthetic Lam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/airbnb/lottie/compose/LottieAnimatable;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/compose/LottieAnimatable;I)V
    .locals 0

    iput p2, p0, Lam;->b:I

    iput-object p1, p0, Lam;->c:Lcom/airbnb/lottie/compose/LottieAnimatable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lam;->b:I

    iget-object p0, p0, Lam;->c:Lcom/airbnb/lottie/compose/LottieAnimatable;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt;->a:F

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    invoke-interface {p0}, Lcom/airbnb/lottie/compose/LottieAnimationState;->c()F

    move-result p0

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVRadioButtonKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {p0}, Lcom/airbnb/lottie/compose/LottieAnimationState;->c()F

    move-result p0

    goto :goto_0

    :pswitch_2
    invoke-interface {p0}, Lcom/airbnb/lottie/compose/LottieAnimationState;->c()F

    move-result p0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVCheckboxKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {p0}, Lcom/airbnb/lottie/compose/LottieAnimationState;->c()F

    move-result p0

    goto :goto_0

    :pswitch_4
    invoke-interface {p0}, Lcom/airbnb/lottie/compose/LottieAnimationState;->c()F

    move-result p0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
