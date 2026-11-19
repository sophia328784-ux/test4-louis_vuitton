.class public Lcom/networkbench/agent/impl/util/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final R:Lcom/networkbench/agent/impl/c/e;

.field public static final a:I = 0x4

.field public static final b:I = 0x8

.field public static final c:I = 0x80

.field public static final d:I = 0x4000

.field public static final e:I = 0x8000

.field public static final f:I = 0x10000

.field public static final g:I = 0x20000

.field public static final h:I = 0x40000

.field public static final i:I = 0x7ffff

.field private static final j:I = 0x1

.field private static final k:I = 0x2

.field private static final l:I = 0x10

.field private static final m:I = 0x20

.field private static final n:I = 0x40

.field private static final o:I = 0x100

.field private static final p:I = 0x200

.field private static final q:I = 0x400

.field private static final r:I = 0x800

.field private static final s:I = 0x1000

.field private static final t:I = 0x2000


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Z

.field private S:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/util/u;->R:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->u:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/networkbench/agent/impl/util/u;->z:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->A:Z

    iput-boolean v1, p0, Lcom/networkbench/agent/impl/util/u;->B:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->C:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->D:Z

    iput-boolean v1, p0, Lcom/networkbench/agent/impl/util/u;->E:Z

    iput-boolean v1, p0, Lcom/networkbench/agent/impl/util/u;->F:Z

    iput-boolean v1, p0, Lcom/networkbench/agent/impl/util/u;->G:Z

    iput-boolean v1, p0, Lcom/networkbench/agent/impl/util/u;->H:Z

    iput-boolean v1, p0, Lcom/networkbench/agent/impl/util/u;->I:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->J:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->K:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->L:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->M:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->N:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->O:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->P:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->Q:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->S:Z

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, 0x0

    .line 386
    invoke-virtual {p0, p1, v0}, Lcom/networkbench/agent/impl/util/u;->a(IZ)V

    return-void
.end method

.method public a(IZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setModuleSwitch method called with features: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isNBSOption: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;)V

    if-nez v2, :cond_2

    if-ltz v1, :cond_0

    iget-boolean v2, v0, Lcom/networkbench/agent/impl/util/u;->S:Z

    if-eqz v2, :cond_2

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/util/u;->R:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "\u542f\u52a8\u7684\u65f6\u5019\u5df2\u7ecf\u8bbe\u7f6e\u8fc7\u4e86, \u5ffd\u7565\u8fd9\u4e00\u6b21features\u8bbe\u7f6e! "

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->n(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/networkbench/agent/impl/util/u;->e(Z)V

    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v0, v5}, Lcom/networkbench/agent/impl/util/u;->l(Z)V

    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v0, v6}, Lcom/networkbench/agent/impl/util/u;->j(Z)V

    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v0, v7}, Lcom/networkbench/agent/impl/util/u;->k(Z)V

    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    goto :goto_4

    :cond_7
    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v0, v8}, Lcom/networkbench/agent/impl/util/u;->f(Z)V

    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    goto :goto_5

    :cond_8
    const/4 v9, 0x0

    :goto_5
    invoke-virtual {v0, v9}, Lcom/networkbench/agent/impl/util/u;->m(Z)V

    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_9

    const/4 v10, 0x1

    goto :goto_6

    :cond_9
    const/4 v10, 0x0

    :goto_6
    invoke-virtual {v0, v10}, Lcom/networkbench/agent/impl/util/u;->g(Z)V

    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_a

    const/4 v11, 0x1

    goto :goto_7

    :cond_a
    const/4 v11, 0x0

    :goto_7
    invoke-virtual {v0, v11}, Lcom/networkbench/agent/impl/util/u;->h(Z)V

    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_b

    const/4 v12, 0x1

    goto :goto_8

    :cond_b
    const/4 v12, 0x0

    :goto_8
    invoke-virtual {v0, v12}, Lcom/networkbench/agent/impl/util/u;->i(Z)V

    and-int/lit16 v13, v1, 0x200

    if-eqz v13, :cond_c

    const/4 v13, 0x1

    goto :goto_9

    :cond_c
    const/4 v13, 0x0

    :goto_9
    invoke-virtual {v0, v13}, Lcom/networkbench/agent/impl/util/u;->a(Z)V

    and-int/lit16 v14, v1, 0x400

    if-eqz v14, :cond_d

    const/4 v14, 0x1

    goto :goto_a

    :cond_d
    const/4 v14, 0x0

    :goto_a
    invoke-virtual {v0, v14}, Lcom/networkbench/agent/impl/util/u;->b(Z)V

    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_e

    const/4 v15, 0x1

    goto :goto_b

    :cond_e
    const/4 v15, 0x0

    :goto_b
    invoke-virtual {v0, v15}, Lcom/networkbench/agent/impl/util/u;->c(Z)V

    and-int/lit16 v3, v1, 0x1000

    if-eqz v3, :cond_f

    const/4 v3, 0x1

    goto :goto_c

    :cond_f
    const/4 v3, 0x0

    :goto_c
    iput-boolean v3, v0, Lcom/networkbench/agent/impl/util/u;->H:Z

    and-int/lit16 v3, v1, 0x2000

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    goto :goto_d

    :cond_10
    const/4 v3, 0x0

    :goto_d
    iput-boolean v3, v0, Lcom/networkbench/agent/impl/util/u;->I:Z

    and-int/lit16 v3, v1, 0x4000

    if-eqz v3, :cond_11

    const/4 v3, 0x1

    goto :goto_e

    :cond_11
    const/4 v3, 0x0

    :goto_e
    iput-boolean v3, v0, Lcom/networkbench/agent/impl/util/u;->M:Z

    const v3, 0x8000

    and-int/2addr v3, v1

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    goto :goto_f

    :cond_12
    const/4 v3, 0x0

    :goto_f
    iput-boolean v3, v0, Lcom/networkbench/agent/impl/util/u;->N:Z

    const/high16 v3, 0x10000

    and-int/2addr v3, v1

    if-eqz v3, :cond_13

    const/4 v3, 0x1

    goto :goto_10

    :cond_13
    const/4 v3, 0x0

    :goto_10
    iput-boolean v3, v0, Lcom/networkbench/agent/impl/util/u;->O:Z

    const/high16 v3, 0x20000

    and-int/2addr v3, v1

    if-eqz v3, :cond_14

    const/4 v3, 0x1

    goto :goto_11

    :cond_14
    const/4 v3, 0x0

    :goto_11
    iput-boolean v3, v0, Lcom/networkbench/agent/impl/util/u;->P:Z

    const/high16 v3, 0x40000

    and-int/2addr v1, v3

    if-eqz v1, :cond_15

    const/4 v3, 0x1

    goto :goto_12

    :cond_15
    const/4 v3, 0x0

    :goto_12
    iput-boolean v3, v0, Lcom/networkbench/agent/impl/util/u;->Q:Z

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->j()Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "\nUI Switch is "

    const-string v3, "\nCrash Switch is "

    const-string v4, "Network Switch is "

    invoke-static {v4, v1, v3, v2, v5}, Lcj;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nWebView Switch is "

    const-string v3, "\nsocketdata Switch is "

    invoke-static {v1, v6, v2, v7, v3}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v2, "\ncross_app Switch is "

    const-string v3, "\nANR monitor Switch is "

    invoke-static {v1, v8, v2, v9, v3}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v2, "\nUserAction Switch  is "

    const-string v3, "\ncdnSwitch Switch  is "

    invoke-static {v1, v10, v2, v11, v3}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v2, "\nrecord Switch  is "

    const-string v3, "\nallTraceCollectEnabled Switch  is "

    invoke-static {v1, v12, v2, v13, v3}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v2, "\nviolenceSwitch  is "

    const-string v3, "\nbetaOn Switch is "

    invoke-static {v1, v14, v2, v15, v3}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-boolean v2, v0, Lcom/networkbench/agent/impl/util/u;->F:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\noomModule Switch is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/networkbench/agent/impl/util/u;->I:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\nbatteryModuleEnabled Switch is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/networkbench/agent/impl/util/u;->M:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\nbatteryErrorEnabled Switch is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/networkbench/agent/impl/util/u;->N:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\nrecordNetworkEnabled Switch is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/networkbench/agent/impl/util/u;->O:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\ncpuModuleEnabled Switch is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/networkbench/agent/impl/util/u;->P:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\nfpsModuleEnabled Switch is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/networkbench/agent/impl/util/u;->Q:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setModuleSwitch : \n"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->n(Ljava/lang/String;)V

    :cond_16
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/networkbench/agent/impl/util/u;->S:Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 385
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/util/u;->J:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 387
    iget-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->E:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->F:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/u;->M:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/util/u;->K:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->E:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/u;->O:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public c(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/util/u;->L:Z

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->E:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->F:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/u;->N:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public d()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Network Switch is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/networkbench/agent/impl/util/u;->u:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nUI Switch is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/networkbench/agent/impl/util/u;->B:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nCrash Switch is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/networkbench/agent/impl/util/u;->z:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nWebView Switch is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/networkbench/agent/impl/util/u;->A:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nsocketdata Switch is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/networkbench/agent/impl/util/u;->v:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\ncross_app Switch is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/networkbench/agent/impl/util/u;->C:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nANR monitor Switch is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/networkbench/agent/impl/util/u;->w:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nUserAction Switch  is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/networkbench/agent/impl/util/u;->x:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\ncdnSwitch Switch  is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/networkbench/agent/impl/util/u;->y:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nbetaOn Switch is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/u;->F:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "setModuleSwitch : \n"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->n(Ljava/lang/String;)V

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/util/u;->E:Z

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/util/u;->u:Z

    return-void
.end method

.method public e()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/u;->E:Z

    return p0
.end method

.method public f(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/util/u;->v:Z

    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->E:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/u;->u:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public g(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/util/u;->w:Z

    return-void
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->E:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/u;->v:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public h(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/util/u;->x:Z

    return-void
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->E:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/u;->w:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public i(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/util/u;->y:Z

    return-void
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->E:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/u;->x:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public j(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/util/u;->z:Z

    return-void
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->E:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/u;->y:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public k(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/util/u;->A:Z

    return-void
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->E:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/u;->z:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public l(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/util/u;->B:Z

    return-void
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->E:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->G:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/u;->F:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public m(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/util/u;->C:Z

    return-void
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->E:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/u;->B:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public n(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/util/u;->F:Z

    return-void
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->E:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/u;->A:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public o(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/util/u;->D:Z

    return-void
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->E:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->D:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/u;->F:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public p(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/util/u;->G:Z

    return-void
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->E:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/u;->B:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->E:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/u;->C:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->E:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/u;->J:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->E:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/u;->K:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->E:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/u;->L:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public u()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/u;->F:Z

    return p0
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->E:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/u;->H:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->E:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/u;->I:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->E:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->F:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/u;->P:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public y()Z
    .locals 1

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->E:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/util/u;->F:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/u;->Q:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
