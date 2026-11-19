.class public Lcom/networkbench/agent/impl/logtrack/LoganConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;
    }
.end annotation


# static fields
.field protected static final i:I = 0x7

.field private static final j:J = 0x5265c00L

.field private static final k:J = 0x100000L

.field private static final l:J = 0x240c8400L

.field private static final m:J = 0xa00000L

.field private static final n:J = 0x3200000L

.field private static final o:I = 0x1f4


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:J

.field d:J

.field e:J

.field f:J

.field g:[B

.field h:[B


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->c:J

    const-wide/32 v0, 0x240c8400

    iput-wide v0, p0, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->d:J

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->e:J

    const-wide/32 v0, 0x3200000

    iput-wide v0, p0, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->f:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/networkbench/agent/impl/logtrack/LoganConfig$a;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/networkbench/agent/impl/logtrack/LoganConfig;-><init>()V

    return-void
.end method

.method private a(J)V
    .locals 0

    .line 32
    iput-wide p1, p0, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->d:J

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/logtrack/LoganConfig;J)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->b(J)V

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/logtrack/LoganConfig;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/logtrack/LoganConfig;[B)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->b([B)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->a:Ljava/lang/String;

    return-void
.end method

.method private a([B)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->h:[B

    return-void
.end method

.method private b(J)V
    .locals 0

    .line 7
    iput-wide p1, p0, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->c:J

    return-void
.end method

.method public static synthetic b(Lcom/networkbench/agent/impl/logtrack/LoganConfig;J)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->c(J)V

    return-void
.end method

.method public static synthetic b(Lcom/networkbench/agent/impl/logtrack/LoganConfig;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/networkbench/agent/impl/logtrack/LoganConfig;[B)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->a([B)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->b:Ljava/lang/String;

    return-void
.end method

.method private b([B)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->g:[B

    return-void
.end method

.method private c(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->f:J

    return-void
.end method

.method public static synthetic c(Lcom/networkbench/agent/impl/logtrack/LoganConfig;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->a(J)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->g:[B

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->h:[B

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
