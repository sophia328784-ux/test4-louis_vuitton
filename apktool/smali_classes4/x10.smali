.class public final synthetic Lx10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/widget/EditText;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;

.field public final synthetic e:Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;I)V
    .locals 0

    iput p4, p0, Lx10;->b:I

    iput-object p1, p0, Lx10;->c:Landroid/widget/EditText;

    iput-object p2, p0, Lx10;->d:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;

    iput-object p3, p0, Lx10;->e:Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget p1, p0, Lx10;->b:I

    iget-object v0, p0, Lx10;->e:Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;

    iget-object v1, p0, Lx10;->d:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;

    iget-object p0, p0, Lx10;->c:Landroid/widget/EditText;

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->G:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment$Companion;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, v0, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;->d:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->K(Landroid/widget/EditText;)V

    :cond_0
    return-void

    :pswitch_0
    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->G:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment$Companion;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;->b:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->K(Landroid/widget/EditText;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
