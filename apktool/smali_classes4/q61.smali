.class public final synthetic Lq61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;I)V
    .locals 0

    iput p2, p0, Lq61;->b:I

    iput-object p1, p0, Lq61;->c:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lq61;->b:I

    check-cast p1, Landroid/webkit/WebView;

    check-cast p2, Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lq61;->c:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;->B9()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lq61;->c:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;->B9()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
