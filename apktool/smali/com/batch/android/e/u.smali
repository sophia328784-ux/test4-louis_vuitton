.class public abstract Lcom/batch/android/e/u;
.super Lcom/batch/android/e/o0;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/e/l0;


# static fields
.field private static final n:Ljava/lang/String; = "1.0.0"


# instance fields
.field private final m:Lcom/batch/android/b1/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/batch/android/b1/d<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Lcom/batch/android/b1/d;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/batch/android/b1/d<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    sget-object v0, Lcom/batch/android/e/o0$c;->c:Lcom/batch/android/e/o0$c;

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/batch/android/e/o0;-><init>(Landroid/content/Context;Lcom/batch/android/e/o0$c;Ljava/lang/String;[Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/batch/android/b1/g;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iput-object p2, p0, Lcom/batch/android/e/u;->m:Lcom/batch/android/b1/d;

    return-void

    :cond_0
    const-string p0, "Provider is empty"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.msgpack.connect.timeout"

    return-object p0
.end method

.method public B()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.msgpack.read.timeout"

    return-object p0
.end method

.method public C()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.msgpack.retry"

    return-object p0
.end method

.method public F()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.msgpack.pattern"

    return-object p0
.end method

.method public G()Lcom/batch/android/b1/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/batch/android/b1/d<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/batch/android/e/u;->m:Lcom/batch/android/b1/d;

    return-object p0
.end method

.method public o()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.msgpack.getcryptor.mode"

    return-object p0
.end method

.method public p()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.msgpack.getcryptor.type"

    return-object p0
.end method

.method public r()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "x-batch-protocol-version"

    const-string v1, "1.0.0"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "x-batch-sdk-version"

    const-string v1, "3.1.1"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public v()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.msgpack.postcryptor.type"

    return-object p0
.end method

.method public bridge synthetic w()Lcom/batch/android/b1/g;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/e/u;->G()Lcom/batch/android/b1/d;

    move-result-object p0

    return-object p0
.end method

.method public y()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.msgpack.readcryptor.type"

    return-object p0
.end method
