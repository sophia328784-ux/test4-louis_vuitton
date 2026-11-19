.class public Lcom/batch/android/h/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/batch/android/h/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 25

    move-object/from16 v0, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v2, p0

    iput-object v1, v2, Lcom/batch/android/h/c;->a:Ljava/util/List;

    new-instance v2, Lcom/batch/android/h/a;

    sget-object v3, Lcom/batch/android/h/d;->n:Lcom/batch/android/h/d;

    new-instance v4, La61;

    const/16 v5, 0x1b

    invoke-direct {v4, v5}, La61;-><init>(I)V

    invoke-direct {v2, v3, v4}, Lcom/batch/android/h/a;-><init>(Lcom/batch/android/h/d;Lcom/batch/android/h/a$a;)V

    new-instance v3, Lcom/batch/android/h/a;

    sget-object v4, Lcom/batch/android/h/d;->p:Lcom/batch/android/h/d;

    new-instance v5, La61;

    const/16 v6, 0x1d

    invoke-direct {v5, v6}, La61;-><init>(I)V

    invoke-direct {v3, v4, v5}, Lcom/batch/android/h/a;-><init>(Lcom/batch/android/h/d;Lcom/batch/android/h/a$a;)V

    new-instance v4, Lcom/batch/android/h/a;

    sget-object v5, Lcom/batch/android/h/d;->v:Lcom/batch/android/h/d;

    new-instance v6, Ll71;

    const/4 v7, 0x1

    invoke-direct {v6, v0, v7}, Ll71;-><init>(Landroid/content/Context;I)V

    invoke-direct {v4, v5, v6}, Lcom/batch/android/h/a;-><init>(Lcom/batch/android/h/d;Lcom/batch/android/h/a$a;)V

    new-instance v5, Lcom/batch/android/h/a;

    sget-object v6, Lcom/batch/android/h/d;->m:Lcom/batch/android/h/d;

    new-instance v8, Lr81;

    invoke-direct {v8, v7}, Lr81;-><init>(I)V

    invoke-direct {v5, v6, v8}, Lcom/batch/android/h/a;-><init>(Lcom/batch/android/h/d;Lcom/batch/android/h/a$a;)V

    new-instance v6, Lcom/batch/android/h/e;

    sget-object v7, Lcom/batch/android/h/d;->o:Lcom/batch/android/h/d;

    new-instance v8, Ll71;

    const/4 v9, 0x2

    invoke-direct {v8, v0, v9}, Ll71;-><init>(Landroid/content/Context;I)V

    invoke-direct {v6, v0, v7, v8}, Lcom/batch/android/h/e;-><init>(Landroid/content/Context;Lcom/batch/android/h/d;Lcom/batch/android/h/a$a;)V

    new-instance v7, Lcom/batch/android/h/e;

    sget-object v8, Lcom/batch/android/h/d;->d:Lcom/batch/android/h/d;

    new-instance v10, Ll71;

    const/4 v11, 0x3

    invoke-direct {v10, v0, v11}, Ll71;-><init>(Landroid/content/Context;I)V

    invoke-direct {v7, v0, v8, v10}, Lcom/batch/android/h/e;-><init>(Landroid/content/Context;Lcom/batch/android/h/d;Lcom/batch/android/h/a$a;)V

    new-instance v8, Lcom/batch/android/h/e;

    sget-object v10, Lcom/batch/android/h/d;->k:Lcom/batch/android/h/d;

    new-instance v12, Lr81;

    invoke-direct {v12, v9}, Lr81;-><init>(I)V

    invoke-direct {v8, v0, v10, v12}, Lcom/batch/android/h/e;-><init>(Landroid/content/Context;Lcom/batch/android/h/d;Lcom/batch/android/h/a$a;)V

    new-instance v9, Lcom/batch/android/h/e;

    sget-object v10, Lcom/batch/android/h/d;->l:Lcom/batch/android/h/d;

    new-instance v12, Lr81;

    invoke-direct {v12, v11}, Lr81;-><init>(I)V

    invoke-direct {v9, v0, v10, v12}, Lcom/batch/android/h/e;-><init>(Landroid/content/Context;Lcom/batch/android/h/d;Lcom/batch/android/h/a$a;)V

    new-instance v10, Lcom/batch/android/h/e;

    sget-object v11, Lcom/batch/android/h/d;->e:Lcom/batch/android/h/d;

    new-instance v12, Lr81;

    const/4 v13, 0x4

    invoke-direct {v12, v13}, Lr81;-><init>(I)V

    invoke-direct {v10, v0, v11, v12}, Lcom/batch/android/h/e;-><init>(Landroid/content/Context;Lcom/batch/android/h/d;Lcom/batch/android/h/a$a;)V

    new-instance v11, Lcom/batch/android/h/e;

    sget-object v12, Lcom/batch/android/h/d;->j:Lcom/batch/android/h/d;

    new-instance v14, Lr81;

    const/4 v15, 0x6

    invoke-direct {v14, v15}, Lr81;-><init>(I)V

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {}, Lcom/batch/android/n/g;->a()Lcom/batch/android/v0/d;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/batch/android/v0/d;->i()Lcom/batch/android/BatchDataCollectionConfig;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/batch/android/BatchDataCollectionConfig;->isDeviceModelEnabled()Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v13

    invoke-direct {v11, v0, v12, v14, v13}, Lcom/batch/android/h/e;-><init>(Landroid/content/Context;Lcom/batch/android/h/d;Lcom/batch/android/h/a$a;Z)V

    new-instance v12, Lcom/batch/android/h/e;

    sget-object v13, Lcom/batch/android/h/d;->h:Lcom/batch/android/h/d;

    new-instance v14, Lr81;

    move-object/from16 v16, v5

    const/4 v5, 0x5

    invoke-direct {v14, v5}, Lr81;-><init>(I)V

    invoke-static {}, Lcom/batch/android/n/g;->a()Lcom/batch/android/v0/d;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/batch/android/v0/d;->i()Lcom/batch/android/BatchDataCollectionConfig;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/batch/android/BatchDataCollectionConfig;->isDeviceBrandEnabled()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-direct {v12, v0, v13, v14, v5}, Lcom/batch/android/h/e;-><init>(Landroid/content/Context;Lcom/batch/android/h/d;Lcom/batch/android/h/a$a;Z)V

    new-instance v5, Lcom/batch/android/h/e;

    sget-object v13, Lcom/batch/android/h/d;->q:Lcom/batch/android/h/d;

    new-instance v14, Ll71;

    const/4 v15, 0x4

    invoke-direct {v14, v0, v15}, Ll71;-><init>(Landroid/content/Context;I)V

    invoke-direct {v5, v0, v13, v14}, Lcom/batch/android/h/e;-><init>(Landroid/content/Context;Lcom/batch/android/h/d;Lcom/batch/android/h/a$a;)V

    new-instance v13, Lcom/batch/android/h/e;

    sget-object v14, Lcom/batch/android/h/d;->r:Lcom/batch/android/h/d;

    new-instance v15, Ll71;

    move-object/from16 v17, v5

    const/4 v5, 0x5

    invoke-direct {v15, v0, v5}, Ll71;-><init>(Landroid/content/Context;I)V

    invoke-direct {v13, v0, v14, v15}, Lcom/batch/android/h/e;-><init>(Landroid/content/Context;Lcom/batch/android/h/d;Lcom/batch/android/h/a$a;)V

    new-instance v5, Lcom/batch/android/h/e;

    sget-object v14, Lcom/batch/android/h/d;->s:Lcom/batch/android/h/d;

    new-instance v15, Lr81;

    move-object/from16 v18, v13

    const/4 v13, 0x7

    invoke-direct {v15, v13}, Lr81;-><init>(I)V

    invoke-direct {v5, v0, v14, v15}, Lcom/batch/android/h/e;-><init>(Landroid/content/Context;Lcom/batch/android/h/d;Lcom/batch/android/h/a$a;)V

    new-instance v14, Lcom/batch/android/h/e;

    sget-object v15, Lcom/batch/android/h/d;->i:Lcom/batch/android/h/d;

    new-instance v13, Lr81;

    move-object/from16 v20, v5

    const/16 v5, 0x8

    invoke-direct {v13, v5}, Lr81;-><init>(I)V

    invoke-direct {v14, v0, v15, v13}, Lcom/batch/android/h/e;-><init>(Landroid/content/Context;Lcom/batch/android/h/d;Lcom/batch/android/h/a$a;)V

    new-instance v5, Lcom/batch/android/h/e;

    sget-object v13, Lcom/batch/android/h/d;->t:Lcom/batch/android/h/d;

    new-instance v15, Lr81;

    move-object/from16 v21, v14

    const/16 v14, 0x9

    invoke-direct {v15, v14}, Lr81;-><init>(I)V

    invoke-direct {v5, v0, v13, v15}, Lcom/batch/android/h/e;-><init>(Landroid/content/Context;Lcom/batch/android/h/d;Lcom/batch/android/h/a$a;)V

    new-instance v13, Lcom/batch/android/h/e;

    sget-object v14, Lcom/batch/android/h/d;->u:Lcom/batch/android/h/d;

    new-instance v15, Lr81;

    move-object/from16 v22, v5

    const/16 v5, 0xa

    invoke-direct {v15, v5}, Lr81;-><init>(I)V

    invoke-direct {v13, v0, v14, v15}, Lcom/batch/android/h/e;-><init>(Landroid/content/Context;Lcom/batch/android/h/d;Lcom/batch/android/h/a$a;)V

    new-instance v5, Lcom/batch/android/h/e;

    sget-object v14, Lcom/batch/android/h/d;->f:Lcom/batch/android/h/d;

    new-instance v15, Ll71;

    move-object/from16 v23, v13

    const/4 v13, 0x6

    invoke-direct {v15, v0, v13}, Ll71;-><init>(Landroid/content/Context;I)V

    invoke-direct {v5, v0, v14, v15}, Lcom/batch/android/h/e;-><init>(Landroid/content/Context;Lcom/batch/android/h/d;Lcom/batch/android/h/a$a;)V

    new-instance v13, Lcom/batch/android/h/e;

    sget-object v14, Lcom/batch/android/h/d;->g:Lcom/batch/android/h/d;

    new-instance v15, Ll71;

    move-object/from16 p0, v5

    const/4 v5, 0x7

    invoke-direct {v15, v0, v5}, Ll71;-><init>(Landroid/content/Context;I)V

    invoke-direct {v13, v0, v14, v15}, Lcom/batch/android/h/e;-><init>(Landroid/content/Context;Lcom/batch/android/h/d;Lcom/batch/android/h/a$a;)V

    new-instance v5, Lcom/batch/android/h/e;

    sget-object v14, Lcom/batch/android/h/d;->w:Lcom/batch/android/h/d;

    new-instance v15, La61;

    move-object/from16 v19, v13

    const/16 v13, 0x1c

    invoke-direct {v15, v13}, La61;-><init>(I)V

    invoke-direct {v5, v0, v14, v15}, Lcom/batch/android/h/e;-><init>(Landroid/content/Context;Lcom/batch/android/h/d;Lcom/batch/android/h/a$a;)V

    new-instance v13, Lcom/batch/android/h/e;

    sget-object v14, Lcom/batch/android/h/d;->x:Lcom/batch/android/h/d;

    new-instance v15, Lr81;

    move-object/from16 v24, v5

    const/4 v5, 0x0

    invoke-direct {v15, v5}, Lr81;-><init>(I)V

    invoke-direct {v13, v0, v14, v15}, Lcom/batch/android/h/e;-><init>(Landroid/content/Context;Lcom/batch/android/h/d;Lcom/batch/android/h/a$a;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 34
    invoke-static {}, Lcom/batch/android/n/f0;->a()Lcom/batch/android/v0/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/v0/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 36
    invoke-static {p0}, Lcom/batch/android/h/b;->d(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 37
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/batch/android/e/o0;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic c(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/batch/android/h/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic d(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/batch/android/h/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic e(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/batch/android/h/b;->b(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic f(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/batch/android/h/b;->e(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/batch/android/e/o0;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic g(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/batch/android/h/b;->f(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/batch/android/e/o0;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static h(Landroid/content/Context;)Lcom/batch/android/h/c;
    .locals 1

    new-instance v0, Lcom/batch/android/h/c;

    invoke-direct {v0, p0}, Lcom/batch/android/h/c;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic i(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/batch/android/h/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/batch/android/h/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/batch/android/h/c;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/batch/android/h/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/batch/android/h/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/batch/android/h/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/batch/android/h/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/batch/android/h/a;
    .locals 2

    iget-object p0, p0, Lcom/batch/android/h/c;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/h/a;

    invoke-virtual {v0}, Lcom/batch/android/h/a;->a()Lcom/batch/android/h/d;

    move-result-object v1

    iget-object v1, v1, Lcom/batch/android/h/d;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/batch/android/h/a;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object p0, p0, Lcom/batch/android/h/c;->a:Ljava/util/List;

    return-object p0
.end method

.method public b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/batch/android/h/e;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p0, p0, Lcom/batch/android/h/c;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/batch/android/h/a;

    instance-of v2, v1, Lcom/batch/android/h/e;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/batch/android/h/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
