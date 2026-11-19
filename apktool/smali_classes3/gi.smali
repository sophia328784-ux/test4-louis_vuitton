.class public final synthetic Lgi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DrawingZoneListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/sightcall/universal/internal/ui/CallActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sightcall/universal/internal/ui/CallActivity;I)V
    .locals 0

    iput p2, p0, Lgi;->b:I

    iput-object p1, p0, Lgi;->c:Lcom/sightcall/universal/internal/ui/CallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lgi;->c:Lcom/sightcall/universal/internal/ui/CallActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->x(Lcom/sightcall/universal/internal/ui/CallActivity;Ljava/lang/Boolean;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lgi;->b:I

    iget-object p0, p0, Lgi;->c:Lcom/sightcall/universal/internal/ui/CallActivity;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->D(Lcom/sightcall/universal/internal/ui/CallActivity;Landroidx/activity/result/ActivityResult;)V

    return-void

    :pswitch_1
    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->z(Lcom/sightcall/universal/internal/ui/CallActivity;Landroidx/activity/result/ActivityResult;)V

    return-void

    :pswitch_2
    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->I(Lcom/sightcall/universal/internal/ui/CallActivity;Landroidx/activity/result/ActivityResult;)V

    return-void

    :pswitch_3
    check-cast p1, Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->L(Lcom/sightcall/universal/internal/ui/CallActivity;Ljava/util/Map;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDrawingZoneUpdated(Landroid/graphics/RectF;)V
    .locals 0

    iget-object p0, p0, Lgi;->c:Lcom/sightcall/universal/internal/ui/CallActivity;

    invoke-static {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->N(Lcom/sightcall/universal/internal/ui/CallActivity;Landroid/graphics/RectF;)V

    return-void
.end method
