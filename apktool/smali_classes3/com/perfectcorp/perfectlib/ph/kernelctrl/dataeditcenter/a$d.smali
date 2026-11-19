.class public final Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$d;
.super Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final i:Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Ljava/lang/String;Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$a;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$d;->i:Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload;

    return-void
.end method
