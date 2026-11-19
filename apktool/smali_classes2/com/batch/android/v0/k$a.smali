.class Lcom/batch/android/v0/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/n1/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/v0/k;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/batch/android/e/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/e/c0;

.field final synthetic b:Lcom/batch/android/v0/k;


# direct methods
.method public constructor <init>(Lcom/batch/android/v0/k;Lcom/batch/android/e/c0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/batch/android/v0/k$a;->b:Lcom/batch/android/v0/k;

    iput-object p2, p0, Lcom/batch/android/v0/k$a;->a:Lcom/batch/android/e/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 7
    return-void
.end method

.method public a(Lcom/batch/android/FailReason;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/FailReason;",
            "Ljava/util/List<",
            "Lcom/batch/android/o/b;",
            ">;)V"
        }
    .end annotation

    .line 8
    iget-object p0, p0, Lcom/batch/android/v0/k$a;->a:Lcom/batch/android/e/c0;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/batch/android/e/c0;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/batch/android/o/b;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/batch/android/v0/k$a;->a:Lcom/batch/android/e/c0;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/batch/android/e/c0;->a(Ljava/lang/Object;)V

    return-void
.end method
