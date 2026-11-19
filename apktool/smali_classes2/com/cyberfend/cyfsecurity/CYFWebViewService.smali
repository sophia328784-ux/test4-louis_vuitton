.class public Lcom/cyberfend/cyfsecurity/CYFWebViewService;
.super Landroid/app/Service;


# static fields
.field public static v:I = 0x82e

.field public static w:I = 0xc84

.field public static final x:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:[Ljava/lang/String;

.field public h:Ljava/lang/Integer;

.field public i:Z

.field public final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public l:Ljava/lang/String;

.field public final m:Landroid/os/Handler;

.field public final n:Ljava/util/concurrent/atomic/AtomicReference;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public final s:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public t:Z

.field public u:Z


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->m:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->n:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->t:Z

    iput-boolean v1, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->u:Z

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    if-nez p0, :cond_5

    if-nez p1, :cond_2

    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    xor-int/lit16 p0, p0, 0xc84

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    :goto_0
    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    add-int/lit8 v0, p0, 0x27

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, p0, 0x75

    xor-int/lit16 v0, v0, 0xa98

    add-int/2addr v0, p0

    sput v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    :cond_1
    return p1

    :cond_2
    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    xor-int/lit16 p0, p0, 0x82e

    if-eqz p0, :cond_4

    :goto_1
    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    add-int/lit8 p1, p0, 0x27

    const/16 v0, 0x22

    if-eq p1, v0, :cond_3

    goto :goto_1

    :cond_3
    shr-int/lit8 p0, p0, 0x65

    xor-int/lit16 p0, p0, 0x768

    sput p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    return p0

    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static l(Lcom/cyberfend/cyfsecurity/CYFWebViewService;)V
    .locals 9

    const-string v0, "M|SdVPyItFfYG@^[L"

    iget-boolean v1, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->u:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "mJx\u001dRYNMpX\u001bKPTAQL]\u0005HLZN"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->d()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v4, "mUglUW[CynFIVURKZ"

    if-eqz v3, :cond_3

    :try_start_1
    iget-object v3, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->d:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "mUglYApSxV[]Y"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "mUglYApT~ZPR"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, 0x0

    :try_start_2
    iget-object v5, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->d:Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->d:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_3
    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "KWg\\A\u0012HEeE\\RR\u0016th{\na\u007f\rZ@[DL\u0019\u0004"

    invoke-static {v5, v8, v7}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    new-array v7, v1, [Ljava/lang/Throwable;

    invoke-static {v6, v5, v7}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_3
    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :goto_2
    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KWg\\A\u0012\\E\u007fU\\RR\u0016th{\nXYNMJCR\u0002GEQG\u001d\u0008"

    invoke-static {p0, v3, v2}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-static {v0, p0, v1}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method

.method public static m(Lcom/cyberfend/cyfsecurity/CYFWebViewService;LZjTIAZ/USrWvK$ELXMqL$etZCba;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService$3;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const-string p1, "mUglUW[CynS]\\ZR\\"

    goto :goto_0

    :cond_1
    const-string p1, "lHelUW[CynS]\\ZR\\"

    :goto_0
    invoke-static {p1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->q(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "M|SdVPyItFfYG@^[L"

    invoke-static {p1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lWzRWQNSeaY]APXJDlJEA[]U\u0001GQVJT\u001d\u0008"

    invoke-static {p0, v1, v0}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Throwable;

    invoke-static {p1, p0, v0}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method

.method public static n(Lcom/cyberfend/cyfsecurity/CYFWebViewService;Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_a

    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    const/16 p1, 0xc83

    if-gt p0, p1, :cond_9

    :goto_0
    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    add-int/lit8 p1, p0, 0x1a

    const/16 v0, 0x38

    if-eq p1, v0, :cond_5

    const/16 v0, 0xa1

    if-eq p1, v0, :cond_4

    const/16 v0, 0x10b

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget p1, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    add-int/2addr p1, p0

    rem-int/lit8 p1, p1, 0x37

    xor-int/lit16 p1, p1, 0xf8a

    sput p1, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    sget p1, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    xor-int/lit16 p1, p1, 0x82e

    if-eqz p1, :cond_0

    :goto_1
    sget p1, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    add-int/lit8 p0, p1, 0x4e

    const/16 v0, 0x1c

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9d

    if-eq p0, v0, :cond_3

    const/16 p1, 0x10e

    if-eq p0, p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    rem-int/lit8 p0, p0, 0x76

    xor-int/lit16 p0, p0, 0xf1e

    shr-int/lit8 p0, p0, 0x27

    sput p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    goto :goto_2

    :cond_2
    :goto_3
    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    mul-int/lit8 p0, p0, 0x46

    add-int/2addr p0, p1

    sput p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    :cond_3
    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    shr-int/lit8 p0, p0, 0x74

    xor-int/lit16 p0, p0, 0x1095

    sput p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    goto :goto_3

    :cond_4
    shr-int/lit8 p1, p0, 0x78

    xor-int/lit16 p1, p1, 0x1044

    :goto_4
    sput p1, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    :cond_5
    sget p1, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    rem-int/lit8 p1, p1, 0x10

    shr-int/lit8 p1, p1, 0x6

    sget v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    const/16 v1, 0x82d

    if-gt v0, v1, :cond_8

    :goto_5
    sget v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    add-int/lit8 p0, v0, 0x75

    const/16 p1, 0x1d

    if-eq p0, p1, :cond_7

    const/16 p1, 0x45

    if-eq p0, p1, :cond_6

    goto :goto_5

    :cond_6
    mul-int/lit8 p0, v0, 0x3d

    rem-int/lit8 p0, p0, 0x73

    :goto_6
    sput p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    :cond_7
    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    shr-int/lit8 p0, p0, 0x36

    mul-int/lit8 p0, p0, 0xb

    add-int/2addr p0, v0

    goto :goto_6

    :cond_8
    add-int/2addr p1, p0

    goto :goto_4

    :cond_9
    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static o(Lcom/cyberfend/cyfsecurity/CYFWebViewService;)V
    .locals 9

    const-string v0, "M|SdVPyItFfYG@^[L"

    iget-boolean v1, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->t:Z

    if-nez v1, :cond_0

    goto/16 :goto_9

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->g()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->f:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_2
    :goto_0
    move-object v3, v1

    goto :goto_2

    :goto_1
    :try_start_1
    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KWg\\A\u0012HEeE\\RR\u0016uuy\na\u007f\r]FWOCO\u001e\u0005"

    invoke-static {v3, v6, v5}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/Throwable;

    invoke-static {v4, v3, v5}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0

    :goto_2
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "mJx\u001dRYNMpX\u001bKPTAQL]\u0005HLZN"

    invoke-static {v5}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v5, "lHelUW[CynFIVURKZ"

    if-eqz v3, :cond_3

    :try_start_2
    invoke-static {v5}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "lHelYApSxV[]Y"

    invoke-static {v5}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :catch_1
    move-exception p0

    goto/16 :goto_8

    :cond_3
    invoke-static {v5}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_3
    const-string v3, "lHel\\@KEc"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v1, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->g:[Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v5

    :try_start_4
    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "KWg\\A\u0012HEeE\\RR\u0016uuy\nD^IK]\n\u0001"

    invoke-static {v8}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v2, [Ljava/lang/Throwable;

    invoke-static {v6, v5, v7}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_4
    invoke-virtual {v4, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "lHelWAL\u007ft_T^YSS"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->g()Z

    move-result v3

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "lHelAWIRtB]c\\XC][\\J@"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    iget-object v3, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->h:Ljava/lang/Integer;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_5

    :catch_3
    move-exception v3

    goto :goto_6

    :cond_4
    move v3, v2

    :goto_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_7

    :goto_6
    :try_start_6
    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KWg\\A\u0012HEeE\\RR\u0016uuy\nYIK\\JCI\u0002JJQCU^Yv!<"

    invoke-static {v3, v7, v6}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    new-array v6, v2, [Ljava/lang/Throwable;

    invoke-static {v5, v3, v6}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_7
    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_9

    :goto_8
    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KWg\\A\u0012\\E\u007fU\\RR\u0016uuy\nXYNMJCR\u0002GEQG\u001d\u0008"

    invoke-static {p0, v3, v1}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-array v1, v2, [Ljava/lang/Throwable;

    invoke-static {v0, p0, v1}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_9
    return-void
.end method

.method public static p(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string v1, "fQaC@"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_4
    :goto_0
    return v0

    :goto_1
    const-string v1, "M|SdVPyItFfYG@^[L"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LDfV\u0013g}l1GTP\\RVL@EE\u000cH\\]_S\u0018\u0003"

    invoke-static {p0, v3, v2}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-array v2, v0, [Ljava/lang/Throwable;

    invoke-static {v1, p0, v2}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 8

    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->n:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, "M|SdVPyItFfYG@^[L"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iput-object v3, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->g:[Ljava/lang/String;

    iput-object v3, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->h:Ljava/lang/Integer;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->i:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_1
    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KWg\\A\u0012LLtPGU[Q\u0017zdz\u000bHLZN\n\u0001"

    invoke-static {v4, v7, v6}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Throwable;

    invoke-static {v5, v4, v6}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    :try_start_2
    iput-object v3, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->e:Ljava/lang/String;

    iput-object v3, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->d:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    :try_start_3
    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KWg\\A\u0012LLtPGU[Q\u0017{yx\u000bHLZN\n\u0001"

    invoke-static {v6}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v5, v2, [Ljava/lang/Throwable;

    invoke-static {v4, p0, v5}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LZjTIAZ/USrWvK;

    if-eqz p0, :cond_0

    iget-object v4, p0, LZjTIAZ/USrWvK;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, LZjTIAZ/USrWvK;->i()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KWg\\A\u0012LLtP[U[Q\u0017MY\n|IOxFUV\u0002NAHIUQ\u0002:"

    invoke-static {p0, v5, v4}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-static {v1, v4, v2}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    :goto_2
    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_8

    sget v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    const/16 v1, 0xc83

    if-gt v0, v1, :cond_7

    :cond_0
    :goto_0
    sget v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    add-int/lit8 v1, v0, 0x1a

    const/16 v2, 0x59

    if-eq v1, v2, :cond_6

    const/16 v2, 0xd7

    if-eq v1, v2, :cond_2

    const/16 v2, 0x18d

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    rem-int/lit8 v1, v0, 0x67

    add-int/2addr v1, v0

    rem-int/lit8 v1, v1, 0x20

    sput v1, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    goto :goto_4

    :cond_2
    add-int v1, v0, v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x65

    sput v1, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    sget v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    xor-int/lit16 v0, v0, 0x82e

    if-eqz v0, :cond_0

    :goto_1
    sget v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    add-int/lit8 v1, v0, 0x27

    const/16 v2, 0x21

    if-eq v1, v2, :cond_5

    const/16 v2, 0x54

    if-eq v1, v2, :cond_3

    const/16 v0, 0xec

    if-eq v1, v0, :cond_4

    goto :goto_1

    :cond_3
    add-int/2addr v0, v0

    mul-int/lit8 v0, v0, 0x71

    sput v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    :cond_4
    sget v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    shr-int/lit8 v0, v0, 0x29

    rem-int/lit8 v0, v0, 0x18

    :goto_2
    sput v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    goto :goto_0

    :cond_5
    shr-int/lit8 v0, v0, 0x6c

    rem-int/lit8 v0, v0, 0x16

    mul-int/lit8 v0, v0, 0x7b

    goto :goto_2

    :cond_6
    :goto_3
    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    rem-int/lit8 p0, p0, 0x41

    xor-int/lit16 p0, p0, 0x6b2

    sput p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    goto :goto_3

    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->j()V

    :cond_8
    return-void
.end method

.method public final c()Z
    .locals 3

    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->c:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->d:Ljava/lang/String;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_b

    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    xor-int/lit16 p0, p0, 0xc84

    const/4 v0, 0x1

    if-eqz p0, :cond_a

    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    xor-int/lit16 p0, p0, 0x82e

    if-eqz p0, :cond_3

    :goto_0
    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    add-int/lit8 v1, p0, 0x27

    const/16 v2, 0x57

    if-eq v1, v2, :cond_1

    const/16 v2, 0x10a

    if-eq v1, v2, :cond_2

    const/16 v2, 0x129

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int v1, p0, p0

    mul-int/lit8 v1, v1, 0x13

    shr-int/lit8 v1, v1, 0x40

    sput v1, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    :cond_1
    sget v1, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    rem-int/lit8 v1, v1, 0x5a

    add-int/2addr v1, p0

    mul-int/lit8 v1, v1, 0x13

    sput v1, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    :cond_2
    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    xor-int/lit16 p0, p0, 0x1a1e

    sput p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    :cond_3
    :goto_1
    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    add-int/lit8 v1, p0, 0x1a

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_5

    const/16 v2, 0xa0

    if-eq v1, v2, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    sget v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    add-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p0

    sput v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    goto :goto_2

    :cond_5
    :goto_3
    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    shr-int/lit8 p0, p0, 0xf

    mul-int/lit16 p0, p0, 0xa80

    sput p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    xor-int/lit16 p0, p0, 0x82e

    if-eqz p0, :cond_5

    :goto_4
    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    add-int/lit8 v1, p0, 0x34

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_8

    const/16 v2, 0xda

    if-eq v1, v2, :cond_7

    const/16 v2, 0xfe

    if-eq v1, v2, :cond_6

    const/16 p0, 0x138

    if-eq v1, p0, :cond_9

    goto :goto_4

    :cond_6
    xor-int/lit16 p0, p0, 0xdf7

    shr-int/lit8 p0, p0, 0x4d

    xor-int/lit16 p0, p0, 0xf7d

    sput p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    goto :goto_3

    :cond_7
    xor-int/lit16 v1, p0, 0x8c0

    add-int/2addr v1, p0

    sput v1, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    :cond_8
    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    rem-int/lit8 p0, p0, 0x7e

    mul-int/lit8 p0, p0, 0x14

    sput p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    :cond_9
    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    xor-int/lit16 p0, p0, 0xf57

    rem-int/2addr p0, v0

    xor-int/lit16 p0, p0, 0x12a6

    sput p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    goto :goto_4

    :cond_a
    return v0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public final d()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->e:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    return-object v0

    :goto_1
    const-string v1, "M|SdVPyItFfYG@^[L"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KWg\\A\u0012HEeE\\RR\u0016th{\na\u007f\r]FWOCO\u001e\u0005"

    invoke-static {p0, v3, v2}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-static {v1, p0, v2}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final e()Z
    .locals 11

    const-string v1, "M|SdVPyItFfYG@^[L"

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "]@aFC\u0012]E`DPOASS\u0018HL_I_\u000e\\DNR\u0018\u0004DDHZLsu{"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Throwable;

    invoke-static {p0, v0, v3}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return v2

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "OUe_ZQNTx^[\u001cVYYLLR_\u000cD]\u000f^TNO"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Throwable;

    invoke-static {p0, v0, v3}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return v2

    :cond_1
    new-instance v3, LZjTIAZ/USrWvK;

    iget-object v5, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->c:Ljava/lang/String;

    iget-object v8, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->d:Ljava/lang/String;

    iget-object v9, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->l:Ljava/lang/String;

    new-instance v10, Lcom/cyberfend/cyfsecurity/CYFWebViewService$2;

    invoke-direct {v10, p0}, Lcom/cyberfend/cyfsecurity/CYFWebViewService$2;-><init>(Lcom/cyberfend/cyfsecurity/CYFWebViewService;)V

    invoke-direct/range {v3 .. v10}, LZjTIAZ/USrWvK;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LZjTIAZ/USrWvK$DRxlEm;)V

    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {p0}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->k()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->c()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :goto_1
    :try_start_2
    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cDgX}][c~_SURCE]MzGMYH@BLQ\u0003AWTHZ\u0002:"

    invoke-static {v0, v6, v5}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Throwable;

    invoke-static {v4, v0, v5}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    const-string v0, "oCaVA\u0012\\EeDEkPTaQL]\u000b\u0004]A\\D\u0001OBVNhH\\{uuztyjRUv:"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->r(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v3

    :goto_3
    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KWg\\A\u0012\\EeE\\RR\u0016BH\t}NN{GJG\u001b\u0002"

    invoke-static {p0, v3, v1}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Throwable;

    invoke-static {v0, v1, v3}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    return v2
.end method

.method public final f()V
    .locals 5

    const-string v0, "M|SdVPyItFfYG@^[L"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LZjTIAZ/USrWvK;

    if-nez v2, :cond_0

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Y@weZWX\u0000cD[RPD\u0017QZ\nEYAB"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    const-string v2, "gK|GlTNI}TQ"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->q(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->k()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "lHelYApSePGHPR"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->q(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "mUglYApSePGHPR"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->q(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, LZjTIAZ/USrWvK;->m()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KWg\\A\u0012COpU\\RR\u0016bje\u0010\u000b"

    invoke-static {p0, v3, v2}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-static {v0, v2, v1}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public final g()Z
    .locals 3

    :try_start_0
    iget-boolean p0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->i:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "M|SdVPyItFfYG@^[L"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KWg\\A\u0012LHtR^U[Q\u0017QO\nia}\u000ekcb\u0002JW\u0005CIIZv~x\'>"

    invoke-static {p0, v2, v1}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-static {v0, p0, v1}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final h()V
    .locals 1

    const-string v0, "gK|GlTNI}TQ"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->q(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->j()V

    return-void
.end method

.method public final j()V
    .locals 4

    const-string v0, "M|SdVPyItFfYG@^[L"

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->a()V

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "]@gEZQJ\u0000bEZLESS\u0018\u0001XNM^AA\rBMNTICSAWt2"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Throwable;

    invoke-static {p0, v1, v2}, LwcQZwr/GpYFMu;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "}QzC`WCF1TGNZD\r\u0018"

    invoke-static {p0, v2, v1}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-array v1, v3, [Ljava/lang/Throwable;

    invoke-static {v0, p0, v1}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final k()Z
    .locals 5

    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->b:Ljava/lang/String;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->f:Ljava/lang/String;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    const/16 v1, 0x82d

    const/16 v2, 0x8

    if-gt v0, v1, :cond_4

    :goto_0
    sget v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    add-int/lit8 v3, v0, 0x1a

    const/4 v4, 0x5

    if-eq v3, v4, :cond_2

    const/16 v4, 0xb2

    if-eq v3, v4, :cond_1

    const/16 v4, 0x174

    if-eq v3, v4, :cond_0

    const/16 v0, 0x1be

    if-eq v3, v0, :cond_3

    goto :goto_0

    :cond_0
    add-int v3, v0, v0

    xor-int/lit16 v3, v3, 0xda2

    add-int/2addr v3, v0

    sput v3, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    goto :goto_2

    :cond_1
    mul-int/lit8 v0, v0, 0x40

    xor-int/lit16 v0, v0, 0x1017

    :goto_1
    sput v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    goto :goto_3

    :cond_2
    rem-int/lit8 v0, v0, 0x12

    shr-int/lit8 v0, v0, 0x58

    sput v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    :cond_3
    :goto_2
    sget v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    mul-int/lit8 v0, v0, 0x63

    rem-int/2addr v0, v2

    goto :goto_1

    :cond_4
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_c

    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    const/16 v0, 0xc83

    const/4 v3, 0x1

    if-gt p0, v0, :cond_b

    :goto_4
    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    add-int/lit8 v0, p0, 0x1a

    if-eq v0, v2, :cond_a

    const/16 v4, 0x8c

    if-eq v0, v4, :cond_9

    const/16 v4, 0xea

    if-eq v0, v4, :cond_5

    const/16 p0, 0x110

    if-eq v0, p0, :cond_6

    goto :goto_4

    :cond_5
    shr-int/lit8 v0, p0, 0x78

    add-int/2addr v0, p0

    add-int/2addr v0, p0

    sput v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    :cond_6
    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    rem-int/lit8 p0, p0, 0x58

    shr-int/2addr p0, v2

    sput p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    if-gt p0, v1, :cond_6

    :goto_5
    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    add-int/lit8 v0, p0, 0x5b

    const/16 v1, 0x24

    if-eq v0, v1, :cond_8

    const/16 v1, 0x86

    if-eq v0, v1, :cond_7

    goto :goto_5

    :cond_7
    :goto_6
    sget v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    add-int/2addr v0, p0

    xor-int/lit16 v0, v0, 0x711

    add-int/2addr v0, p0

    sput v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    goto :goto_6

    :cond_8
    add-int/2addr p0, p0

    shr-int/lit8 p0, p0, 0x79

    mul-int/lit8 p0, p0, 0x7a

    sput p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    goto :goto_5

    :cond_9
    :goto_7
    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    rem-int/lit8 p0, p0, 0x43

    rem-int/lit8 p0, p0, 0x65

    shr-int/lit8 p0, p0, 0x3e

    sput p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    goto :goto_7

    :cond_a
    add-int v0, p0, p0

    shr-int/lit8 v0, v0, 0x34

    add-int/2addr v0, p0

    sput v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    :cond_b
    return v3

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-object v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_0
    const-string v0, "gK|GlAZCrTFO"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->q(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "M|SdVPyItFfYG@^[L"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HD|_VV\u000fT~\u0011[SA_QA\tnxo`OAQFGQ\u0004J@\u0007[]hmu~{?SDsa`/6"

    invoke-static {p0, v2, v1}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-static {v0, p0, v1}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 8

    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v1, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->m:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_1
    const-string v5, "M|SdVPyItFfYG@^[L"

    invoke-static {v5}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KWg\\A\u0012FN1^[xPECJFS\u0011\u000c"

    invoke-static {v7}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Throwable;

    invoke-static {v5, v6, v7}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {v4}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :goto_2
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw p0
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    invoke-static {p0, p1, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onServiceStartCommand(Landroid/app/Service;Landroid/content/Intent;II)V

    const/4 p2, 0x2

    const/4 p3, 0x0

    const-string v0, "M|SdVPyItFfYG@^[L"

    if-nez p1, :cond_0

    :try_start_0
    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "GKaV]F\u000fIb\u0011[IYZ\u0017QG\nDB~ZNBUaLIHGIL"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, p3, [Ljava/lang/Throwable;

    invoke-static {p1, v1, v2}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->h()V

    return p2

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->m:Landroid/os/Handler;

    new-instance v2, Lcom/cyberfend/cyfsecurity/CYFWebViewService$1;

    invoke-direct {v2, p0, p1}, Lcom/cyberfend/cyfsecurity/CYFWebViewService$1;-><init>(Lcom/cyberfend/cyfsecurity/CYFWebViewService;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :goto_0
    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KWg\\A\u0012FN1^[oAWELjEFAL@K\n\u0001"

    invoke-static {p1, v2, v1}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    new-array p3, p3, [Ljava/lang/Throwable;

    invoke-static {v0, v1, p3}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {p1}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->h()V

    return p2
.end method

.method public final q(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mJx\u001dRYNMpX\u001bKPTAQL]\u0005HLZN"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "M|SdVPyItFfYG@^[L"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KWg\\A\u0012\\E\u007fU\\RR\u0016UJFKOOL][\u0010GMQ\u0004"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "4\u0005"

    invoke-static {p1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Throwable;

    invoke-static {v0, p0, p1}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 2

    const-string v0, "M|SdVPyItFfYG@^[L"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ".VaRGW\u0015\u0000s\\E\u007fZ[GTL^N\u0011"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\"\u0005vCAq@Ma]PHP\u000b"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\"\u0005w^CsYAx]T^YS\n"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->t:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\"\u0005vCAsYAx]T^YS\n"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->u:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\"\u0005fG\\B_Eu\u000c"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Throwable;

    invoke-static {v0, p0, p1}, LwcQZwr/GpYFMu;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->o:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->r:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->p:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->q:Ljava/lang/String;

    invoke-static {p0, p4}, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    const/16 p1, 0xc83

    if-gt p0, p1, :cond_6

    :goto_0
    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    add-int/lit8 p1, p0, 0x1a

    const/16 p2, 0x32

    if-eq p1, p2, :cond_2

    const/16 p2, 0x4e

    if-eq p1, p2, :cond_3

    const/16 p3, 0x74

    if-eq p1, p3, :cond_0

    const/16 p0, 0x123

    if-eq p1, p0, :cond_4

    goto :goto_0

    :cond_0
    sget p1, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    add-int/2addr p1, p0

    shr-int/lit8 p1, p1, 0x29

    sput p1, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    sget p1, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    xor-int/lit16 p1, p1, 0x82e

    if-eqz p1, :cond_0

    :goto_1
    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    add-int/2addr p0, p2

    const/16 p1, 0x3e

    if-eq p0, p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    xor-int/lit16 p0, p0, 0x1282

    shr-int/lit8 p0, p0, 0xb

    sput p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    goto :goto_2

    :cond_2
    xor-int/lit16 p1, p0, 0x1d65

    rem-int/lit8 p1, p1, 0x54

    sput p1, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    :cond_3
    sget p1, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    shr-int/lit8 p1, p1, 0x10

    add-int/2addr p1, p0

    sput p1, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    xor-int/lit16 p0, p0, 0x82e

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    xor-int/lit16 p0, p0, 0xcc4

    sput p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->w:I

    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    xor-int/lit16 p0, p0, 0x82e

    if-eqz p0, :cond_4

    :goto_3
    sget p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    add-int/lit8 p1, p0, 0x5b

    const/16 p2, 0x4c

    if-eq p1, p2, :cond_5

    goto :goto_3

    :cond_5
    shr-int/lit8 p0, p0, 0x36

    xor-int/lit16 p0, p0, 0xf29

    shr-int/lit8 p0, p0, 0x4d

    sput p0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->v:I

    goto :goto_3

    :cond_6
    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method
