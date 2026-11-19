.class public final synthetic Lmp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/sightcall/core/consent/ConsentDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/sightcall/core/consent/ConsentDialogFragment;I)V
    .locals 0

    iput p2, p0, Lmp;->b:I

    iput-object p1, p0, Lmp;->c:Lcom/sightcall/core/consent/ConsentDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmp;->b:I

    iget-object p0, p0, Lmp;->c:Lcom/sightcall/core/consent/ConsentDialogFragment;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sightcall/core/consent/ConsentDialogFragment;->s(Lcom/sightcall/core/consent/ConsentDialogFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lcom/sightcall/core/consent/ConsentDialogFragment;->J(Lcom/sightcall/core/consent/ConsentDialogFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lcom/sightcall/core/consent/ConsentDialogFragment;->r(Lcom/sightcall/core/consent/ConsentDialogFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
