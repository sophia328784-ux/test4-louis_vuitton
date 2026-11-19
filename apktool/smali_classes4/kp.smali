.class public final synthetic Lkp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Exception;)V
    .locals 0

    iput p1, p0, Lkp;->b:I

    iput-object p2, p0, Lkp;->c:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lkp;->b:I

    iget-object p0, p0, Lkp;->c:Ljava/lang/Exception;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsView;

    invoke-interface {p1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsView;->E(Ljava/lang/Throwable;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailView;

    invoke-interface {p1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailView;->a(Ljava/lang/Throwable;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqView;

    invoke-interface {p1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqView;->i(Ljava/lang/Throwable;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesView;

    invoke-interface {p1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesView;->j(Ljava/lang/Throwable;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityView;

    invoke-interface {p1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityView;->d(Ljava/lang/Throwable;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityView;

    invoke-interface {p1}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityView;->B()V

    invoke-interface {p1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityView;->d(Ljava/lang/Throwable;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
