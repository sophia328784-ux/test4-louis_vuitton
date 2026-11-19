.class public Lcom/cyberfend/cyfsecurity/CCADialogActivity;
.super Landroidx/appcompat/app/AppCompatActivity;


# instance fields
.field public i:Landroid/widget/Button;

.field public j:Lcom/cyberfend/cyfsecurity/CircleProgressBar;

.field public k:LZjTIAZ/XcIOkP$GznHzJ;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/cyberfend/cyfsecurity/CCADialogActivity$1;

    invoke-direct {v0, p0}, Lcom/cyberfend/cyfsecurity/CCADialogActivity$1;-><init>(Lcom/cyberfend/cyfsecurity/CCADialogActivity;)V

    iput-object v0, p0, Lcom/cyberfend/cyfsecurity/CCADialogActivity;->k:LZjTIAZ/XcIOkP$GznHzJ;

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 0

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001f

    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    const p1, 0x7f0a0168

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/cyberfend/cyfsecurity/CircleProgressBar;

    iput-object p1, p0, Lcom/cyberfend/cyfsecurity/CCADialogActivity;->j:Lcom/cyberfend/cyfsecurity/CircleProgressBar;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "MfT\u0013g[[Lt"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MfT\u0013~W\\SpVP"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "MfT\u0013pSACt]\u0015~@BCWG"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0169

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0167

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0166

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyberfend/cyfsecurity/CCADialogActivity;->i:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/cyberfend/cyfsecurity/CCADialogActivity;->i:Landroid/widget/Button;

    new-instance v0, Lcom/cyberfend/cyfsecurity/CCADialogActivity$2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ZMp^V\u0012lO}^G"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f060020

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CCADialogActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CCADialogActivity;->j:Lcom/cyberfend/cyfsecurity/CircleProgressBar;

    invoke-virtual {v0, p1}, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->setProgressBarColor(I)V

    sget-object p1, LZjTIAZ/XcIOkP;->d:LZjTIAZ/XcIOkP;

    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CCADialogActivity;->k:LZjTIAZ/XcIOkP$GznHzJ;

    invoke-virtual {p1, p0}, LZjTIAZ/XcIOkP;->a(LZjTIAZ/XcIOkP$GznHzJ;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/cyberfend/cyfsecurity/CCADialogActivity;->k:LZjTIAZ/XcIOkP$GznHzJ;

    sget-object p0, LZjTIAZ/XcIOkP;->d:LZjTIAZ/XcIOkP;

    iput-object v0, p0, LZjTIAZ/XcIOkP;->a:LZjTIAZ/XcIOkP$GznHzJ;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    return-void
.end method
