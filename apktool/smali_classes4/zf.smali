.class public final synthetic Lzf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;


# direct methods
.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;I)V
    .locals 0

    iput p4, p0, Lzf;->b:I

    iput-boolean p1, p0, Lzf;->c:Z

    iput-object p2, p0, Lzf;->d:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lzf;->e:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lzf;->b:I

    iget-object v1, p0, Lzf;->e:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    iget-object v2, p0, Lzf;->d:Lkotlin/jvm/functions/Function1;

    iget-boolean p0, p0, Lzf;->c:Z

    packed-switch v0, :pswitch_data_0

    if-eqz p0, :cond_0

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->a:Ljava/lang/String;

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    if-eqz p0, :cond_1

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->a:Ljava/lang/String;

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
