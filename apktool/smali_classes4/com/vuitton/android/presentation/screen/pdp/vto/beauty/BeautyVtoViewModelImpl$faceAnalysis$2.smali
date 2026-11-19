.class public final Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$faceAnalysis$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$CreateCallback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$faceAnalysis$2",
        "Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$CreateCallback;",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Landroid/graphics/Bitmap;

.field public final synthetic b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

.field public final synthetic c:Lcom/vuitton/android/domain/monitoring/MonitorAction;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/vuitton/android/domain/monitoring/MonitorAction;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$faceAnalysis$2;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$faceAnalysis$2;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$faceAnalysis$2;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$faceAnalysis$2;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    const-string v2, "BeautyVtoViewModelImpl"

    const-string v3, "Create face attribute analyzer failed."

    invoke-interface {v1, v2, v3, p1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Bc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$faceAnalysis$2;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {v0, p1, p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Cc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Ljava/lang/Throwable;Lcom/vuitton/android/domain/monitoring/MonitorAction;)V

    return-void
.end method

.method public final onSuccess(Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$faceAnalysis$2$onSuccess$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$faceAnalysis$2;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$faceAnalysis$2;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$faceAnalysis$2;->a:Landroid/graphics/Bitmap;

    invoke-direct {v0, p1, v1, p0, v2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$faceAnalysis$2$onSuccess$1;-><init>(Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Landroid/graphics/Bitmap;Lcom/vuitton/android/domain/monitoring/MonitorAction;)V

    invoke-virtual {p1, p0, v0}, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->setImage(Landroid/graphics/Bitmap;Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$SetImageCallback;)V

    return-void
.end method
