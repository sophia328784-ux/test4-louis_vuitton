.class public final synthetic Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/common/network/ProgressCallback;


# instance fields
.field public final synthetic a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/y;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    return-void
.end method


# virtual methods
.method public final a(D)V
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->z:Ljava/util/concurrent/ExecutorService;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/y;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    invoke-virtual {p0, p1, p2}, Lcom/perfectcorp/common/network/BaseDownloadHandle;->a(D)V

    return-void
.end method
