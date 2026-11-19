.class public final synthetic Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/k;

.field public final synthetic c:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i$a;

.field public final synthetic d:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/k;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i$a;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i0;->b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/k;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i0;->c:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i$a;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i0;->d:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i0;->b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/k;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i0;->c:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i$a;

    invoke-virtual {v0, v1, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/k;->a(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i$a;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;)V

    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i0;->d:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    invoke-direct {v0, p1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
