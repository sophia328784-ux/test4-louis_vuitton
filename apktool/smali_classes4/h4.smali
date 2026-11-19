.class public final synthetic Lh4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function2;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    iput p3, p0, Lh4;->b:I

    iput-object p1, p0, Lh4;->c:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lh4;->d:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lh4;->b:I

    iget-object v1, p0, Lh4;->d:Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Lh4;->c:Lkotlin/jvm/functions/Function2;

    packed-switch v0, :pswitch_data_0

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->a:Ljava/lang/String;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/booking/BookingId;

    invoke-direct {v2, v0}, Lcom/vuitton/foundation/model/domain/model/booking/BookingId;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->b:Ljava/lang/String;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v2, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->a:Ljava/lang/String;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/booking/BookingId;

    invoke-direct {v2, v0}, Lcom/vuitton/foundation/model/domain/model/booking/BookingId;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->b:Ljava/lang/String;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v2, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->b:Ljava/lang/String;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;

    invoke-direct {v2, v1}, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object v0, v0, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    sget-object v1, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/ManualConfirmType;->ROW_CLICKED:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/ManualConfirmType;

    invoke-interface {p0, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
