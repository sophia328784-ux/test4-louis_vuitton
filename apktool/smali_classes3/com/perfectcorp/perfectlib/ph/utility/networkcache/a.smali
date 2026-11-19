.class public final synthetic Lcom/perfectcorp/perfectlib/ph/utility/networkcache/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$f;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/a;->a:Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$f;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/perfectcorp/common/network/RequestTask$Response;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/a;->a:Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$f;

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$f;->c:Z

    if-nez p0, :cond_1

    iget p0, p1, Lcom/perfectcorp/common/network/RequestTask$Response;->a:I

    const/16 v0, 0x130

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/b$a;

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/b$a;-><init>()V

    iget-object p1, p1, Lcom/perfectcorp/common/network/RequestTask$Response;->b:Ljava/lang/Object;

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/a;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/b$a;->b(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/a;)V

    :cond_1
    :goto_0
    return-void
.end method
