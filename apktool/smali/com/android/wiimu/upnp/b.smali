.class public Lcom/android/wiimu/upnp/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lb/c;

.field c:Lorg/teleal/cling/model/meta/Device;

.field public d:Ljava/util/Timer;

.field private e:J

.field private final f:J

.field private g:Z

.field h:I

.field i:I

.field final j:I


# direct methods
.method public constructor <init>(Lb/c;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wiimu/upnp/b;->a:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/wiimu/upnp/b;->e:J

    const-wide/16 v1, 0x2328

    iput-wide v1, p0, Lcom/android/wiimu/upnp/b;->f:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/wiimu/upnp/b;->g:Z

    iput v0, p0, Lcom/android/wiimu/upnp/b;->h:I

    iput v0, p0, Lcom/android/wiimu/upnp/b;->i:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/wiimu/upnp/b;->j:I

    iput-object p1, p0, Lcom/android/wiimu/upnp/b;->b:Lb/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/wiimu/upnp/b;->e:J

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/wiimu/upnp/b;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/android/wiimu/upnp/b;->a:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/android/wiimu/upnp/b;)Lb/c;
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/upnp/b;->b:Lb/c;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/android/wiimu/upnp/b;)J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/android/wiimu/upnp/b;->e:J

    return-wide v0
.end method

.method private c()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/wiimu/upnp/b;->g()V

    invoke-virtual {p0}, Lcom/android/wiimu/upnp/b;->j()V

    invoke-virtual {p0}, Lcom/android/wiimu/upnp/b;->e()V

    return-void
.end method

.method public static bridge synthetic d(Lcom/android/wiimu/upnp/b;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/android/wiimu/upnp/b;->g:Z

    return p0
.end method

.method public static bridge synthetic e(Lcom/android/wiimu/upnp/b;)V
    .locals 1

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wiimu/upnp/b;->g:Z

    return-void
.end method

.method public static bridge synthetic f(Lcom/android/wiimu/upnp/b;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/wiimu/upnp/b;->i()V

    return-void
.end method

.method private i()V
    .locals 3

    iget v0, p0, Lcom/android/wiimu/upnp/b;->i:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wiimu/upnp/b;->i:I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/wiimu/upnp/b;->k()Lorg/teleal/cling/model/meta/Device;

    iget-object v0, p0, Lcom/android/wiimu/upnp/b;->c:Lorg/teleal/cling/model/meta/Device;

    if-nez v0, :cond_1

    const-string p0, "UPNP-SEARCH"

    const-string v0, "mediaRender is null makeDlnaSubscriptionRenderingControl"

    invoke-static {p0, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/sucription/c;->a()Lcom/android/wiimu/upnp/sucription/c;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wiimu/upnp/b;->c:Lorg/teleal/cling/model/meta/Device;

    new-instance v2, Lcom/android/wiimu/upnp/b$f;

    invoke-direct {v2, p0}, Lcom/android/wiimu/upnp/b$f;-><init>(Lcom/android/wiimu/upnp/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/wiimu/upnp/sucription/c;->subscriptEventRenderingControl(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private k()Lorg/teleal/cling/model/meta/Device;
    .locals 2

    invoke-static {}, Lcom/android/wiimu/upnp/a;->f()Lcom/android/wiimu/upnp/a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wiimu/upnp/b;->b:Lb/c;

    iget-object v1, v1, Lb/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/wiimu/upnp/a;->a(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wiimu/upnp/b;->c:Lorg/teleal/cling/model/meta/Device;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 7

    invoke-direct {p0}, Lcom/android/wiimu/upnp/b;->c()V

    iget-object v0, p0, Lcom/android/wiimu/upnp/b;->d:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/wiimu/upnp/b;->d:Ljava/util/Timer;

    :cond_0
    iget-object v1, p0, Lcom/android/wiimu/upnp/b;->d:Ljava/util/Timer;

    new-instance v2, Lcom/android/wiimu/upnp/b$a;

    invoke-direct {v2, p0}, Lcom/android/wiimu/upnp/b$a;-><init>(Lcom/android/wiimu/upnp/b;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1388

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public b()Lb/c;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/android/wiimu/upnp/b;->b:Lb/c;

    return-object p0
.end method

.method public d()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->a()Lcom/android/wiimu/upnp/IWiimuAVTransport;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/wiimu/upnp/b;->k()Lorg/teleal/cling/model/meta/Device;

    move-result-object v1

    new-instance v2, Lcom/android/wiimu/upnp/b$b;

    invoke-direct {v2, p0}, Lcom/android/wiimu/upnp/b$b;-><init>(Lcom/android/wiimu/upnp/b;)V

    invoke-interface {v0, v1, v2}, Lcom/android/wiimu/upnp/IWiimuAVTransport;->getInfoEx(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public e()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->a()Lcom/android/wiimu/upnp/IWiimuAVTransport;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/wiimu/upnp/b;->k()Lorg/teleal/cling/model/meta/Device;

    move-result-object v1

    new-instance v2, Lcom/android/wiimu/upnp/b$d;

    invoke-direct {v2, p0}, Lcom/android/wiimu/upnp/b$d;-><init>(Lcom/android/wiimu/upnp/b;)V

    invoke-interface {v0, v1, v2}, Lcom/android/wiimu/upnp/IWiimuAVTransport;->getMediaInfo(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public f()V
    .locals 3

    iget v0, p0, Lcom/android/wiimu/upnp/b;->h:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wiimu/upnp/b;->h:I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/wiimu/upnp/b;->k()Lorg/teleal/cling/model/meta/Device;

    iget-object v0, p0, Lcom/android/wiimu/upnp/b;->c:Lorg/teleal/cling/model/meta/Device;

    if-nez v0, :cond_1

    const-string p0, "UPNP-SEARCH"

    const-string v0, "mediaRender == null makeDlnaSubscriptionAVTransport"

    invoke-static {p0, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/sucription/c;->a()Lcom/android/wiimu/upnp/sucription/c;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wiimu/upnp/b;->c:Lorg/teleal/cling/model/meta/Device;

    new-instance v2, Lcom/android/wiimu/upnp/b$e;

    invoke-direct {v2, p0}, Lcom/android/wiimu/upnp/b$e;-><init>(Lcom/android/wiimu/upnp/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/wiimu/upnp/sucription/c;->subscriptEventAVTransport(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public g()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/wiimu/upnp/b;->f()V

    invoke-direct {p0}, Lcom/android/wiimu/upnp/b;->i()V

    invoke-virtual {p0}, Lcom/android/wiimu/upnp/b;->h()V

    return-void
.end method

.method public h()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/wiimu/upnp/b;->k()Lorg/teleal/cling/model/meta/Device;

    iget-object v0, p0, Lcom/android/wiimu/upnp/b;->c:Lorg/teleal/cling/model/meta/Device;

    if-nez v0, :cond_0

    const-string p0, "UPNP-SEARCH"

    const-string v0, "mediaRender is null makeDlnaSubscriptionPlayQueue"

    invoke-static {p0, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/wiimu/upnp/sucription/c;->a()Lcom/android/wiimu/upnp/sucription/c;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wiimu/upnp/b;->c:Lorg/teleal/cling/model/meta/Device;

    new-instance v2, Lcom/android/wiimu/upnp/b$g;

    invoke-direct {v2, p0}, Lcom/android/wiimu/upnp/b$g;-><init>(Lcom/android/wiimu/upnp/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/wiimu/upnp/sucription/c;->subscriptEventPlayQueue(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public j()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->a()Lcom/android/wiimu/upnp/IWiimuAVTransport;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/wiimu/upnp/b;->k()Lorg/teleal/cling/model/meta/Device;

    move-result-object v1

    new-instance v2, Lcom/android/wiimu/upnp/b$c;

    invoke-direct {v2, p0}, Lcom/android/wiimu/upnp/b$c;-><init>(Lcom/android/wiimu/upnp/b;)V

    invoke-interface {v0, v1, v2}, Lcom/android/wiimu/upnp/IWiimuAVTransport;->getInfoEx(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wiimu/upnp/b;->a:Z

    iget-object v0, p0, Lcom/android/wiimu/upnp/b;->d:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wiimu/upnp/b;->d:Ljava/util/Timer;

    :cond_0
    return-void
.end method
