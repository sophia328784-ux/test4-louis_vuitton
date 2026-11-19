.class final Lcom/google/ar/core/ae;
.super Lcom/google/ar/core/dependencies/i;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic j:Lcom/google/ar/core/ag;

.field public final synthetic k:Lcom/google/ar/core/w;


# direct methods
.method public constructor <init>(Lcom/google/ar/core/ag;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/app/Activity;Lcom/google/ar/core/w;)V
    .locals 0

    iput-object p2, p0, Lcom/google/ar/core/ae;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lcom/google/ar/core/ae;->k:Lcom/google/ar/core/w;

    iput-object p3, p0, Lcom/google/ar/core/ae;->b:Landroid/app/Activity;

    iput-object p1, p0, Lcom/google/ar/core/ae;->j:Lcom/google/ar/core/ag;

    invoke-direct {p0}, Lcom/google/ar/core/dependencies/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/os/Bundle;)V
    .locals 11

    iget-object v0, p0, Lcom/google/ar/core/ae;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "error.code"

    const/16 v1, -0x64

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "install.status"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/ar/core/ae;->k:Lcom/google/ar/core/w;

    if-ne v1, v2, :cond_1

    sget-object p0, Lcom/google/ar/core/x;->c:Lcom/google/ar/core/x;

    invoke-virtual {v3, p0}, Lcom/google/ar/core/w;->a(Lcom/google/ar/core/x;)V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/google/ar/core/ae;->b:Landroid/app/Activity;

    iget-object p0, p0, Lcom/google/ar/core/ae;->j:Lcom/google/ar/core/ag;

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x28

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object p0, p0, Lcom/google/ar/core/ag;->c:Lcom/google/ar/core/y;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v3}, Lcom/google/ar/core/y;->e(Landroid/app/Activity;Lcom/google/ar/core/w;)V

    return-void

    :cond_2
    const-string v0, "resolution.intent"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p0, p0, Lcom/google/ar/core/ag;->c:Lcom/google/ar/core/y;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/app/PendingIntent;

    if-eqz p0, :cond_3

    :try_start_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v5

    new-instance v7, Landroid/content/Intent;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v7, v4, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v6, 0x4d2

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Lcom/google/ar/core/exceptions/FatalException;

    const-string v0, "Installation Intent failed"

    invoke-direct {p1, v0, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v3, p1}, Lcom/google/ar/core/w;->b(Lcom/google/ar/core/exceptions/FatalException;)V

    return-void

    :cond_3
    new-instance p0, Lcom/google/ar/core/exceptions/FatalException;

    const-string p1, "Installation intent failed to unparcel."

    invoke-direct {p0, p1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Lcom/google/ar/core/w;->b(Lcom/google/ar/core/exceptions/FatalException;)V

    return-void

    :cond_4
    const/16 p0, 0xa

    if-eq v1, p0, :cond_5

    packed-switch v1, :pswitch_data_0

    new-instance p0, Lcom/google/ar/core/exceptions/FatalException;

    const/16 p1, 0x1b

    const-string v0, "Unexpected install status: "

    invoke-static {v0, v1, p1}, Lcom/google/ar/core/q;->a(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Lcom/google/ar/core/w;->b(Lcom/google/ar/core/exceptions/FatalException;)V

    return-void

    :pswitch_0
    sget-object p0, Lcom/google/ar/core/x;->b:Lcom/google/ar/core/x;

    invoke-virtual {v3, p0}, Lcom/google/ar/core/w;->a(Lcom/google/ar/core/x;)V

    return-void

    :pswitch_1
    new-instance p0, Lcom/google/ar/core/exceptions/FatalException;

    const-string p1, "Unexpected FAILED install status without error."

    invoke-direct {p0, p1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Lcom/google/ar/core/w;->b(Lcom/google/ar/core/exceptions/FatalException;)V

    return-void

    :pswitch_2
    sget-object p0, Lcom/google/ar/core/x;->c:Lcom/google/ar/core/x;

    invoke-virtual {v3, p0}, Lcom/google/ar/core/w;->a(Lcom/google/ar/core/x;)V

    return-void

    :pswitch_3
    sget-object p0, Lcom/google/ar/core/x;->a:Lcom/google/ar/core/x;

    invoke-virtual {v3, p0}, Lcom/google/ar/core/w;->a(Lcom/google/ar/core/x;)V

    return-void

    :cond_5
    new-instance p0, Lcom/google/ar/core/exceptions/FatalException;

    const-string p1, "Unexpected REQUIRES_UI_INTENT install status without an intent."

    invoke-direct {p0, p1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Lcom/google/ar/core/w;->b(Lcom/google/ar/core/exceptions/FatalException;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
