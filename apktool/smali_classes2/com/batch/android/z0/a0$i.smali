.class Lcom/batch/android/z0/a0$i;
.super Lcom/batch/android/z0/a0$b;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/z0/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/z0/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field final synthetic d:Lcom/batch/android/z0/a0;


# direct methods
.method private constructor <init>(Lcom/batch/android/z0/a0;)V
    .locals 1

    iput-object p1, p0, Lcom/batch/android/z0/a0$i;->d:Lcom/batch/android/z0/a0;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/batch/android/z0/a0$b;-><init>(Lcom/batch/android/z0/a0;Lcom/batch/android/z0/a0$a;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/batch/android/z0/a0;Lcom/batch/android/z0/a0$a;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/batch/android/z0/a0$i;-><init>(Lcom/batch/android/z0/a0;)V

    return-void
.end method


# virtual methods
.method public A()Lcom/batch/android/z0/z;
    .locals 0

    sget-object p0, Lcom/batch/android/z0/z;->g:Lcom/batch/android/z0/z;

    return-object p0
.end method

.method public Z()Lcom/batch/android/z0/j;
    .locals 2

    iget-object p0, p0, Lcom/batch/android/z0/a0$i;->d:Lcom/batch/android/z0/a0;

    invoke-static {p0}, Lcom/batch/android/z0/a0;->d(Lcom/batch/android/z0/a0;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/batch/android/z0/y;->a(D)Lcom/batch/android/z0/j;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/batch/android/x0/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/batch/android/z0/a0$i;->d:Lcom/batch/android/z0/a0;

    invoke-static {p0}, Lcom/batch/android/z0/a0;->d(Lcom/batch/android/z0/a0;)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/batch/android/x0/j;->a(D)Lcom/batch/android/x0/j;

    return-void
.end method

.method public b()Lcom/batch/android/z0/e;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic m()Lcom/batch/android/z0/q;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/z0/a0$i;->Z()Lcom/batch/android/z0/j;

    move-result-object p0

    return-object p0
.end method
