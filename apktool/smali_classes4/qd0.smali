.class public final synthetic Lqd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    .line 13
    iput p4, p0, Lqd0;->b:I

    iput-object p1, p0, Lqd0;->c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iput-object p2, p0, Lqd0;->d:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lqd0;->e:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lqd0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqd0;->d:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lqd0;->c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iput-object p3, p0, Lqd0;->e:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lqd0;->b:I

    iget-object v1, p0, Lqd0;->e:Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Lqd0;->d:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lqd0;->c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/onboarding/components/OnboardingIconComposableKt;->a:Landroid/graphics/PathMeasure;

    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState$Companion;

    new-instance v0, Lk40;

    const/16 v3, 0x1c

    invoke-direct {v0, v3}, Lk40;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->b(Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->d()V

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
