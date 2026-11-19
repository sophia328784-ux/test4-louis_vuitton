.class public final synthetic Lez;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;I)V
    .locals 0

    iput p2, p0, Lez;->b:I

    iput-object p1, p0, Lez;->c:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget v0, p0, Lez;->b:I

    iget-object p0, p0, Lez;->c:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment$Companion;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x1ed8

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->O(I)V

    :cond_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment$Companion;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x1ed9

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->O(I)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
