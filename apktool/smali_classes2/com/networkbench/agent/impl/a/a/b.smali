.class public Lcom/networkbench/agent/impl/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:I

.field private B:I

.field private C:J

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:I

.field private I:Ljava/util/Map;

.field private J:Ljava/lang/String;

.field private K:Z

.field private L:Z

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field public a:Ljava/lang/String;

.field public b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:J

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private final k:Ljava/lang/Object;

.field private final l:J

.field private final m:J

.field private final n:Ljava/lang/String;

.field private o:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

.field private p:Lcom/networkbench/agent/impl/harvest/HttpLibType;

.field private final q:Ljava/lang/String;

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Lcom/networkbench/agent/impl/k/b;

.field private u:I

.field private v:I

.field private w:Ljava/lang/String;

.field private x:I

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/RequestMethodType;Lcom/networkbench/agent/impl/harvest/HttpLibType;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p12, Ljava/lang/Object;

    invoke-direct {p12}, Ljava/lang/Object;-><init>()V

    iput-object p12, p0, Lcom/networkbench/agent/impl/a/a/b;->k:Ljava/lang/Object;

    const/4 p12, 0x0

    iput-boolean p12, p0, Lcom/networkbench/agent/impl/a/a/b;->r:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/a/a/b;->s:Ljava/lang/String;

    iput-boolean p12, p0, Lcom/networkbench/agent/impl/a/a/b;->K:Z

    iput-object v0, p0, Lcom/networkbench/agent/impl/a/a/b;->M:Ljava/lang/String;

    iput-object p1, p0, Lcom/networkbench/agent/impl/a/a/b;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/networkbench/agent/impl/a/a/b;->f:Ljava/lang/String;

    iput p3, p0, Lcom/networkbench/agent/impl/a/a/b;->g:I

    iput p4, p0, Lcom/networkbench/agent/impl/a/a/b;->i:I

    iput p5, p0, Lcom/networkbench/agent/impl/a/a/b;->j:I

    iput-wide p6, p0, Lcom/networkbench/agent/impl/a/a/b;->l:J

    iput-wide p8, p0, Lcom/networkbench/agent/impl/a/a/b;->m:J

    iput-object p10, p0, Lcom/networkbench/agent/impl/a/a/b;->a:Ljava/lang/String;

    move-object/from16 p1, p28

    iput-object p1, p0, Lcom/networkbench/agent/impl/a/a/b;->n:Ljava/lang/String;

    move-wide/from16 p1, p29

    iput-wide p1, p0, Lcom/networkbench/agent/impl/a/a/b;->d:J

    iput-object p11, p0, Lcom/networkbench/agent/impl/a/a/b;->q:Ljava/lang/String;

    iput-object p13, p0, Lcom/networkbench/agent/impl/a/a/b;->o:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    iput-object p14, p0, Lcom/networkbench/agent/impl/a/a/b;->p:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    move/from16 p1, p15

    iput p1, p0, Lcom/networkbench/agent/impl/a/a/b;->x:I

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/networkbench/agent/impl/a/a/b;->y:Ljava/lang/String;

    move/from16 p1, p17

    iput p1, p0, Lcom/networkbench/agent/impl/a/a/b;->z:I

    move/from16 p1, p18

    iput p1, p0, Lcom/networkbench/agent/impl/a/a/b;->A:I

    move/from16 p1, p19

    iput p1, p0, Lcom/networkbench/agent/impl/a/a/b;->B:I

    move-object/from16 p1, p20

    iput-object p1, p0, Lcom/networkbench/agent/impl/a/a/b;->E:Ljava/lang/String;

    move-object/from16 p1, p21

    iput-object p1, p0, Lcom/networkbench/agent/impl/a/a/b;->D:Ljava/lang/String;

    move/from16 p1, p22

    iput p1, p0, Lcom/networkbench/agent/impl/a/a/b;->h:I

    move-object/from16 p1, p23

    iput-object p1, p0, Lcom/networkbench/agent/impl/a/a/b;->J:Ljava/lang/String;

    move-object/from16 p1, p24

    iput-object p1, p0, Lcom/networkbench/agent/impl/a/a/b;->w:Ljava/lang/String;

    iput p12, p0, Lcom/networkbench/agent/impl/a/a/b;->u:I

    move/from16 p1, p25

    iput p1, p0, Lcom/networkbench/agent/impl/a/a/b;->v:I

    move-object/from16 p1, p26

    iput-object p1, p0, Lcom/networkbench/agent/impl/a/a/b;->b:Ljava/util/HashMap;

    move-object/from16 p1, p27

    iput-object p1, p0, Lcom/networkbench/agent/impl/a/a/b;->c:Ljava/util/HashMap;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/r;->aw()I

    move-result p1

    iput p1, p0, Lcom/networkbench/agent/impl/a/a/b;->H:I

    move-object/from16 p1, p31

    iput-object p1, p0, Lcom/networkbench/agent/impl/a/a/b;->s:Ljava/lang/String;

    move-wide/from16 p1, p32

    iput-wide p1, p0, Lcom/networkbench/agent/impl/a/a/b;->C:J

    move-object/from16 p1, p34

    iput-object p1, p0, Lcom/networkbench/agent/impl/a/a/b;->F:Ljava/lang/String;

    move-object/from16 p1, p35

    iput-object p1, p0, Lcom/networkbench/agent/impl/a/a/b;->G:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A()Lcom/networkbench/agent/impl/harvest/HttpLibType;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/a/a/b;->p:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    return-object p0
.end method

.method public B()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/a/a/b;->d:J

    return-wide v0
.end method

.method public C()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/a/a/b;->g:I

    return p0
.end method

.method public D()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/a/a/b;->K:Z

    return p0
.end method

.method public E()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/a/a/b;->L:Z

    return p0
.end method

.method public F()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/a/a/b;->M:Ljava/lang/String;

    return-object p0
.end method

.method public G()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/a/a/b;->r:Z

    return p0
.end method

.method public H()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/a/a/b;->N:Ljava/lang/String;

    return-object p0
.end method

.method public I()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/a/a/b;->F:Ljava/lang/String;

    return-object p0
.end method

.method public J()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/a/a/b;->G:Ljava/lang/String;

    return-object p0
.end method

.method public K()Lcom/networkbench/agent/impl/k/b;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/a/a/b;->t:Lcom/networkbench/agent/impl/k/b;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/networkbench/agent/impl/a/a/b;->s:Ljava/lang/String;

    return-object p0
.end method

.method public a(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/networkbench/agent/impl/a/a/b;->v:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 30
    iput-wide p1, p0, Lcom/networkbench/agent/impl/a/a/b;->C:J

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/harvest/HttpLibType;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/networkbench/agent/impl/a/a/b;->p:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/harvest/RequestMethodType;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/networkbench/agent/impl/a/a/b;->o:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    .locals 1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isOkhttp3()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getTcpHandShakeTime()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/a/a/b;->z:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getSslHandShakeTime()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/a/a/b;->A:I

    iget v0, p1, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->remainPackage:I

    iput v0, p0, Lcom/networkbench/agent/impl/a/a/b;->v:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getFirstPacketPeriod()I

    move-result p1

    iput p1, p0, Lcom/networkbench/agent/impl/a/a/b;->B:I

    :cond_0
    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/k/b;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/networkbench/agent/impl/a/a/b;->t:Lcom/networkbench/agent/impl/k/b;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/networkbench/agent/impl/a/a/b;->J:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/networkbench/agent/impl/a/a/b;->I:Ljava/util/Map;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/a/a/b;->K:Z

    return-void
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/a/a/b;->v:I

    return p0
.end method

.method public b(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/networkbench/agent/impl/a/a/b;->x:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/networkbench/agent/impl/a/a/b;->E:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/a/a/b;->L:Z

    return-void
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/a/a/b;->u:I

    return p0
.end method

.method public c(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/networkbench/agent/impl/a/a/b;->A:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/networkbench/agent/impl/a/a/b;->y:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/a/a/b;->r:Z

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/a/a/b;->w:Ljava/lang/String;

    return-object p0
.end method

.method public d(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/networkbench/agent/impl/a/a/b;->z:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/networkbench/agent/impl/a/a/b;->M:Ljava/lang/String;

    return-void
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/a/a/b;->C:J

    return-wide v0
.end method

.method public e(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/networkbench/agent/impl/a/a/b;->B:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/networkbench/agent/impl/a/a/b;->N:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/a/a/b;->I:Ljava/util/Map;

    return-object p0
.end method

.method public f(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/networkbench/agent/impl/a/a/b;->i:I

    return-void
.end method

.method public g()I
    .locals 0

    .line 10
    iget p0, p0, Lcom/networkbench/agent/impl/a/a/b;->H:I

    return p0
.end method

.method public g(I)V
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/a/a/b;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/networkbench/agent/impl/a/a/b;->j:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/a/a/b;->J:Ljava/lang/String;

    return-object p0
.end method

.method public h(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/networkbench/agent/impl/a/a/b;->g:I

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/a/a/b;->D:Ljava/lang/String;

    return-object p0
.end method

.method public i(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/networkbench/agent/impl/a/a/b;->h:I

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/a/a/b;->E:Ljava/lang/String;

    return-object p0
.end method

.method public k()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/a/a/b;->x:I

    return p0
.end method

.method public l()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/a/a/b;->y:Ljava/lang/String;

    return-object p0
.end method

.method public m()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/a/a/b;->z:I

    return p0
.end method

.method public n()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/a/a/b;->A:I

    return p0
.end method

.method public o()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/a/a/b;->B:I

    return p0
.end method

.method public p()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/a/a/b;->h:I

    return p0
.end method

.method public q()Lcom/networkbench/agent/impl/harvest/RequestMethodType;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/a/a/b;->o:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/a/a/b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public s()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/a/a/b;->i:I

    return p0
.end method

.method public t()I
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/a/a/b;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/networkbench/agent/impl/a/a/b;->j:I

    if-nez p0, :cond_0

    const/4 p0, -0x1

    :cond_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/a/a/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", carrier:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/a/a/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", time:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/networkbench/agent/impl/a/a/b;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", statusCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/networkbench/agent/impl/a/a/b;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", errorCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/networkbench/agent/impl/a/a/b;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", byteSent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/networkbench/agent/impl/a/a/b;->l:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", bytesRecieved:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/networkbench/agent/impl/a/a/b;->m:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", appData:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", formattedUrlParams:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/a/a/b;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", requestmethodtype:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/a/a/b;->o:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", cdnHeaderName :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/a/a/b;->E:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", contentType : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/a/a/b;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", dnstime : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/networkbench/agent/impl/a/a/b;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", connect : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/networkbench/agent/impl/a/a/b;->z:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", ssl : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/networkbench/agent/impl/a/a/b;->A:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", firstpk : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/networkbench/agent/impl/a/a/b;->B:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", remainpk : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/networkbench/agent/impl/a/a/b;->v:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", timeStamp : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/networkbench/agent/impl/a/a/b;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", queue : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/networkbench/agent/impl/a/a/b;->u:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u()I
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/a/a/b;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/networkbench/agent/impl/a/a/b;->j:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public v()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/a/a/b;->q:Ljava/lang/String;

    return-object p0
.end method

.method public w()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/a/a/b;->l:J

    return-wide v0
.end method

.method public x()J
    .locals 4

    iget-wide v0, p0, Lcom/networkbench/agent/impl/a/a/b;->m:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method

.method public y()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/a/a/b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public z()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/a/a/b;->n:Ljava/lang/String;

    return-object p0
.end method
