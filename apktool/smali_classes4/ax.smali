.class public final synthetic Lax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;I)V
    .locals 0

    iput p2, p0, Lax;->b:I

    iput-object p1, p0, Lax;->c:Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lax;->b:I

    iget-object p0, p0, Lax;->c:Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;->t:Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity$Companion;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "CATEGORY_ID"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;->H(Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;)Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
