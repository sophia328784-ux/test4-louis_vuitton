.class public abstract Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadMetadata;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$c;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    const-string p0, "sku"

    return-object p0
.end method

.method public final b()J
    .locals 2

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$c;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    iget-wide v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuId:J

    return-wide v0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$c;->b:Ljava/lang/String;

    return-object p0
.end method
