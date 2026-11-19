.class public final synthetic Lqy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;I)V
    .locals 0

    iput p2, p0, Lqy;->b:I

    iput-object p1, p0, Lqy;->c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lqy;->b:I

    const/4 v1, 0x0

    iget-object p0, p0, Lqy;->c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;->s:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity$Companion;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "SCREEN_TYPE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;->valueOf(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;

    move-result-object v1

    :cond_0
    return-object v1

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;->s:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity$Companion;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "KEY_QAF_SOURCE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;->valueOf(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    move-result-object v1

    :cond_1
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
