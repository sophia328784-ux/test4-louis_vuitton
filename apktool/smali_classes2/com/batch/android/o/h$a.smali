.class Lcom/batch/android/o/h$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/o/h;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/batch/android/o/h;


# direct methods
.method public constructor <init>(Lcom/batch/android/o/h;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/o/h$a;->b:Lcom/batch/android/o/h;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/batch/android/o/h$a;->b:Lcom/batch/android/o/h;

    invoke-static {v0}, Lcom/batch/android/o/h;->a(Lcom/batch/android/o/h;)I

    iget-object p0, p0, Lcom/batch/android/o/h$a;->b:Lcom/batch/android/o/h;

    invoke-static {p0}, Lcom/batch/android/o/h;->b(Lcom/batch/android/o/h;)Lcom/batch/android/o/h$b;

    move-result-object p0

    invoke-interface {p0}, Lcom/batch/android/o/h$b;->a()V

    return-void
.end method
