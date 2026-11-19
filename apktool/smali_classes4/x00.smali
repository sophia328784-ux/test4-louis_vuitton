.class public final synthetic Lx00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;I)V
    .locals 0

    iput p2, p0, Lx00;->b:I

    iput-object p1, p0, Lx00;->c:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lx00;->b:I

    iget-object p0, p0, Lx00;->c:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    check-cast p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->b()Z

    move-result p0

    :goto_0
    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->b()Z

    move-result p0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
