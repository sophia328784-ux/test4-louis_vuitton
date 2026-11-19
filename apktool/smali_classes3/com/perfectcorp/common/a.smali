.class public Lcom/perfectcorp/common/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/common/a$a;
    }
.end annotation


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/c;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/c;-><init>()V

    sget-object v1, Lcom/perfectcorp/common/PfCommonsJni;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x5

    invoke-static {v0, v2, v3}, Lcom/perfectcorp/common/a;->b(Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/c;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    const-string v1, "perfect"

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/a;->b(Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/c;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perfectcorp/common/a;->a:Z

    return-void
.end method

.method public static a()V
    .locals 2

    sget-object v0, Lcom/perfectcorp/common/a$a;->a:Lcom/perfectcorp/common/a;

    iget-boolean v0, v0, Lcom/perfectcorp/common/a;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    const-string v1, "Could not load the native engine libraries."

    invoke-direct {v0, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/c;Ljava/lang/String;I)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/c;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    const-string v0, "Could not load lib"

    const-string v1, "\n"

    invoke-static {v0, p1, v1}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JNILoader"

    invoke-static {p2, p1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
