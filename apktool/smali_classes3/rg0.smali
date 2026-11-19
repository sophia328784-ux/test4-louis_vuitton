.class public final synthetic Lrg0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;I)V
    .locals 0

    iput p2, p0, Lrg0;->b:I

    iput-object p1, p0, Lrg0;->c:Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lrg0;->b:I

    iget-object p0, p0, Lrg0;->c:Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->b(Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->c(Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;)Lcom/sightcall/libraries/archi/nucleus/Nucleus;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
