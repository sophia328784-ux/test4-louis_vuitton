.class public final synthetic Lfz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/widget/EditText;

.field public final synthetic c:Landroidx/fragment/app/Fragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;Landroid/widget/EditText;I)V
    .locals 0

    iput p3, p0, Lfz;->a:I

    iput-object p1, p0, Lfz;->c:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lfz;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 1

    iget p1, p0, Lfz;->a:I

    iget-object v0, p0, Lfz;->b:Landroid/widget/EditText;

    iget-object p0, p0, Lfz;->c:Landroidx/fragment/app/Fragment;

    packed-switch p1, :pswitch_data_0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment$Companion;

    invoke-virtual {p0, v0, p2, p3}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->N(Landroid/widget/EditText;II)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment$Companion;

    invoke-virtual {p0, v0, p2, p3}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->N(Landroid/widget/EditText;II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
