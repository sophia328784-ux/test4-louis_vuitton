.class final synthetic Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$onCreate$1$1$17$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
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


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->s:Lcom/perfectcorp/perfectlib/MakeupCam;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->w:Z

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->x:Z

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->y:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->z:Z

    new-instance v5, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$startFaceAnalysis$1;

    invoke-direct {v5, p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$startFaceAnalysis$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;)V

    invoke-virtual/range {v0 .. v5}, Lcom/perfectcorp/perfectlib/MakeupCam;->takePicture(ZZZZLcom/perfectcorp/perfectlib/MakeupCam$PictureCallback;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
