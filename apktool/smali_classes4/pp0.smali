.class public final synthetic Lpp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;

.field public final synthetic e:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

.field public final synthetic f:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(ZLcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    iput p5, p0, Lpp0;->b:I

    iput-boolean p1, p0, Lpp0;->c:Z

    iput-object p2, p0, Lpp0;->d:Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;

    iput-object p3, p0, Lpp0;->e:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iput-object p4, p0, Lpp0;->f:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lpp0;->b:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lpp0;->c:Z

    iget-object v1, p0, Lpp0;->d:Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    invoke-interface {v1, p0}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;->za(Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lmp0;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lmp0;-><init>(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;I)V

    iget-object v1, p0, Lpp0;->f:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lpp0;->e:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    invoke-virtual {p0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e()V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-boolean v0, p0, Lpp0;->c:Z

    iget-object v1, p0, Lpp0;->d:Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    invoke-interface {v1, p0}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;->xc(Z)V

    goto :goto_1

    :cond_1
    new-instance v0, Lmp0;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lmp0;-><init>(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;I)V

    iget-object v1, p0, Lpp0;->f:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lpp0;->e:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    invoke-virtual {p0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
