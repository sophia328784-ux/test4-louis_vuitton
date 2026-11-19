.class public final synthetic Lkd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/j1/a;


# instance fields
.field public final synthetic b:Lcom/batch/android/j1/e;

.field public final synthetic c:Z

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Z

.field public final synthetic f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic g:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/batch/android/j1/e;ZLandroid/content/Context;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkd;->b:Lcom/batch/android/j1/e;

    iput-boolean p2, p0, Lkd;->c:Z

    iput-object p3, p0, Lkd;->d:Landroid/content/Context;

    iput-boolean p4, p0, Lkd;->e:Z

    iput-object p5, p0, Lkd;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p6, p0, Lkd;->g:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final a(Lcom/batch/android/j1/g;Lcom/batch/android/j1/b;)Lcom/batch/android/j1/g;
    .locals 8

    iget-object v4, p0, Lkd;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v5, p0, Lkd;->g:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lkd;->b:Lcom/batch/android/j1/e;

    iget-boolean v1, p0, Lkd;->c:Z

    iget-object v2, p0, Lkd;->d:Landroid/content/Context;

    iget-boolean v3, p0, Lkd;->e:Z

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/batch/android/Batch;->g(Lcom/batch/android/j1/e;ZLandroid/content/Context;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/StringBuilder;Lcom/batch/android/j1/g;Lcom/batch/android/j1/b;)Lcom/batch/android/j1/g;

    move-result-object p0

    return-object p0
.end method
