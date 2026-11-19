.class public final synthetic La91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/batch/android/v0/h;

.field public final synthetic d:Lcom/batch/android/BatchOptOutResultListener;

.field public final synthetic e:Lcom/batch/android/e/c0;

.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Lcom/batch/android/v0/h;Lcom/batch/android/BatchOptOutResultListener;Landroid/content/Context;ZLcom/batch/android/e/c0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, La91;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La91;->c:Lcom/batch/android/v0/h;

    iput-object p2, p0, La91;->d:Lcom/batch/android/BatchOptOutResultListener;

    iput-object p3, p0, La91;->f:Landroid/content/Context;

    iput-boolean p4, p0, La91;->g:Z

    iput-object p5, p0, La91;->e:Lcom/batch/android/e/c0;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/batch/android/v0/h;Lcom/batch/android/BatchOptOutResultListener;Lcom/batch/android/e/c0;Landroid/content/Context;Z)V
    .locals 1

    .line 17
    const/4 v0, 0x1

    iput v0, p0, La91;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La91;->c:Lcom/batch/android/v0/h;

    iput-object p2, p0, La91;->d:Lcom/batch/android/BatchOptOutResultListener;

    iput-object p3, p0, La91;->e:Lcom/batch/android/e/c0;

    iput-object p4, p0, La91;->f:Landroid/content/Context;

    iput-boolean p5, p0, La91;->g:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, La91;->b:I

    iget-boolean v1, p0, La91;->g:Z

    iget-object v2, p0, La91;->f:Landroid/content/Context;

    iget-object v3, p0, La91;->e:Lcom/batch/android/e/c0;

    iget-object v4, p0, La91;->d:Lcom/batch/android/BatchOptOutResultListener;

    iget-object p0, p0, La91;->c:Lcom/batch/android/v0/h;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, v4, v2, v1, v3}, Lcom/batch/android/v0/h;->j(Lcom/batch/android/v0/h;Lcom/batch/android/BatchOptOutResultListener;Landroid/content/Context;ZLcom/batch/android/e/c0;)V

    return-void

    :pswitch_0
    invoke-static {p0, v4, v2, v1, v3}, Lcom/batch/android/v0/h;->i(Lcom/batch/android/v0/h;Lcom/batch/android/BatchOptOutResultListener;Landroid/content/Context;ZLcom/batch/android/e/c0;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
