.class Lcom/batch/android/l0/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/l0/a;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/l0/a;


# direct methods
.method public constructor <init>(Lcom/batch/android/l0/a;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/l0/a$b;->a:Lcom/batch/android/l0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/batch/android/l0/a$b;->a:Lcom/batch/android/l0/a;

    iget-object p1, p1, Lcom/batch/android/l0/a;->a:Landroid/content/Context;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->a(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/batch/android/l0/a$b;->a:Lcom/batch/android/l0/a;

    iget-object v0, v0, Lcom/batch/android/l0/a;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/BroadcastReceiver;)V

    iget-object p0, p0, Lcom/batch/android/l0/a$b;->a:Lcom/batch/android/l0/a;

    invoke-virtual {p0}, Lcom/batch/android/l0/a;->m()V

    return-void
.end method
