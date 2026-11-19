.class public final synthetic Lfi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/sightcall/universal/internal/ui/CallActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sightcall/universal/internal/ui/CallActivity;I)V
    .locals 0

    iput p2, p0, Lfi;->b:I

    iput-object p1, p0, Lfi;->c:Lcom/sightcall/universal/internal/ui/CallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lfi;->b:I

    iget-object p0, p0, Lfi;->c:Lcom/sightcall/universal/internal/ui/CallActivity;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->X(Lcom/sightcall/universal/internal/ui/CallActivity;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->w(Lcom/sightcall/universal/internal/ui/CallActivity;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
