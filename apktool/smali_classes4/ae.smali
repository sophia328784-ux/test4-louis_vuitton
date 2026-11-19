.class public final synthetic Lae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;I)V
    .locals 0

    iput p2, p0, Lae;->b:I

    iput-object p1, p0, Lae;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lae;->b:I

    iget-object p0, p0, Lae;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->v:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/perfectcorp/perfectlib/MakeupCam;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->s:Lcom/perfectcorp/perfectlib/MakeupCam;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
