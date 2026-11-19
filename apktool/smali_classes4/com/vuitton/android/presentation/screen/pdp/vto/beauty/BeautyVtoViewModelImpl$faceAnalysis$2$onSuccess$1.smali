.class public final Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$faceAnalysis$2$onSuccess$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$SetImageCallback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$faceAnalysis$2$onSuccess$1",
        "Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$SetImageCallback;",
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
.field public final synthetic a:Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;

.field public final synthetic b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

.field public final synthetic c:Landroid/graphics/Bitmap;

.field public final synthetic d:Lcom/vuitton/android/domain/monitoring/MonitorAction;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Landroid/graphics/Bitmap;Lcom/vuitton/android/domain/monitoring/MonitorAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$faceAnalysis$2$onSuccess$1;->a:Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$faceAnalysis$2$onSuccess$1;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$faceAnalysis$2$onSuccess$1;->c:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$faceAnalysis$2$onSuccess$1;->d:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$faceAnalysis$2$onSuccess$1;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    const-string v2, "BeautyVtoViewModelImpl"

    const-string v3, "Set image failed."

    invoke-interface {v1, v2, v3, p1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Bc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$faceAnalysis$2$onSuccess$1;->d:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {v0, p1, p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Cc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Ljava/lang/Throwable;Lcom/vuitton/android/domain/monitoring/MonitorAction;)V

    return-void
.end method

.method public final onSuccess()V
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$faceAnalysis$2$onSuccess$1;->a:Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->getAvailableFeatures()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$faceAnalysis$2$onSuccess$1$onSuccess$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$faceAnalysis$2$onSuccess$1;->c:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$faceAnalysis$2$onSuccess$1;->d:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$faceAnalysis$2$onSuccess$1;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    invoke-direct {v2, v3, v4, p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$faceAnalysis$2$onSuccess$1$onSuccess$1;-><init>(Landroid/graphics/Bitmap;Lcom/vuitton/android/domain/monitoring/MonitorAction;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->analyze(Ljava/util/Set;Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$AnalyzeCallback;)V

    return-void
.end method
