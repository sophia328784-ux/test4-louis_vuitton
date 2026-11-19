.class public final synthetic Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/common/network/ProgressCallback;


# instance fields
.field public final synthetic a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/h;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;

    return-void
.end method


# virtual methods
.method public final a(D)V
    .locals 2

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/h;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;->c:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/PublishSubject;

    const-wide v0, 0x3fe999999999999aL    # 0.8

    mul-double/2addr p1, v0

    const-wide v0, 0x3fa999999999999aL    # 0.05

    add-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
