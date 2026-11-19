.class public final synthetic Lw00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;I)V
    .locals 0

    iput p2, p0, Lw00;->b:I

    iput-object p1, p0, Lw00;->c:Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lw00;->b:I

    iget-object p0, p0, Lw00;->c:Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->Q:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->P:Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$OnNegativeClickListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$OnNegativeClickListener;->a()V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->O:Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$OnPositiveClickListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$OnPositiveClickListener;->a()V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
