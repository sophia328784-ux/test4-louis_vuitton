.class Lcom/batch/android/e0/c$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/e0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/e0/c;


# direct methods
.method public constructor <init>(Lcom/batch/android/e0/c;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/e0/c$a;->a:Lcom/batch/android/e0/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/e0/c$a;->a:Lcom/batch/android/e0/c;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/batch/android/e0/c$b;

    invoke-static {p0, p1}, Lcom/batch/android/e0/c;->a(Lcom/batch/android/e0/c;Lcom/batch/android/e0/c$b;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    if-ne v0, p1, :cond_1

    iget-object p0, p0, Lcom/batch/android/e0/c$a;->a:Lcom/batch/android/e0/c;

    invoke-static {p0}, Lcom/batch/android/e0/c;->a(Lcom/batch/android/e0/c;)V

    :cond_1
    return-void
.end method
