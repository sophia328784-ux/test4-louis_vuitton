.class public final synthetic Lga0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/sightcall/universal/internal/location/LocationDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/sightcall/universal/internal/location/LocationDialog;I)V
    .locals 0

    iput p2, p0, Lga0;->b:I

    iput-object p1, p0, Lga0;->c:Lcom/sightcall/universal/internal/location/LocationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget v0, p0, Lga0;->b:I

    iget-object p0, p0, Lga0;->c:Lcom/sightcall/universal/internal/location/LocationDialog;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1, p2}, Lcom/sightcall/universal/internal/location/LocationDialog;->r(Lcom/sightcall/universal/internal/location/LocationDialog;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/sightcall/universal/internal/location/LocationDialog;->q(Lcom/sightcall/universal/internal/location/LocationDialog;Landroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
