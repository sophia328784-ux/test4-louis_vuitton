.class Lcom/networkbench/agent/impl/logtrack/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Z

.field c:J

.field d:Ljava/lang/String;

.field e:J

.field f:I

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:I

.field k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/logtrack/k;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/logtrack/k;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/logtrack/k;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/logtrack/k;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/logtrack/k;->a:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
