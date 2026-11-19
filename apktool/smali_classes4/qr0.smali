.class public final synthetic Lqr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

.field public final synthetic d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;I)V
    .locals 0

    iput p3, p0, Lqr0;->b:I

    iput-object p1, p0, Lqr0;->c:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    iput-object p2, p0, Lqr0;->d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lqr0;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lqr0;->c:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->a:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lqr0;->d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    invoke-virtual {p0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e()V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lqr0;->c:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->a:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lqr0;->d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    invoke-virtual {p0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e()V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
