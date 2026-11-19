.class public final synthetic Lg00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;I)V
    .locals 0

    iput p2, p0, Lg00;->b:I

    iput-object p1, p0, Lg00;->c:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lg00;->b:I

    iget-object p0, p0, Lg00;->c:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;->f()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;->f()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
