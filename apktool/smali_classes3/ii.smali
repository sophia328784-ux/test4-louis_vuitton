.class public final synthetic Lii;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/sightcall/universal/internal/ui/CallActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sightcall/universal/internal/ui/CallActivity;I)V
    .locals 0

    iput p2, p0, Lii;->b:I

    iput-object p1, p0, Lii;->c:Lcom/sightcall/universal/internal/ui/CallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lii;->b:I

    iget-object p0, p0, Lii;->c:Lcom/sightcall/universal/internal/ui/CallActivity;

    check-cast p1, Lcom/sightcall/pratik/Result;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->V(Lcom/sightcall/universal/internal/ui/CallActivity;Lcom/sightcall/pratik/Result;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->v(Lcom/sightcall/universal/internal/ui/CallActivity;Lcom/sightcall/pratik/Result;)V

    return-void

    :pswitch_1
    invoke-static {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->F(Lcom/sightcall/universal/internal/ui/CallActivity;Lcom/sightcall/pratik/Result;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
