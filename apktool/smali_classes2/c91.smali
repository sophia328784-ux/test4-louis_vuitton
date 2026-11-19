.class public final synthetic Lc91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/e/c0$b;


# instance fields
.field public final synthetic a:Lcom/batch/android/v0/h;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/batch/android/BatchOptOutResultListener;

.field public final synthetic d:Lcom/batch/android/e/c0;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/batch/android/v0/h;Lcom/batch/android/BatchOptOutResultListener;Landroid/content/Context;ZLcom/batch/android/e/c0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc91;->a:Lcom/batch/android/v0/h;

    iput-object p3, p0, Lc91;->b:Landroid/content/Context;

    iput-object p2, p0, Lc91;->c:Lcom/batch/android/BatchOptOutResultListener;

    iput-object p5, p0, Lc91;->d:Lcom/batch/android/e/c0;

    iput-boolean p4, p0, Lc91;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 6

    iget-object v3, p0, Lc91;->d:Lcom/batch/android/e/c0;

    iget-boolean v4, p0, Lc91;->e:Z

    iget-object v0, p0, Lc91;->a:Lcom/batch/android/v0/h;

    iget-object v1, p0, Lc91;->b:Landroid/content/Context;

    iget-object v2, p0, Lc91;->c:Lcom/batch/android/BatchOptOutResultListener;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/batch/android/v0/h;->k(Lcom/batch/android/v0/h;Landroid/content/Context;Lcom/batch/android/BatchOptOutResultListener;Lcom/batch/android/e/c0;ZLjava/lang/Exception;)V

    return-void
.end method
