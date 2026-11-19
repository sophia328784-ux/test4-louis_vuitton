.class public Lcom/batch/android/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final g:Ljava/lang/String; = "analyticsdelegate_called_methods"


# instance fields
.field private final a:Lcom/batch/android/v0/g;

.field private final b:Lcom/batch/android/v0/k;

.field private final c:Lcom/batch/android/v0/e;

.field private final d:Lcom/batch/android/f0/c;

.field private final e:Lcom/batch/android/BatchMessage;

.field final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/batch/android/v0/g;Lcom/batch/android/v0/k;Lcom/batch/android/v0/e;Lcom/batch/android/f0/c;Lcom/batch/android/BatchMessage;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/batch/android/i;->f:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/batch/android/i;->a:Lcom/batch/android/v0/g;

    iput-object p2, p0, Lcom/batch/android/i;->b:Lcom/batch/android/v0/k;

    iput-object p3, p0, Lcom/batch/android/i;->c:Lcom/batch/android/v0/e;

    iput-object p4, p0, Lcom/batch/android/i;->d:Lcom/batch/android/f0/c;

    iput-object p5, p0, Lcom/batch/android/i;->e:Lcom/batch/android/BatchMessage;

    return-void
.end method

.method public static a(Lcom/batch/android/f0/c;Lcom/batch/android/BatchMessage;)Lcom/batch/android/i;
    .locals 6

    .line 97
    new-instance v0, Lcom/batch/android/i;

    .line 98
    invoke-static {}, Lcom/batch/android/n/t;->a()Lcom/batch/android/v0/g;

    move-result-object v1

    .line 99
    invoke-static {}, Lcom/batch/android/n/e0;->a()Lcom/batch/android/v0/k;

    move-result-object v2

    .line 100
    invoke-static {}, Lcom/batch/android/n/i;->a()Lcom/batch/android/v0/e;

    move-result-object v3

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/batch/android/i;-><init>(Lcom/batch/android/v0/g;Lcom/batch/android/v0/k;Lcom/batch/android/v0/e;Lcom/batch/android/f0/c;Lcom/batch/android/BatchMessage;)V

    return-object v0
.end method

.method private a(Lcom/batch/android/f0/b;)V
    .locals 5

    .line 90
    sget-object v0, Lcom/batch/android/Batch$EventDispatcher$Type;->MESSAGING_CLICK:Lcom/batch/android/Batch$EventDispatcher$Type;

    .line 91
    invoke-virtual {p1}, Lcom/batch/android/f0/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    sget-object v0, Lcom/batch/android/Batch$EventDispatcher$Type;->MESSAGING_CLOSE:Lcom/batch/android/Batch$EventDispatcher$Type;

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/batch/android/i;->c:Lcom/batch/android/v0/e;

    new-instance v2, Lcom/batch/android/p/b;

    iget-object v3, p0, Lcom/batch/android/i;->e:Lcom/batch/android/BatchMessage;

    .line 94
    invoke-virtual {v3}, Lcom/batch/android/BatchMessage;->c()Lcom/batch/android/json/JSONObject;

    move-result-object v4

    iget-object p0, p0, Lcom/batch/android/i;->e:Lcom/batch/android/BatchMessage;

    .line 95
    invoke-virtual {p0}, Lcom/batch/android/BatchMessage;->b()Lcom/batch/android/json/JSONObject;

    move-result-object p0

    invoke-direct {v2, v3, v4, p0, p1}, Lcom/batch/android/p/b;-><init>(Lcom/batch/android/BatchMessage;Lcom/batch/android/json/JSONObject;Lcom/batch/android/json/JSONObject;Lcom/batch/android/f0/a;)V

    .line 96
    invoke-virtual {v1, v0, v2}, Lcom/batch/android/v0/e;->a(Lcom/batch/android/Batch$EventDispatcher$Type;Lcom/batch/android/Batch$EventDispatcher$Payload;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/batch/android/i;->f:Ljava/util/ArrayList;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/batch/android/i;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 72
    :cond_0
    iget-object p0, p0, Lcom/batch/android/i;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    .line 74
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 106
    const-string v0, "autoclosed"

    invoke-direct {p0, v0}, Lcom/batch/android/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/batch/android/i;->a:Lcom/batch/android/v0/g;

    iget-object v1, p0, Lcom/batch/android/i;->d:Lcom/batch/android/f0/c;

    invoke-virtual {v0, v1}, Lcom/batch/android/v0/g;->a(Lcom/batch/android/f0/c;)V

    .line 108
    iget-object v0, p0, Lcom/batch/android/i;->c:Lcom/batch/android/v0/e;

    sget-object v1, Lcom/batch/android/Batch$EventDispatcher$Type;->MESSAGING_AUTO_CLOSE:Lcom/batch/android/Batch$EventDispatcher$Type;

    new-instance v2, Lcom/batch/android/p/b;

    iget-object v3, p0, Lcom/batch/android/i;->e:Lcom/batch/android/BatchMessage;

    .line 109
    invoke-virtual {v3}, Lcom/batch/android/BatchMessage;->c()Lcom/batch/android/json/JSONObject;

    move-result-object v4

    iget-object p0, p0, Lcom/batch/android/i;->e:Lcom/batch/android/BatchMessage;

    invoke-virtual {p0}, Lcom/batch/android/BatchMessage;->b()Lcom/batch/android/json/JSONObject;

    move-result-object p0

    invoke-direct {v2, v3, v4, p0}, Lcom/batch/android/p/b;-><init>(Lcom/batch/android/BatchMessage;Lcom/batch/android/json/JSONObject;Lcom/batch/android/json/JSONObject;)V

    .line 110
    invoke-virtual {v0, v1, v2}, Lcom/batch/android/v0/e;->a(Lcom/batch/android/Batch$EventDispatcher$Type;Lcom/batch/android/Batch$EventDispatcher$Payload;)V

    return-void
.end method

.method public a(ILcom/batch/android/f0/b;)V
    .locals 2

    .line 87
    const-string v0, "ctaclicked"

    invoke-direct {p0, v0}, Lcom/batch/android/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/batch/android/i;->a:Lcom/batch/android/v0/g;

    iget-object v1, p0, Lcom/batch/android/i;->d:Lcom/batch/android/f0/c;

    invoke-virtual {v0, v1, p1, p2}, Lcom/batch/android/v0/g;->a(Lcom/batch/android/f0/c;ILcom/batch/android/f0/b;)V

    .line 89
    invoke-direct {p0, p2}, Lcom/batch/android/i;->a(Lcom/batch/android/f0/b;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .line 111
    iget-object p0, p0, Lcom/batch/android/i;->f:Ljava/util/ArrayList;

    const-string v0, "analyticsdelegate_called_methods"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public a(Lcom/batch/android/f0/a;)V
    .locals 5

    .line 75
    const-string v0, "globaltap"

    invoke-direct {p0, v0}, Lcom/batch/android/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/batch/android/i;->a:Lcom/batch/android/v0/g;

    iget-object v1, p0, Lcom/batch/android/i;->d:Lcom/batch/android/f0/c;

    invoke-virtual {v0, v1, p1}, Lcom/batch/android/v0/g;->a(Lcom/batch/android/f0/c;Lcom/batch/android/f0/a;)V

    .line 77
    sget-object v0, Lcom/batch/android/Batch$EventDispatcher$Type;->MESSAGING_CLICK:Lcom/batch/android/Batch$EventDispatcher$Type;

    .line 78
    invoke-virtual {p1}, Lcom/batch/android/f0/a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    sget-object v0, Lcom/batch/android/Batch$EventDispatcher$Type;->MESSAGING_CLOSE:Lcom/batch/android/Batch$EventDispatcher$Type;

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/batch/android/i;->c:Lcom/batch/android/v0/e;

    new-instance v2, Lcom/batch/android/p/b;

    iget-object v3, p0, Lcom/batch/android/i;->e:Lcom/batch/android/BatchMessage;

    .line 81
    invoke-virtual {v3}, Lcom/batch/android/BatchMessage;->c()Lcom/batch/android/json/JSONObject;

    move-result-object v4

    iget-object p0, p0, Lcom/batch/android/i;->e:Lcom/batch/android/BatchMessage;

    .line 82
    invoke-virtual {p0}, Lcom/batch/android/BatchMessage;->b()Lcom/batch/android/json/JSONObject;

    move-result-object p0

    invoke-direct {v2, v3, v4, p0, p1}, Lcom/batch/android/p/b;-><init>(Lcom/batch/android/BatchMessage;Lcom/batch/android/json/JSONObject;Lcom/batch/android/json/JSONObject;Lcom/batch/android/f0/a;)V

    .line 83
    invoke-virtual {v1, v0, v2}, Lcom/batch/android/v0/e;->a(Lcom/batch/android/Batch$EventDispatcher$Type;Lcom/batch/android/Batch$EventDispatcher$Payload;)V

    return-void
.end method

.method public a(Lcom/batch/android/f0/a;Ljava/lang/String;)V
    .locals 8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p2, v1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x1e

    if-le v0, v2, :cond_1

    const-string p2, "Messaging"

    const-string v0, "Could not track webview event: The analytics ID is invalid: it should be 30 characters or less. The action will be tracked without an analytics ID, but will still be performed."

    invoke-static {p2, v0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v1

    goto :goto_0

    :cond_1
    move-object v7, p2

    :goto_0
    sget-object p2, Lcom/batch/android/Batch$EventDispatcher$Type;->MESSAGING_WEBVIEW_CLICK:Lcom/batch/android/Batch$EventDispatcher$Type;

    invoke-virtual {p1}, Lcom/batch/android/f0/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p2, Lcom/batch/android/Batch$EventDispatcher$Type;->MESSAGING_CLOSE:Lcom/batch/android/Batch$EventDispatcher$Type;

    :cond_2
    iget-object v0, p0, Lcom/batch/android/i;->a:Lcom/batch/android/v0/g;

    iget-object v1, p0, Lcom/batch/android/i;->d:Lcom/batch/android/f0/c;

    invoke-virtual {v0, v1, p1, v7}, Lcom/batch/android/v0/g;->a(Lcom/batch/android/f0/c;Lcom/batch/android/f0/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/batch/android/i;->c:Lcom/batch/android/v0/e;

    new-instance v2, Lcom/batch/android/p/b;

    iget-object v3, p0, Lcom/batch/android/i;->e:Lcom/batch/android/BatchMessage;

    invoke-virtual {v3}, Lcom/batch/android/BatchMessage;->c()Lcom/batch/android/json/JSONObject;

    move-result-object v4

    iget-object p0, p0, Lcom/batch/android/i;->e:Lcom/batch/android/BatchMessage;

    invoke-virtual {p0}, Lcom/batch/android/BatchMessage;->b()Lcom/batch/android/json/JSONObject;

    move-result-object v5

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/batch/android/p/b;-><init>(Lcom/batch/android/BatchMessage;Lcom/batch/android/json/JSONObject;Lcom/batch/android/json/JSONObject;Lcom/batch/android/f0/a;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v2}, Lcom/batch/android/v0/e;->a(Lcom/batch/android/Batch$EventDispatcher$Type;Lcom/batch/android/Batch$EventDispatcher$Payload;)V

    return-void
.end method

.method public a(Lcom/batch/android/f0/d;)V
    .locals 4

    .line 101
    const-string v0, "closederror"

    invoke-direct {p0, v0}, Lcom/batch/android/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/batch/android/i;->a:Lcom/batch/android/v0/g;

    iget-object v1, p0, Lcom/batch/android/i;->d:Lcom/batch/android/f0/c;

    invoke-virtual {v0, v1, p1}, Lcom/batch/android/v0/g;->a(Lcom/batch/android/f0/c;Lcom/batch/android/f0/d;)V

    .line 103
    iget-object p1, p0, Lcom/batch/android/i;->c:Lcom/batch/android/v0/e;

    sget-object v0, Lcom/batch/android/Batch$EventDispatcher$Type;->MESSAGING_CLOSE_ERROR:Lcom/batch/android/Batch$EventDispatcher$Type;

    new-instance v1, Lcom/batch/android/p/b;

    iget-object v2, p0, Lcom/batch/android/i;->e:Lcom/batch/android/BatchMessage;

    .line 104
    invoke-virtual {v2}, Lcom/batch/android/BatchMessage;->c()Lcom/batch/android/json/JSONObject;

    move-result-object v3

    iget-object p0, p0, Lcom/batch/android/i;->e:Lcom/batch/android/BatchMessage;

    invoke-virtual {p0}, Lcom/batch/android/BatchMessage;->b()Lcom/batch/android/json/JSONObject;

    move-result-object p0

    invoke-direct {v1, v2, v3, p0}, Lcom/batch/android/p/b;-><init>(Lcom/batch/android/BatchMessage;Lcom/batch/android/json/JSONObject;Lcom/batch/android/json/JSONObject;)V

    .line 105
    invoke-virtual {p1, v0, v1}, Lcom/batch/android/v0/e;->a(Lcom/batch/android/Batch$EventDispatcher$Type;Lcom/batch/android/Batch$EventDispatcher$Payload;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/f0/b;)V
    .locals 2

    .line 84
    const-string v0, "ctaclicked"

    invoke-direct {p0, v0}, Lcom/batch/android/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/batch/android/i;->a:Lcom/batch/android/v0/g;

    iget-object v1, p0, Lcom/batch/android/i;->d:Lcom/batch/android/f0/c;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/batch/android/v0/g;->a(Lcom/batch/android/f0/c;Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/f0/b;)V

    .line 86
    invoke-direct {p0, p3}, Lcom/batch/android/i;->a(Lcom/batch/android/f0/b;)V

    return-void
.end method

.method public b()V
    .locals 5

    const-string v0, "closed"

    invoke-direct {p0, v0}, Lcom/batch/android/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/batch/android/i;->a:Lcom/batch/android/v0/g;

    iget-object v1, p0, Lcom/batch/android/i;->d:Lcom/batch/android/f0/c;

    invoke-virtual {v0, v1}, Lcom/batch/android/v0/g;->b(Lcom/batch/android/f0/c;)V

    iget-object v0, p0, Lcom/batch/android/i;->c:Lcom/batch/android/v0/e;

    sget-object v1, Lcom/batch/android/Batch$EventDispatcher$Type;->MESSAGING_CLOSE:Lcom/batch/android/Batch$EventDispatcher$Type;

    new-instance v2, Lcom/batch/android/p/b;

    iget-object v3, p0, Lcom/batch/android/i;->e:Lcom/batch/android/BatchMessage;

    invoke-virtual {v3}, Lcom/batch/android/BatchMessage;->c()Lcom/batch/android/json/JSONObject;

    move-result-object v4

    iget-object p0, p0, Lcom/batch/android/i;->e:Lcom/batch/android/BatchMessage;

    invoke-virtual {p0}, Lcom/batch/android/BatchMessage;->b()Lcom/batch/android/json/JSONObject;

    move-result-object p0

    invoke-direct {v2, v3, v4, p0}, Lcom/batch/android/p/b;-><init>(Lcom/batch/android/BatchMessage;Lcom/batch/android/json/JSONObject;Lcom/batch/android/json/JSONObject;)V

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/v0/e;->a(Lcom/batch/android/Batch$EventDispatcher$Type;Lcom/batch/android/Batch$EventDispatcher$Payload;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 41
    const-string v0, "analyticsdelegate_called_methods"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 42
    iget-object p0, p0, Lcom/batch/android/i;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    const-string v0, "viewdismissed"

    invoke-direct {p0, v0}, Lcom/batch/android/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/batch/android/i;->a:Lcom/batch/android/v0/g;

    iget-object p0, p0, Lcom/batch/android/i;->d:Lcom/batch/android/f0/c;

    invoke-virtual {v0, p0}, Lcom/batch/android/v0/g;->c(Lcom/batch/android/f0/c;)V

    return-void
.end method

.method public d()V
    .locals 5

    const-string v0, "viewshown"

    invoke-direct {p0, v0}, Lcom/batch/android/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/batch/android/i;->a:Lcom/batch/android/v0/g;

    iget-object v1, p0, Lcom/batch/android/i;->d:Lcom/batch/android/f0/c;

    invoke-virtual {v0, v1}, Lcom/batch/android/v0/g;->d(Lcom/batch/android/f0/c;)V

    iget-object v0, p0, Lcom/batch/android/i;->e:Lcom/batch/android/BatchMessage;

    instance-of v1, v0, Lcom/batch/android/BatchInAppMessage;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/batch/android/BatchInAppMessage;

    iget-object v1, p0, Lcom/batch/android/i;->b:Lcom/batch/android/v0/k;

    invoke-virtual {v0}, Lcom/batch/android/BatchInAppMessage;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/batch/android/BatchInAppMessage;->f()Lcom/batch/android/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/batch/android/v0/k;->b(Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V

    :cond_1
    iget-object v0, p0, Lcom/batch/android/i;->c:Lcom/batch/android/v0/e;

    sget-object v1, Lcom/batch/android/Batch$EventDispatcher$Type;->MESSAGING_SHOW:Lcom/batch/android/Batch$EventDispatcher$Type;

    new-instance v2, Lcom/batch/android/p/b;

    iget-object v3, p0, Lcom/batch/android/i;->e:Lcom/batch/android/BatchMessage;

    invoke-virtual {v3}, Lcom/batch/android/BatchMessage;->c()Lcom/batch/android/json/JSONObject;

    move-result-object v4

    iget-object p0, p0, Lcom/batch/android/i;->e:Lcom/batch/android/BatchMessage;

    invoke-virtual {p0}, Lcom/batch/android/BatchMessage;->b()Lcom/batch/android/json/JSONObject;

    move-result-object p0

    invoke-direct {v2, v3, v4, p0}, Lcom/batch/android/p/b;-><init>(Lcom/batch/android/BatchMessage;Lcom/batch/android/json/JSONObject;Lcom/batch/android/json/JSONObject;)V

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/v0/e;->a(Lcom/batch/android/Batch$EventDispatcher$Type;Lcom/batch/android/Batch$EventDispatcher$Payload;)V

    return-void
.end method
