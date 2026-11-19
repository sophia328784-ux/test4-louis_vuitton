.class public final synthetic Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;

.field public final synthetic c:Ljava/io/File;

.field public final synthetic d:Ljava/io/File;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/d;->b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/d;->c:Ljava/io/File;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/d;->d:Ljava/io/File;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/d;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/d;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/io/File;

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/d;->c:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/d;->d:Ljava/io/File;

    if-nez v0, :cond_1

    invoke-virtual {v1, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "\' to dst=\'"

    const-string v0, "\'"

    const-string v1, "Can\'t rename src=\'"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/d;->e:Ljava/lang/String;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/d;->f:Ljava/lang/String;

    invoke-static {v1, v2, p1, p0, v0}, Ld21;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {v1, p1}, Lcom/perfectcorp/common/utility/FileUtils;->a(Ljava/io/File;Ljava/io/File;)V

    :goto_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/d;->b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;->b()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;->c:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/PublishSubject;

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-object p1
.end method
