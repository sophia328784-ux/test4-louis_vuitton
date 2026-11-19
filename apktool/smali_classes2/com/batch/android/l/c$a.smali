.class Lcom/batch/android/l/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/n1/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/l/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private a:Lcom/batch/android/n1/e;

.field final synthetic b:Lcom/batch/android/l/c;


# direct methods
.method public constructor <init>(Lcom/batch/android/l/c;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/l/c$a;->b:Lcom/batch/android/l/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/batch/android/n/q;->a()Lcom/batch/android/o1/c;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/l/c$a;->a:Lcom/batch/android/n1/e;

    return-void
.end method

.method private synthetic a()V
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/batch/android/l/c$a;->b:Lcom/batch/android/l/c;

    invoke-static {p0}, Lcom/batch/android/l/c;->a(Lcom/batch/android/l/c;)V

    return-void
.end method

.method public static synthetic a(Lcom/batch/android/l/c$a;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/batch/android/l/c$a;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 0

    iget-object p0, p0, Lcom/batch/android/l/c$a;->b:Lcom/batch/android/l/c;

    invoke-static {p0}, Lcom/batch/android/l/c;->a(Lcom/batch/android/l/c;)V

    return-void
.end method

.method public static synthetic b(Lcom/batch/android/l/c$a;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/batch/android/l/c$a;->a()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/FailReason;)V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/batch/android/l/c$a;->a:Lcom/batch/android/n1/e;

    invoke-interface {v0, p1}, Lcom/batch/android/n1/e;->a(Lcom/batch/android/FailReason;)V

    .line 25
    iget-object p1, p0, Lcom/batch/android/l/c$a;->b:Lcom/batch/android/l/c;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 26
    new-instance v0, Lcom/batch/android/l/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/batch/android/l/f;-><init>(Lcom/batch/android/l/c$a;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/batch/android/g1/c;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/l/c$a;->a:Lcom/batch/android/n1/e;

    invoke-interface {v0, p1}, Lcom/batch/android/n1/e;->a(Ljava/util/List;)V

    iget-object p1, p0, Lcom/batch/android/l/c$a;->b:Lcom/batch/android/l/c;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/batch/android/l/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/batch/android/l/f;-><init>(Lcom/batch/android/l/c$a;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
