.class public final synthetic Lnc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;I)V
    .locals 0

    iput p2, p0, Lnc0;->b:I

    iput-object p1, p0, Lnc0;->c:Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lnc0;->b:I

    iget-object p0, p0, Lnc0;->c:Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;->K(Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;->r(Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
