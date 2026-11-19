.class public final Lcom/batch/android/j1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/batch/android/LoggerDelegate;

.field private c:Lcom/batch/android/LoggerLevel;

.field private d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/j1/b;->b:Lcom/batch/android/LoggerDelegate;

    sget-object v1, Lcom/batch/android/LoggerLevel;->INFO:Lcom/batch/android/LoggerLevel;

    iput-object v1, p0, Lcom/batch/android/j1/b;->c:Lcom/batch/android/LoggerLevel;

    iput-object v0, p0, Lcom/batch/android/j1/b;->d:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public a()Lcom/batch/android/j1/b;
    .locals 2

    new-instance v0, Lcom/batch/android/j1/b;

    invoke-direct {v0}, Lcom/batch/android/j1/b;-><init>()V

    iget-object v1, p0, Lcom/batch/android/j1/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/batch/android/j1/b;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/batch/android/j1/b;->b:Lcom/batch/android/LoggerDelegate;

    invoke-virtual {v0, v1}, Lcom/batch/android/j1/b;->a(Lcom/batch/android/LoggerDelegate;)V

    iget-object v1, p0, Lcom/batch/android/j1/b;->c:Lcom/batch/android/LoggerLevel;

    invoke-virtual {v0, v1}, Lcom/batch/android/j1/b;->a(Lcom/batch/android/LoggerLevel;)V

    iget-object p0, p0, Lcom/batch/android/j1/b;->d:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Lcom/batch/android/j1/b;->a(Ljava/lang/Integer;)V

    return-object v0
.end method

.method public a(Lcom/batch/android/LoggerDelegate;)V
    .locals 0

    .line 26
    sput-object p1, Lcom/batch/android/e/t;->c:Lcom/batch/android/LoggerDelegate;

    .line 27
    iput-object p1, p0, Lcom/batch/android/j1/b;->b:Lcom/batch/android/LoggerDelegate;

    return-void
.end method

.method public a(Lcom/batch/android/LoggerLevel;)V
    .locals 0

    .line 28
    sput-object p1, Lcom/batch/android/e/t;->d:Lcom/batch/android/LoggerLevel;

    .line 29
    iput-object p1, p0, Lcom/batch/android/j1/b;->c:Lcom/batch/android/LoggerLevel;

    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/batch/android/j1/b;->d:Ljava/lang/Integer;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/batch/android/j1/b;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/j1/b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c()Lcom/batch/android/LoggerDelegate;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/j1/b;->b:Lcom/batch/android/LoggerDelegate;

    return-object p0
.end method

.method public d()Lcom/batch/android/LoggerLevel;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/j1/b;->c:Lcom/batch/android/LoggerLevel;

    return-object p0
.end method

.method public e()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/j1/b;->d:Ljava/lang/Integer;

    return-object p0
.end method
