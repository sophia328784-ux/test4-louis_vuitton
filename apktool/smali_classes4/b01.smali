.class public final synthetic Lb01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/runtime/State;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;

.field public final synthetic e:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    iput p5, p0, Lb01;->b:I

    iput-object p1, p0, Lb01;->c:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lb01;->d:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lb01;->e:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iput-object p4, p0, Lb01;->f:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lb01;->b:I

    iget-object v1, p0, Lb01;->f:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Lb01;->e:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iget-object v3, p0, Lb01;->d:Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Lb01;->c:Landroidx/compose/runtime/State;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->b:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->d:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->e:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetType$AuthSelection;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetType$AuthSelection;-><init>(Z)V

    invoke-interface {v3, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->b:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->d:Z

    if-nez v0, :cond_3

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->e:Z

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_3

    :cond_3
    :goto_2
    new-instance p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetType$AuthSelection;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetType$AuthSelection;-><init>(Z)V

    invoke-interface {v3, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e()V

    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
