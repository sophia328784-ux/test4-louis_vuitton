.class public Lcom/networkbench/agent/impl/i/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = 0x32

.field private static final b:I = 0xa

.field private static final c:Ljava/lang/String; = "NBSViewStatusScan"

.field private static final d:I = 0x1388

.field private static e:Lcom/networkbench/agent/impl/i/f;


# instance fields
.field private f:Lcom/networkbench/agent/impl/util/c/e;

.field private g:I

.field private h:I

.field private i:Ljava/lang/Runnable;

.field private j:Lcom/networkbench/agent/impl/i/g;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/networkbench/agent/impl/i/g;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/i/f;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/i/f;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/i/f;->e:Lcom/networkbench/agent/impl/i/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/networkbench/agent/impl/util/c/e;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/util/c/e;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/i/f;->f:Lcom/networkbench/agent/impl/util/c/e;

    const/16 v0, 0x32

    iput v0, p0, Lcom/networkbench/agent/impl/i/f;->g:I

    const/16 v0, 0x1388

    iput v0, p0, Lcom/networkbench/agent/impl/i/f;->h:I

    new-instance v0, Lcom/networkbench/agent/impl/i/f$1;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lcom/networkbench/agent/impl/i/f$1;-><init>(Lcom/networkbench/agent/impl/i/f;I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/i/f;->k:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/i/f;->m:Ljava/lang/String;

    new-instance v0, Lcom/networkbench/agent/impl/i/f$2;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/i/f$2;-><init>(Lcom/networkbench/agent/impl/i/f;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/i/f;->i:Ljava/lang/Runnable;

    return-void
.end method

.method public static a()Lcom/networkbench/agent/impl/i/f;
    .locals 1

    .line 82
    sget-object v0, Lcom/networkbench/agent/impl/i/f;->e:Lcom/networkbench/agent/impl/i/f;

    return-object v0
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/i/f;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/networkbench/agent/impl/i/f;->l:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic b(Lcom/networkbench/agent/impl/i/f;)Lcom/networkbench/agent/impl/i/g;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/networkbench/agent/impl/i/f;->j:Lcom/networkbench/agent/impl/i/g;

    return-object p0
.end method

.method private c()V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/i/f;->e:Lcom/networkbench/agent/impl/i/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/i/f;->f:Lcom/networkbench/agent/impl/util/c/e;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/c/e;->a()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/networkbench/agent/impl/i/f;->j:Lcom/networkbench/agent/impl/i/g;

    const-string v1, ""

    iput-object v1, p0, Lcom/networkbench/agent/impl/i/f;->m:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic c(Lcom/networkbench/agent/impl/i/f;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/networkbench/agent/impl/i/f;->c()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/networkbench/agent/impl/i/f;->g:I

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/i/f;->l:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 85
    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "NBSViewStatusScan"

    if-eqz v0, :cond_0

    .line 86
    const-string p0, "feature uuid is empty"

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "currentFeatureUUID:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/i/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", featureUUID:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/networkbench/agent/impl/i/f;->m:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/i/f;->b()V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/networkbench/agent/impl/data/type/p;)V
    .locals 2

    const-string v0, "page status scan start"

    const-string v1, "NBSViewStatusScan"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "feature uuid is empty"

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/i/f;->m:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "page scan has start, skip start again"

    invoke-static {v1, p1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/i/f;->j:Lcom/networkbench/agent/impl/i/g;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Lcom/networkbench/agent/impl/i/g;->a(Lcom/networkbench/agent/impl/data/type/p;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/networkbench/agent/impl/i/f;->j:Lcom/networkbench/agent/impl/i/g;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/i/g;->d()V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/i/f;->c()V

    :cond_3
    iput-object p1, p0, Lcom/networkbench/agent/impl/i/f;->m:Ljava/lang/String;

    new-instance v0, Lcom/networkbench/agent/impl/i/g;

    iget v1, p0, Lcom/networkbench/agent/impl/i/f;->h:I

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/i/g;-><init>(I)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/i/f;->j:Lcom/networkbench/agent/impl/i/g;

    invoke-virtual {v0, p2}, Lcom/networkbench/agent/impl/i/g;->a(Lcom/networkbench/agent/impl/data/type/p;)V

    iget-object p2, p0, Lcom/networkbench/agent/impl/i/f;->k:Ljava/util/Map;

    iget-object v0, p0, Lcom/networkbench/agent/impl/i/f;->j:Lcom/networkbench/agent/impl/i/g;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/networkbench/agent/impl/i/f;->f:Lcom/networkbench/agent/impl/util/c/e;

    iget-object p2, p0, Lcom/networkbench/agent/impl/i/f;->i:Ljava/lang/Runnable;

    iget p0, p0, Lcom/networkbench/agent/impl/i/f;->g:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p0, v0}, Lcom/networkbench/agent/impl/util/c/e;->a(Ljava/lang/Runnable;II)V

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/networkbench/agent/impl/i/g;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "NBSViewStatusScan"

    if-eqz v0, :cond_0

    const-string p0, "feature uuid is empty"

    invoke-static {v2, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/i/f;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "not find page scan info featureUUID:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/networkbench/agent/impl/util/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    iget-object p0, p0, Lcom/networkbench/agent/impl/i/f;->k:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/i/g;

    return-object p0
.end method

.method public b()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/networkbench/agent/impl/i/f;->j:Lcom/networkbench/agent/impl/i/g;

    if-eqz v0, :cond_0

    .line 54
    const-string v0, "NBSViewStatusScan"

    const-string v1, "stopScanAndTask"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/networkbench/agent/impl/i/f;->j:Lcom/networkbench/agent/impl/i/g;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/i/g;->d()V

    .line 56
    invoke-direct {p0}, Lcom/networkbench/agent/impl/i/f;->c()V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/networkbench/agent/impl/i/f;->h:I

    .line 51
    iget-object p0, p0, Lcom/networkbench/agent/impl/i/f;->j:Lcom/networkbench/agent/impl/i/g;

    if-eqz p0, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/i/g;->a(I)V

    :cond_0
    return-void
.end method
