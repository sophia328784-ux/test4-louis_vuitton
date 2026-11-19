.class public final synthetic Lsj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function2;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;I)V
    .locals 0

    iput p3, p0, Lsj0;->b:I

    iput-object p1, p0, Lsj0;->c:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lsj0;->d:Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lsj0;->b:I

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lsj0;->d:Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;->b:Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;->DISTANT:Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;

    iget-object p0, p0, Lsj0;->c:Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object p1, p0, Lsj0;->d:Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;->b:Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;->IN_STORE:Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;

    iget-object p0, p0, Lsj0;->c:Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
