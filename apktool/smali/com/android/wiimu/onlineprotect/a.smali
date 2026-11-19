.class public Lcom/android/wiimu/onlineprotect/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/android/wiimu/onlineprotect/c;

.field private b:Lcom/android/wiimu/onlineprotect/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/wiimu/onlineprotect/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    new-instance v0, Lcom/android/wiimu/onlineprotect/b;

    invoke-direct {v0}, Lcom/android/wiimu/onlineprotect/b;-><init>()V

    iput-object v0, p0, Lcom/android/wiimu/onlineprotect/a;->b:Lcom/android/wiimu/onlineprotect/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object p0, p0, Lcom/android/wiimu/onlineprotect/a;->b:Lcom/android/wiimu/onlineprotect/b;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private b()V
    .locals 2

    new-instance v0, Lcom/android/wiimu/onlineprotect/c;

    invoke-direct {v0}, Lcom/android/wiimu/onlineprotect/c;-><init>()V

    iput-object v0, p0, Lcom/android/wiimu/onlineprotect/a;->a:Lcom/android/wiimu/onlineprotect/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object p0, p0, Lcom/android/wiimu/onlineprotect/a;->a:Lcom/android/wiimu/onlineprotect/c;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private d()V
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/onlineprotect/a;->b:Lcom/android/wiimu/onlineprotect/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/wiimu/onlineprotect/b;->e()V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/android/wiimu/onlineprotect/a;->a:Lcom/android/wiimu/onlineprotect/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/wiimu/onlineprotect/c;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wiimu/onlineprotect/a;->a:Lcom/android/wiimu/onlineprotect/c;

    :cond_0
    return-void
.end method


# virtual methods
.method public c()V
    .locals 0

    invoke-direct {p0}, Lcom/android/wiimu/onlineprotect/a;->b()V

    return-void
.end method

.method public f()V
    .locals 0

    invoke-direct {p0}, Lcom/android/wiimu/onlineprotect/a;->e()V

    return-void
.end method
