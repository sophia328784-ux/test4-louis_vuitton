.class public final synthetic Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/base/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/t;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/t;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/t;->c:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/t;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/t;->b:I

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/t;->e:Ljava/lang/Object;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/t;->c:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/t;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    check-cast p1, Ljava/util/List;

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->z:Ljava/util/concurrent/ExecutorService;

    iget-object v4, v2, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    new-instance v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i;

    invoke-direct {v8, v1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i;-><init>(Ljava/util/Map;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->makeup:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a;->eye_contact:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$a;->patterns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$a$b;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$a$b;->pattern:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    sget-object v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->DOWNLOAD:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    sget v7, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a:F

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "eye_contact"

    invoke-static/range {v3 .. v8}, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->a(Lcom/perfectcorp/perfectlib/ph/template/idc/e;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;Ljava/lang/String;FLcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i;)Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    check-cast v1, Landroid/util/Pair;

    check-cast p1, Ljava/util/List;

    sget-object p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->z:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$a;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;

    invoke-direct {v1, v0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;-><init>(Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/perfectcorp/common/network/BaseDownloadHandle;->b:Ljava/io/File;

    invoke-direct {p1, v2, v0, p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$a;-><init>(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;Ljava/util/List;Ljava/io/File;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
