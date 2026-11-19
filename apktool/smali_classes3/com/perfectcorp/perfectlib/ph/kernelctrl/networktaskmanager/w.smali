.class public final synthetic Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/base/Function;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

.field public final synthetic c:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/w;->b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/w;->c:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/List;

    sget-object p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->z:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$a;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/w;->b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    iget-object v0, v0, Lcom/perfectcorp/common/network/BaseDownloadHandle;->b:Ljava/io/File;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/w;->c:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    invoke-direct {p1, p0, v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$a;-><init>(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;Ljava/io/File;)V

    return-object p1
.end method
