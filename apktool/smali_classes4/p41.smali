.class public final synthetic Lp41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;I)V
    .locals 0

    iput p2, p0, Lp41;->b:I

    iput-object p1, p0, Lp41;->c:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget v0, p0, Lp41;->b:I

    iget-object p0, p0, Lp41;->c:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment$Companion;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x25d5

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->O(I)V

    :cond_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment$Companion;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x25d4

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->O(I)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
