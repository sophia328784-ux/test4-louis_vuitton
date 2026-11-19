.class public Lcom/networkbench/agent/impl/util/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Lcom/networkbench/agent/impl/c/e;

.field public static final E:I = 0x7d0

.field public static final K:I = 0x2

.field private static final P:Lcom/networkbench/agent/impl/util/r;

.field public static a:I = 0x0

.field private static al:I = 0x0

.field public static b:I = 0x0

.field public static c:I = 0x0

.field public static j:I = 0x0

.field public static k:J = 0x0L

.field public static l:J = 0x0L

.field public static m:Ljava/lang/String; = null

.field public static n:Ljava/lang/String; = null

.field public static o:Z = false

.field public static p:I = 0x0

.field public static q:Z = false

.field public static r:Ljava/lang/String; = null

.field public static s:I = 0x0

.field public static final t:Ljava/lang/String; = "X-Tingyun-Tx-Data"

.field public static final u:Ljava/lang/String; = "X-Tingyun-Id"

.field public static final v:Ljava/lang/String; = "X-Tingyun"

.field public static final w:Ljava/lang/String; = "X-Tingyun-Data"

.field public static final x:J = 0x4e20L

.field public static final y:Ljava/lang/String; = "<_TY_C_API>"


# instance fields
.field public B:Z

.field public C:Ljava/lang/String;

.field public D:Z

.field public F:I

.field public G:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field H:Z

.field public I:Ljava/lang/String;

.field public J:I

.field L:I

.field M:Z

.field N:Ljava/lang/String;

.field O:Ljava/security/cert/X509Certificate;

.field private Q:Lcom/networkbench/agent/impl/util/n;

.field private R:Z

.field private S:Lorg/json/JSONArray;

.field private T:Z

.field private U:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private V:J

.field private W:Z

.field private X:Lcom/networkbench/agent/impl/util/u;

.field private Y:Lcom/networkbench/agent/impl/k/a;

.field private Z:Z

.field private aA:Z

.field private aB:Z

.field private aC:I

.field private aD:Ljava/lang/String;

.field private aE:Z

.field private aF:Ljava/lang/String;

.field private aG:I

.field private aH:Ljava/lang/String;

.field private aI:I

.field private aJ:Ljava/lang/String;

.field private aK:J

.field private aL:J

.field private aM:Z

.field private aN:Z

.field private aO:Lcom/networkbench/agent/impl/harvest/a/a/b;

.field private aP:Ljava/util/concurrent/atomic/AtomicLong;

.field private aQ:Lcom/networkbench/agent/impl/performance/a/a/b;

.field private aR:I

.field private aS:Z

.field private aa:I

.field private ab:Lcom/networkbench/agent/impl/data/c/a;

.field private ac:Lcom/networkbench/agent/impl/util/g;

.field private ad:Z

.field private ae:Landroid/content/Context;

.field private af:Ljava/lang/String;

.field private ag:Ljava/lang/String;

.field private ah:Ljava/lang/String;

.field private ai:Z

.field private aj:J

.field private ak:Ljava/util/concurrent/atomic/AtomicInteger;

.field private am:Ljava/lang/String;

.field private an:Ljava/lang/String;

.field private ao:Ljava/lang/String;

.field private ap:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private aq:Ljava/util/concurrent/atomic/AtomicInteger;

.field private ar:Ljava/lang/Float;

.field private as:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private at:Ljava/lang/String;

.field private au:Ljava/lang/String;

.field private av:Lcom/networkbench/agent/impl/util/t;

.field private aw:Ljava/lang/String;

.field private ax:Z

.field private ay:J

.field private az:I

.field public d:Z

.field public e:Z

.field public f:Ljava/lang/String;

.field g:Z

.field public h:Ljava/lang/String;

.field public i:I

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/networkbench/agent/impl/util/r;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/util/r;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/util/r;->P:Lcom/networkbench/agent/impl/util/r;

    const v0, 0x927c0

    sput v0, Lcom/networkbench/agent/impl/util/r;->a:I

    const v0, 0x493e0

    sput v0, Lcom/networkbench/agent/impl/util/r;->b:I

    const/16 v0, 0xa

    sput v0, Lcom/networkbench/agent/impl/util/r;->c:I

    const/4 v0, 0x0

    sput v0, Lcom/networkbench/agent/impl/util/r;->j:I

    const-string v1, ""

    sput-object v1, Lcom/networkbench/agent/impl/util/r;->n:Ljava/lang/String;

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Android"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "NBS Newlens Agent/{0} ({1} {2})"

    invoke-static {v3, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/networkbench/agent/impl/util/r;->m:Ljava/lang/String;

    sput v0, Lcom/networkbench/agent/impl/util/r;->p:I

    sput-boolean v0, Lcom/networkbench/agent/impl/util/r;->q:Z

    sput-object v1, Lcom/networkbench/agent/impl/util/r;->r:Ljava/lang/String;

    const/16 v0, 0x32

    sput v0, Lcom/networkbench/agent/impl/util/r;->s:I

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    const/4 v0, 0x3

    sput v0, Lcom/networkbench/agent/impl/util/r;->al:I

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/util/r;->d:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/networkbench/agent/impl/util/r;->e:Z

    const-string v2, "mobile-symbol-upload.tingyun.com"

    iput-object v2, p0, Lcom/networkbench/agent/impl/util/r;->f:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/networkbench/agent/impl/util/r;->g:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/networkbench/agent/impl/util/r;->h:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/util/r;->R:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/util/r;->T:Z

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/networkbench/agent/impl/util/r;->U:Ljava/util/Map;

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/networkbench/agent/impl/util/r;->V:J

    iput-boolean v1, p0, Lcom/networkbench/agent/impl/util/r;->W:Z

    new-instance v5, Lcom/networkbench/agent/impl/util/u;

    invoke-direct {v5}, Lcom/networkbench/agent/impl/util/u;-><init>()V

    iput-object v5, p0, Lcom/networkbench/agent/impl/util/r;->X:Lcom/networkbench/agent/impl/util/u;

    new-instance v5, Lcom/networkbench/agent/impl/k/a;

    invoke-direct {v5}, Lcom/networkbench/agent/impl/k/a;-><init>()V

    iput-object v5, p0, Lcom/networkbench/agent/impl/util/r;->Y:Lcom/networkbench/agent/impl/k/a;

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/util/r;->Z:Z

    iput-boolean v1, p0, Lcom/networkbench/agent/impl/util/r;->z:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/util/r;->B:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/util/r;->D:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/util/r;->ad:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/util/r;->ai:Z

    const-wide/16 v5, -0x1

    iput-wide v5, p0, Lcom/networkbench/agent/impl/util/r;->aj:J

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v5, p0, Lcom/networkbench/agent/impl/util/r;->ak:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object v2, p0, Lcom/networkbench/agent/impl/util/r;->am:Ljava/lang/String;

    iput-object v2, p0, Lcom/networkbench/agent/impl/util/r;->an:Ljava/lang/String;

    iput-object v2, p0, Lcom/networkbench/agent/impl/util/r;->ao:Ljava/lang/String;

    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v5, p0, Lcom/networkbench/agent/impl/util/r;->ap:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v5, p0, Lcom/networkbench/agent/impl/util/r;->aq:Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iput-object v5, p0, Lcom/networkbench/agent/impl/util/r;->ar:Ljava/lang/Float;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/networkbench/agent/impl/util/r;->as:Ljava/util/Map;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/networkbench/agent/impl/util/r;->av:Lcom/networkbench/agent/impl/util/t;

    const/16 v5, 0xfa0

    iput v5, p0, Lcom/networkbench/agent/impl/util/r;->az:I

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/util/r;->aA:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/util/r;->aB:Z

    const/16 v5, 0x14

    iput v5, p0, Lcom/networkbench/agent/impl/util/r;->aC:I

    const/16 v5, 0x10

    iput v5, p0, Lcom/networkbench/agent/impl/util/r;->F:I

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/util/r;->aE:Z

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/networkbench/agent/impl/util/r;->G:Ljava/util/HashMap;

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/util/r;->H:Z

    iput-object v2, p0, Lcom/networkbench/agent/impl/util/r;->I:Ljava/lang/String;

    iput-object v2, p0, Lcom/networkbench/agent/impl/util/r;->aF:Ljava/lang/String;

    iput v0, p0, Lcom/networkbench/agent/impl/util/r;->J:I

    const/16 v5, 0x20

    iput v5, p0, Lcom/networkbench/agent/impl/util/r;->aG:I

    iput-object v2, p0, Lcom/networkbench/agent/impl/util/r;->aH:Ljava/lang/String;

    iput v0, p0, Lcom/networkbench/agent/impl/util/r;->aI:I

    iput-object v2, p0, Lcom/networkbench/agent/impl/util/r;->aJ:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/networkbench/agent/impl/util/r;->aM:Z

    const/16 v5, 0x64

    iput v5, p0, Lcom/networkbench/agent/impl/util/r;->L:I

    iput-boolean v1, p0, Lcom/networkbench/agent/impl/util/r;->aN:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/util/r;->M:Z

    new-instance v5, Lcom/networkbench/agent/impl/harvest/a/a/b;

    invoke-direct {v5}, Lcom/networkbench/agent/impl/harvest/a/a/b;-><init>()V

    iput-object v5, p0, Lcom/networkbench/agent/impl/util/r;->aO:Lcom/networkbench/agent/impl/harvest/a/a/b;

    new-instance v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v5, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v5, p0, Lcom/networkbench/agent/impl/util/r;->aP:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object v2, p0, Lcom/networkbench/agent/impl/util/r;->N:Ljava/lang/String;

    new-instance v2, Lcom/networkbench/agent/impl/performance/a/a/b;

    invoke-direct {v2}, Lcom/networkbench/agent/impl/performance/a/a/b;-><init>()V

    iput-object v2, p0, Lcom/networkbench/agent/impl/util/r;->aQ:Lcom/networkbench/agent/impl/performance/a/a/b;

    const/4 v2, -0x1

    iput v2, p0, Lcom/networkbench/agent/impl/util/r;->aR:I

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/util/r;->aS:Z

    new-instance v2, Lcom/networkbench/agent/impl/util/n;

    invoke-direct {v2}, Lcom/networkbench/agent/impl/util/n;-><init>()V

    iput-object v2, p0, Lcom/networkbench/agent/impl/util/r;->Q:Lcom/networkbench/agent/impl/util/n;

    const-wide/16 v2, 0x32

    invoke-static {}, Lcom/networkbench/agent/impl/crash/b;->c()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/networkbench/agent/impl/util/r;->g:Z

    return-void
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";c=2;r="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->t()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "UTF-8"

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/q;->a([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ak;->b([B)Ljava/lang/String;

    move-result-object p0

    const-string p1, "u="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "::"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/networkbench/agent/impl/util/q;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ar()I
    .locals 2

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    if-gez v0, :cond_0

    neg-int v0, v0

    return v0

    :cond_0
    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 7
    const-string v0, "nbsagent_preference_"

    .line 8
    invoke-static {v0, p0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private m(I)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/v;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, -0x1

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/v;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private s(Z)V
    .locals 0

    .line 3
    return-void
.end method

.method public static u()Lcom/networkbench/agent/impl/util/r;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/util/r;->P:Lcom/networkbench/agent/impl/util/r;

    return-object v0
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/r;->X:Lcom/networkbench/agent/impl/util/u;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/u;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/r;->ai:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public B()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/util/r;->aa:I

    return p0
.end method

.method public C()Z
    .locals 1

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->ak:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public D()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->am:Ljava/lang/String;

    return-object p0
.end method

.method public E()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->ap:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public F()I
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->aq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public G()I
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->aq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result p0

    return p0
.end method

.method public H()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->as:Ljava/util/Map;

    return-object p0
.end method

.method public I()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->at:Ljava/lang/String;

    return-object p0
.end method

.method public J()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->ae:Landroid/content/Context;

    return-object p0
.end method

.method public K()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->af:Ljava/lang/String;

    return-object p0
.end method

.method public L()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->au:Ljava/lang/String;

    return-object p0
.end method

.method public M()I
    .locals 0

    sget p0, Lcom/networkbench/agent/impl/util/r;->al:I

    return p0
.end method

.method public N()I
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->ak:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public O()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->an:Ljava/lang/String;

    return-object p0
.end method

.method public P()Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->ar:Ljava/lang/Float;

    return-object p0
.end method

.method public Q()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/r;->ax:Z

    return p0
.end method

.method public R()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/util/r;->aj:J

    return-wide v0
.end method

.method public S()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/util/r;->ay:J

    return-wide v0
.end method

.method public T()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->aD:Ljava/lang/String;

    return-object p0
.end method

.method public U()V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->X:Lcom/networkbench/agent/impl/util/u;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/u;->d()V

    return-void
.end method

.method public V()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->X:Lcom/networkbench/agent/impl/util/u;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/u;->f()Z

    move-result p0

    return p0
.end method

.method public W()Z
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/r;->X:Lcom/networkbench/agent/impl/util/u;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/u;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->X:Lcom/networkbench/agent/impl/util/u;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/u;->f()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public X()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->X:Lcom/networkbench/agent/impl/util/u;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/u;->h()Z

    move-result p0

    return p0
.end method

.method public Y()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->X:Lcom/networkbench/agent/impl/util/u;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/u;->i()Z

    move-result p0

    return p0
.end method

.method public Z()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->X:Lcom/networkbench/agent/impl/util/u;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/u;->j()Z

    move-result p0

    return p0
.end method

.method public a()Lorg/json/JSONArray;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->S:Lorg/json/JSONArray;

    return-object p0
.end method

.method public a(DD)V
    .locals 1

    .line 87
    new-instance v0, Lcom/networkbench/agent/impl/util/t;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/networkbench/agent/impl/util/t;-><init>(DD)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/util/r;->av:Lcom/networkbench/agent/impl/util/t;

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setOldFeature :  \u8bbe\u7f6e\u4e00\u4e0b\u5386\u53f2\u4fdd\u5b58\u7684feature\u503c : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    .line 82
    iput p1, p0, Lcom/networkbench/agent/impl/util/r;->i:I

    return-void
.end method

.method public a(IZ)V
    .locals 2

    .line 92
    invoke-static {}, Lcom/networkbench/agent/impl/data/type/b;->a()Lcom/networkbench/agent/impl/data/type/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/type/b;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    iget-boolean v0, p0, Lcom/networkbench/agent/impl/util/r;->aE:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/r;->X:Lcom/networkbench/agent/impl/util/u;

    invoke-virtual {v0, p1, v1}, Lcom/networkbench/agent/impl/util/u;->a(IZ)V

    if-nez p2, :cond_1

    .line 95
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/b/b;->a()Lcom/networkbench/agent/impl/harvest/b/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/networkbench/agent/impl/harvest/b/b;->d(I)V

    .line 96
    :cond_1
    iput-boolean v1, p0, Lcom/networkbench/agent/impl/util/r;->aE:Z

    return-void
.end method

.method public a(J)V
    .locals 4

    .line 88
    iget-wide v0, p0, Lcom/networkbench/agent/impl/util/r;->V:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    return-void

    .line 89
    :cond_0
    iput-wide p1, p0, Lcom/networkbench/agent/impl/util/r;->V:J

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/networkbench/agent/impl/util/r;->ae:Landroid/content/Context;

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/data/c/a;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/networkbench/agent/impl/util/r;->ab:Lcom/networkbench/agent/impl/data/c/a;

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/performance/a/a/b;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/networkbench/agent/impl/util/r;->aQ:Lcom/networkbench/agent/impl/performance/a/a/b;

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/util/g;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/networkbench/agent/impl/util/r;->ac:Lcom/networkbench/agent/impl/util/g;

    return-void
.end method

.method public a(Ljava/lang/Float;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/networkbench/agent/impl/util/r;->ar:Ljava/lang/Float;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 76
    const-string v0, "setApmsIssue : "

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/networkbench/agent/impl/util/r;->S:Lorg/json/JSONArray;

    .line 77
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 78
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/util/r;->T:Z

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->S:Lorg/json/JSONArray;

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 80
    :catchall_0
    const-string p0, "setApmsIssue  has an error!"

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 83
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 84
    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->U:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->G:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Ljava/security/cert/X509Certificate;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/networkbench/agent/impl/util/r;->O:Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public a(Ljava/util/Date;Z)V
    .locals 0

    .line 99
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->X:Lcom/networkbench/agent/impl/util/u;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/util/u;->p(Z)V

    return-void
.end method

.method public aA()Lcom/networkbench/agent/impl/util/u;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->X:Lcom/networkbench/agent/impl/util/u;

    return-object p0
.end method

.method public aB()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/r;->aN:Z

    return p0
.end method

.method public aC()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/r;->M:Z

    return p0
.end method

.method public aD()Lcom/networkbench/agent/impl/harvest/a/a/b;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->aO:Lcom/networkbench/agent/impl/harvest/a/a/b;

    return-object p0
.end method

.method public aE()J
    .locals 2

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->aP:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public aF()V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->aP:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    return-void
.end method

.method public aG()Ljava/security/cert/X509Certificate;
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/r;->O:Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/h/b;->a()Lcom/networkbench/agent/impl/h/b;

    move-result-object v0

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/a/m;->a()Lcom/networkbench/agent/impl/harvest/a/m;

    move-result-object v1

    iget-object v1, v1, Lcom/networkbench/agent/impl/harvest/a/m;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/h/b;->b(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/util/r;->O:Ljava/security/cert/X509Certificate;

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->O:Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method public aH()Lcom/networkbench/agent/impl/k/a;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->Y:Lcom/networkbench/agent/impl/k/a;

    return-object p0
.end method

.method public aI()Lcom/networkbench/agent/impl/performance/a/a/b;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->aQ:Lcom/networkbench/agent/impl/performance/a/a/b;

    return-object p0
.end method

.method public aJ()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/util/r;->aR:I

    return p0
.end method

.method public aK()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "new page calc algo is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/networkbench/agent/impl/util/r;->aS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/r;->aS:Z

    return p0
.end method

.method public aa()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/util/r;->aC:I

    return p0
.end method

.method public ab()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->X:Lcom/networkbench/agent/impl/util/u;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/u;->k()Z

    move-result p0

    return p0
.end method

.method public ac()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->X:Lcom/networkbench/agent/impl/util/u;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/u;->l()Z

    move-result p0

    return p0
.end method

.method public ad()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->X:Lcom/networkbench/agent/impl/util/u;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/u;->n()Z

    move-result p0

    return p0
.end method

.method public ae()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->X:Lcom/networkbench/agent/impl/util/u;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/u;->o()Z

    move-result p0

    return p0
.end method

.method public af()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->X:Lcom/networkbench/agent/impl/util/u;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/u;->p()Z

    move-result p0

    return p0
.end method

.method public ag()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->X:Lcom/networkbench/agent/impl/util/u;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/u;->v()Z

    move-result p0

    return p0
.end method

.method public ah()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->X:Lcom/networkbench/agent/impl/util/u;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/u;->w()Z

    move-result p0

    return p0
.end method

.method public ai()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->X:Lcom/networkbench/agent/impl/util/u;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/u;->m()Z

    move-result p0

    return p0
.end method

.method public aj()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->X:Lcom/networkbench/agent/impl/util/u;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/u;->q()Z

    move-result p0

    return p0
.end method

.method public ak()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->X:Lcom/networkbench/agent/impl/util/u;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/u;->u()Z

    move-result p0

    return p0
.end method

.method public al()Z
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getCellInfoConfig()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/r;->H:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public am()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->I:Ljava/lang/String;

    return-object p0
.end method

.method public an()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/networkbench/agent/impl/util/r;->aF:Ljava/lang/String;

    const-string v3, "c=A|"

    const-string v4, ";"

    if-eqz v1, :cond_0

    invoke-static {v3, v2, v4}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v3, v2, v4}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/r;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public ao()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "c=A|"

    const-string v3, ";"

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x32

    if-le v1, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/util/r;->aF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/r;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->aF:Ljava/lang/String;

    invoke-static {p0, v3, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public ap()Z
    .locals 1

    iget p0, p0, Lcom/networkbench/agent/impl/util/r;->J:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public aq()Z
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/r;->aF:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->ap()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->aj()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public as()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/util/r;->az:I

    return p0
.end method

.method public at()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget p0, p0, Lcom/networkbench/agent/impl/util/r;->aG:I

    if-le v1, p0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public au()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->aH:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized av()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/r;->aJ:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized aw()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/networkbench/agent/impl/util/r;->aI:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public ax()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/r;->ae:Landroid/content/Context;

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/networkbench/agent/impl/util/r;->aK:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    sget-object v0, Lcom/networkbench/agent/impl/PrivacyDataType;->PrivacyDataNetType:Lcom/networkbench/agent/impl/PrivacyDataType;

    invoke-static {v0}, Lcom/networkbench/agent/impl/e/b;->c(Lcom/networkbench/agent/impl/PrivacyDataType;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/util/r;->ae:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/v;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/util/r;->j(I)V

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/v;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/r;->p(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/util/r;->aM:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/networkbench/agent/impl/PrivacyDataType;->PrivacyDataCarrierCode:Lcom/networkbench/agent/impl/PrivacyDataType;

    invoke-static {v0}, Lcom/networkbench/agent/impl/e/b;->a(Lcom/networkbench/agent/impl/PrivacyDataType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/r;->q(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/r;->j(I)V

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/util/r;->m(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/r;->p(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/r;->q(Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/util/r;->aK:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "Exception encountered while attempting to harvest   takePhoneNetworkState:   "

    invoke-interface {v0, v1, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public ay()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/r;->aM:Z

    return p0
.end method

.method public az()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/util/r;->L:I

    if-nez p0, :cond_0

    const/16 p0, 0x64

    :cond_0
    return p0
.end method

.method public b(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/networkbench/agent/impl/util/r;->aa:I

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 15
    iput-wide p1, p0, Lcom/networkbench/agent/impl/util/r;->aj:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "null"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/util/r;->Z:Z

    return-void
.end method

.method public b()Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/r;->T:Z

    return p0
.end method

.method public c()I
    .locals 0

    .line 18
    iget p0, p0, Lcom/networkbench/agent/impl/util/r;->i:I

    return p0
.end method

.method public c(I)V
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->X:Lcom/networkbench/agent/impl/util/u;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/util/u;->a(I)V

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 20
    iput-wide p1, p0, Lcom/networkbench/agent/impl/util/r;->ay:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/util/r;->C:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/util/r;->R:Z

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/r;->U:Ljava/util/Map;

    sget-object v1, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->dataTagKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->U:Ljava/util/Map;

    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->dataTagKey:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public d(J)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-static {}, Lcom/networkbench/agent/impl/util/ae;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public d(I)V
    .locals 1

    .line 26
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->X:Lcom/networkbench/agent/impl/util/u;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/networkbench/agent/impl/util/u;->a(IZ)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/networkbench/agent/impl/util/r;->aw:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->X:Lcom/networkbench/agent/impl/util/u;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/util/u;->d(Z)V

    return-void
.end method

.method public e(J)J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/networkbench/agent/impl/util/r;->aL:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public e()Ljava/util/Map;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->U:Ljava/util/Map;

    return-object p0
.end method

.method public e(I)V
    .locals 1

    .line 46
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->X:Lcom/networkbench/agent/impl/util/u;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/u;->n(Z)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/networkbench/agent/impl/util/r;->ah:Ljava/lang/String;

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/r;->ae:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/r;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->ae:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "userId"

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/util/r;->ad:Z

    return-void
.end method

.method public f(J)J
    .locals 4

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 35
    iget-wide v2, p0, Lcom/networkbench/agent/impl/util/r;->aL:J

    sub-long/2addr p1, v2

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public f(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/networkbench/agent/impl/util/r;->aC:I

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/networkbench/agent/impl/util/r;->ag:Ljava/lang/String;

    return-void
.end method

.method public f(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/util/r;->aA:Z

    return-void
.end method

.method public f()Z
    .locals 3

    sget-object v0, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NBSGlobalSettings  isViolence_endbled : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/util/r;->X:Lcom/networkbench/agent/impl/util/u;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/u;->t()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->X:Lcom/networkbench/agent/impl/util/u;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/u;->t()Z

    move-result p0

    return p0
.end method

.method public g(J)J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/util/r;->aL:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public g()Lcom/networkbench/agent/impl/util/n;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->Q:Lcom/networkbench/agent/impl/util/n;

    return-object p0
.end method

.method public g(I)V
    .locals 0

    .line 9
    iput p1, p0, Lcom/networkbench/agent/impl/util/r;->J:I

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/networkbench/agent/impl/util/r;->am:Ljava/lang/String;

    return-void
.end method

.method public g(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/util/r;->W:Z

    return-void
.end method

.method public h()Lcom/networkbench/agent/impl/data/c/a;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->ab:Lcom/networkbench/agent/impl/data/c/a;

    return-object p0
.end method

.method public h(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/networkbench/agent/impl/util/r;->az:I

    return-void
.end method

.method public h(J)V
    .locals 2

    iput-wide p1, p0, Lcom/networkbench/agent/impl/util/r;->aL:J

    sget-object p0, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setExcursion time : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/networkbench/agent/impl/util/r;->af:Ljava/lang/String;

    return-void
.end method

.method public h(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/util/r;->aB:Z

    return-void
.end method

.method public i()Lcom/networkbench/agent/impl/util/g;
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/r;->ac:Lcom/networkbench/agent/impl/util/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/r;->C:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/networkbench/agent/impl/util/g;

    iget-object v1, p0, Lcom/networkbench/agent/impl/util/r;->C:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/util/g;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "getEncryptContent has an error :   "

    invoke-interface {v1, v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->ac:Lcom/networkbench/agent/impl/util/g;

    return-object p0
.end method

.method public i(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/networkbench/agent/impl/util/r;->aG:I

    return-void
.end method

.method public i(J)V
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->aP:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/networkbench/agent/impl/util/r;->au:Ljava/lang/String;

    return-void
.end method

.method public i(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/util/r;->ai:Z

    return-void
.end method

.method public declared-synchronized j(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/networkbench/agent/impl/util/r;->aI:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/networkbench/agent/impl/util/r;->ao:Ljava/lang/String;

    return-void
.end method

.method public j(Z)V
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->ap:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public j()Z
    .locals 0

    .line 10
    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/r;->R:Z

    return p0
.end method

.method public k(I)V
    .locals 0

    if-nez p1, :cond_0

    const/16 p1, 0x64

    .line 10
    :cond_0
    iput p1, p0, Lcom/networkbench/agent/impl/util/r;->L:I

    return-void
.end method

.method public k(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/util/r;->ax:Z

    return-void
.end method

.method public k()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->X:Lcom/networkbench/agent/impl/util/u;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/u;->e()Z

    move-result p0

    return p0
.end method

.method public l(I)V
    .locals 1

    if-gtz p1, :cond_0

    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lcom/networkbench/agent/impl/util/r;->aR:I

    return-void

    :cond_0
    const v0, 0xea60

    mul-int/2addr p1, v0

    .line 19
    iput p1, p0, Lcom/networkbench/agent/impl/util/r;->aR:I

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/networkbench/agent/impl/util/r;->aD:Ljava/lang/String;

    return-void
.end method

.method public l(Z)V
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->X:Lcom/networkbench/agent/impl/util/u;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/util/u;->o(Z)V

    return-void
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/r;->X:Lcom/networkbench/agent/impl/util/u;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/u;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/r;->g:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/networkbench/agent/impl/util/r;->I:Ljava/lang/String;

    return-void
.end method

.method public m(Z)V
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->X:Lcom/networkbench/agent/impl/util/u;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/util/u;->l(Z)V

    return-void
.end method

.method public m()Z
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->X:Lcom/networkbench/agent/impl/util/u;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/u;->s()Z

    move-result p0

    return p0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/networkbench/agent/impl/util/r;->aF:Ljava/lang/String;

    return-void
.end method

.method public n(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/util/r;->H:Z

    return-void
.end method

.method public n()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/r;->ad:Z

    return p0
.end method

.method public o(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "u=gm#"

    const-string v1, "sm4 encrypt keyString:"

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/r;->B:Z

    if-eqz p0, :cond_2

    :try_start_0
    const-string p0, ""

    sget-object v2, Lcom/networkbench/agent/impl/harvest/a/e;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/networkbench/agent/impl/harvest/a/e;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object p0, Lcom/networkbench/agent/impl/harvest/a/e;->b:Ljava/lang/String;

    const-string v2, "04"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    sget-object v2, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", raw value:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/networkbench/agent/impl/harvest/a/e;->c:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/networkbench/agent/impl/util/z;->a()Lcom/networkbench/agent/impl/util/z;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/networkbench/agent/impl/util/z;->a([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ak;->b([B)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const-string p0, "u="

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "u=base64#"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public o(Z)V
    .locals 0

    .line 130
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/util/r;->aM:Z

    return-void
.end method

.method public o()Z
    .locals 0

    .line 129
    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/r;->aA:Z

    return p0
.end method

.method public p()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->aw:Ljava/lang/String;

    return-object p0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/networkbench/agent/impl/util/r;->aH:Ljava/lang/String;

    return-void
.end method

.method public p(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/util/r;->aN:Z

    return-void
.end method

.method public q()Lcom/networkbench/agent/impl/util/t;
    .locals 2

    .line 16
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->av:Lcom/networkbench/agent/impl/util/t;

    if-nez p0, :cond_0

    .line 17
    new-instance p0, Lcom/networkbench/agent/impl/util/t;

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, v0, v1}, Lcom/networkbench/agent/impl/util/t;-><init>(DD)V

    :cond_0
    return-object p0
.end method

.method public declared-synchronized q(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, ""

    iput-object p1, p0, Lcom/networkbench/agent/impl/util/r;->aJ:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/util/r;->aJ:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public q(Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/util/r;->M:Z

    return-void
.end method

.method public r()J
    .locals 2

    .line 107
    iget-wide v0, p0, Lcom/networkbench/agent/impl/util/r;->V:J

    return-wide v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/networkbench/agent/impl/harvest/a/a/b;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/harvest/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/util/r;->aO:Lcom/networkbench/agent/impl/harvest/a/a/b;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/util/r;->aO:Lcom/networkbench/agent/impl/harvest/a/a/b;

    const-string v1, "gpsUseTimePer"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/networkbench/agent/impl/harvest/a/a/b;->a(I)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/util/r;->aO:Lcom/networkbench/agent/impl/harvest/a/a/b;

    const-string v1, "gpsUseTime10m"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/networkbench/agent/impl/harvest/a/a/b;->c(I)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/util/r;->aO:Lcom/networkbench/agent/impl/harvest/a/a/b;

    const-string v1, "gpsUseCount10m"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/networkbench/agent/impl/harvest/a/a/b;->b(I)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/util/r;->aO:Lcom/networkbench/agent/impl/harvest/a/a/b;

    const-string v1, "wakeLockHeldTimePer"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/networkbench/agent/impl/harvest/a/a/b;->d(I)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/util/r;->aO:Lcom/networkbench/agent/impl/harvest/a/a/b;

    const-string v1, "wakeLockHeldTime10m"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/networkbench/agent/impl/harvest/a/a/b;->e(I)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/util/r;->aO:Lcom/networkbench/agent/impl/harvest/a/a/b;

    const-string v1, "wakeLockAcquiredCount10m"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/networkbench/agent/impl/harvest/a/a/b;->f(I)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/util/r;->aO:Lcom/networkbench/agent/impl/harvest/a/a/b;

    const-string v1, "wakeupAlarmCount10m"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/networkbench/agent/impl/harvest/a/a/b;->g(I)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->aO:Lcom/networkbench/agent/impl/harvest/a/a/b;

    const-string p1, "alarmCount10m"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/harvest/a/a/b;->h(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public r(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/util/r;->aS:Z

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/networkbench/agent/impl/util/r;->N:Ljava/lang/String;

    return-void
.end method

.method public s()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/r;->W:Z

    return p0
.end method

.method public t()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/r;->ah:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/r;->ae:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/r;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/networkbench/agent/impl/util/r;->ae:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "userId"

    invoke-static {v2}, Lcom/networkbench/agent/impl/util/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/util/r;->ah:Ljava/lang/String;

    :cond_1
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->ah:Ljava/lang/String;

    return-object p0
.end method

.method public v()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/r;->aB:Z

    return p0
.end method

.method public w()V
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/r;->ak:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/r;->as:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{o:c|b:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/util/r;->ao:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "status"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/util/r;->at:Ljava/lang/String;

    return-void
.end method

.method public x()Z
    .locals 1

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->ak:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public y()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->ak:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public z()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/r;->ag:Ljava/lang/String;

    return-object p0
.end method
