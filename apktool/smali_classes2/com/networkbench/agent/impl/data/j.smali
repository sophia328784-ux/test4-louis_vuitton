.class public final Lcom/networkbench/agent/impl/data/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/data/j$c;,
        Lcom/networkbench/agent/impl/data/j$a;,
        Lcom/networkbench/agent/impl/data/j$b;
    }
.end annotation


# static fields
.field public static final a:I = 0x400

.field public static final b:I = 0x400

.field public static final c:Lcom/networkbench/agent/impl/data/j;


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:J

.field private final g:J

.field private final h:J

.field private final i:J

.field private final j:I

.field private final k:Z

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/networkbench/agent/impl/data/j$b;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/networkbench/agent/impl/data/j$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/data/j;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/data/j;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/data/j;->c:Lcom/networkbench/agent/impl/data/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/j;->d:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/networkbench/agent/impl/data/j;->e:Ljava/lang/String;

    const-wide/16 v1, 0x3c

    iput-wide v1, p0, Lcom/networkbench/agent/impl/data/j;->f:J

    const-wide/16 v1, 0x1e0

    iput-wide v1, p0, Lcom/networkbench/agent/impl/data/j;->g:J

    const-wide/16 v1, 0x258

    iput-wide v1, p0, Lcom/networkbench/agent/impl/data/j;->h:J

    const-wide/16 v1, 0x3e8

    iput-wide v1, p0, Lcom/networkbench/agent/impl/data/j;->i:J

    const/16 v1, 0x32

    iput v1, p0, Lcom/networkbench/agent/impl/data/j;->j:I

    const/16 v1, 0x400

    iput v1, p0, Lcom/networkbench/agent/impl/data/j;->m:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/networkbench/agent/impl/data/j;->k:Z

    const/16 v1, 0xa

    iput v1, p0, Lcom/networkbench/agent/impl/data/j;->l:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/networkbench/agent/impl/data/j;->n:I

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/j;->o:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/j;->p:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJIIZIILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJJIIZII",
            "Ljava/util/ArrayList<",
            "Lcom/networkbench/agent/impl/data/j$b;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/networkbench/agent/impl/data/j$a;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/networkbench/agent/impl/data/j;->d:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/networkbench/agent/impl/data/j;->e:Ljava/lang/String;

    .line 52
    iput-wide p3, p0, Lcom/networkbench/agent/impl/data/j;->f:J

    .line 53
    iput-wide p5, p0, Lcom/networkbench/agent/impl/data/j;->g:J

    .line 54
    iput-wide p7, p0, Lcom/networkbench/agent/impl/data/j;->h:J

    .line 55
    iput-wide p9, p0, Lcom/networkbench/agent/impl/data/j;->i:J

    .line 56
    iput p11, p0, Lcom/networkbench/agent/impl/data/j;->j:I

    .line 57
    iput p12, p0, Lcom/networkbench/agent/impl/data/j;->m:I

    .line 58
    iput-boolean p13, p0, Lcom/networkbench/agent/impl/data/j;->k:Z

    .line 59
    iput p14, p0, Lcom/networkbench/agent/impl/data/j;->l:I

    .line 60
    iput p15, p0, Lcom/networkbench/agent/impl/data/j;->n:I

    move-object/from16 p1, p16

    .line 61
    iput-object p1, p0, Lcom/networkbench/agent/impl/data/j;->o:Ljava/util/ArrayList;

    move-object/from16 p1, p17

    .line 62
    iput-object p1, p0, Lcom/networkbench/agent/impl/data/j;->p:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/data/j;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/j;->e:Ljava/lang/String;

    return-object p0
.end method

.method public b()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/j;->f:J

    return-wide v0
.end method

.method public c()J
    .locals 3

    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/j;->f:J

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/j;->g:J

    return-wide v0
.end method

.method public e()J
    .locals 3

    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/j;->g:J

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/j;->h:J

    return-wide v0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/j;->d:Ljava/lang/String;

    return-object p0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/j;->i:J

    return-wide v0
.end method

.method public i()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/data/j;->j:I

    return p0
.end method

.method public j()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/data/j;->m:I

    return p0
.end method

.method public k()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/data/j;->k:Z

    return p0
.end method

.method public l()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/data/j;->l:I

    return p0
.end method

.method public m()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/data/j;->n:I

    return p0
.end method

.method public n()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/networkbench/agent/impl/data/j$b;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/j;->o:Ljava/util/ArrayList;

    return-object p0
.end method

.method public o()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/networkbench/agent/impl/data/j$a;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/j;->p:Ljava/util/ArrayList;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/j;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
