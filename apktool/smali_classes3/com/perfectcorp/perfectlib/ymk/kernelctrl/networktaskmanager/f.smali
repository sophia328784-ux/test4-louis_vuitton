.class public final synthetic Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a$a;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/f;->a:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a$a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InitRequest failed. domain="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/f;->a:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a$a;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SDKInitHandler"

    invoke-static {v0, p0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
