.class public final Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$b;
.super Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final i:Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;)V
    .locals 10

    .line 31
    invoke-virtual {p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;->b()Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;

    move-result-object v0

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;I)V

    iput-object p2, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$b;->i:Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$b;)V
    .locals 9

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->d()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    move-result-object v1

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$b;->i:Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;->b()Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;

    move-result-object v0

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;I)V

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$b;->i:Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;

    iput-object p0, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$b;->i:Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;

    return-void
.end method
