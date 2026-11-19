.class public abstract Lcom/perfectcorp/common/utility/ToastUtils;
.super Ljava/lang/Object;


# static fields
.field public static a:Landroid/widget/Toast;


# direct methods
.method public static a()V
    .locals 2

    new-instance v0, Lcom/perfectcorp/common/utility/q;

    const-string v1, "DEVELOPER MODE"

    invoke-direct {v0, v1}, Lcom/perfectcorp/common/utility/q;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method
