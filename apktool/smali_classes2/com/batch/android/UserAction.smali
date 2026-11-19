.class public Lcom/batch/android/UserAction;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/batch/android/UserActionRunnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/batch/android/UserActionRunnable;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/batch/android/UserAction;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/batch/android/UserAction;->b:Lcom/batch/android/UserActionRunnable;

    return-void

    :cond_0
    const-string p0, "runnable cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "identifier cannot be empty"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p0, "identifier cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/UserAction;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getRunnable()Lcom/batch/android/UserActionRunnable;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/UserAction;->b:Lcom/batch/android/UserActionRunnable;

    return-object p0
.end method
