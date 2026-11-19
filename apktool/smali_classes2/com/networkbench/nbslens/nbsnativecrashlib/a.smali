.class Lcom/networkbench/nbslens/nbsnativecrashlib/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Lcom/networkbench/nbslens/nbsnativecrashlib/a;

.field private static final d:I = 0x64


# instance fields
.field private a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/nbslens/nbsnativecrashlib/a;

    invoke-direct {v0}, Lcom/networkbench/nbslens/nbsnativecrashlib/a;-><init>()V

    sput-object v0, Lcom/networkbench/nbslens/nbsnativecrashlib/a;->c:Lcom/networkbench/nbslens/nbsnativecrashlib/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/a;->a:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/a;->b:Z

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/nbslens/nbsnativecrashlib/a;)Ljava/util/LinkedList;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/a;->a:Ljava/util/LinkedList;

    return-object p0
.end method

.method public static synthetic a(Lcom/networkbench/nbslens/nbsnativecrashlib/a;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/a;->b:Z

    return p1
.end method

.method public static b()Lcom/networkbench/nbslens/nbsnativecrashlib/a;
    .locals 1

    sget-object v0, Lcom/networkbench/nbslens/nbsnativecrashlib/a;->c:Lcom/networkbench/nbslens/nbsnativecrashlib/a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/a;->a:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/a;->a:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    :cond_1
    return-void
.end method

.method public a(Landroid/app/Application;)V
    .locals 1

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/a;->a:Ljava/util/LinkedList;

    .line 32
    new-instance v0, Lcom/networkbench/nbslens/nbsnativecrashlib/a$a;

    invoke-direct {v0, p0}, Lcom/networkbench/nbslens/nbsnativecrashlib/a$a;-><init>(Lcom/networkbench/nbslens/nbsnativecrashlib/a;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public c()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/nbslens/nbsnativecrashlib/a;->b:Z

    return p0
.end method
