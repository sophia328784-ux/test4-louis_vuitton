.class public final synthetic Landroidx/camera/view/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic a:Landroidx/camera/view/PreviewViewImplementation$OnSurfaceNotInUseListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/f;->a:Landroidx/camera/view/PreviewViewImplementation$OnSurfaceNotInUseListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroidx/camera/core/SurfaceRequest$Result;

    const-string p1, "SurfaceViewImpl"

    const/4 v0, 0x3

    invoke-static {v0, p1}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object p0, p0, Landroidx/camera/view/f;->a:Landroidx/camera/view/PreviewViewImplementation$OnSurfaceNotInUseListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/camera/view/PreviewViewImplementation$OnSurfaceNotInUseListener;->a()V

    :cond_0
    return-void
.end method
