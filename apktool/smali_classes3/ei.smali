.class public final synthetic Lei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/sightcall/universal/internal/ui/CallActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sightcall/universal/internal/ui/CallActivity;I)V
    .locals 0

    iput p2, p0, Lei;->b:I

    iput-object p1, p0, Lei;->c:Lcom/sightcall/universal/internal/ui/CallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lei;->b:I

    iget-object p0, p0, Lei;->c:Lcom/sightcall/universal/internal/ui/CallActivity;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/app/Service;

    invoke-static {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->y(Lcom/sightcall/universal/internal/ui/CallActivity;Landroid/app/Service;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/sightcall/pratik/Result;

    invoke-static {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->R(Lcom/sightcall/universal/internal/ui/CallActivity;Lcom/sightcall/pratik/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/sightcall/pratik/Result;

    invoke-static {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->T(Lcom/sightcall/universal/internal/ui/CallActivity;Lcom/sightcall/pratik/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lcom/sightcall/pratik/Result;

    invoke-static {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->G(Lcom/sightcall/universal/internal/ui/CallActivity;Lcom/sightcall/pratik/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lcom/sightcall/sharemedia/ShareMediaDialog$Result;

    invoke-static {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->W(Lcom/sightcall/universal/internal/ui/CallActivity;Lcom/sightcall/sharemedia/ShareMediaDialog$Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
