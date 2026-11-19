.class final synthetic Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment$onViewCreated$8;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "LSCCollimator;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-string v5, "onFrameCapture(LSCCollimator;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;

    const-string v4, "onFrameCapture"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LSCCollimator;

    invoke-virtual {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment$onViewCreated$8;->invoke(LSCCollimator;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(LSCCollimator;)V
    .locals 0

    .line 8
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;

    invoke-static {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->access$onFrameCapture(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;LSCCollimator;)V

    return-void
.end method
