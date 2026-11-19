.class public final synthetic Lph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/HandApplierTarget;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/HandApplierTarget;I)V
    .locals 0

    iput p2, p0, Lph;->b:I

    iput-object p1, p0, Lph;->c:Lcom/perfectcorp/perfectlib/HandApplierTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lph;->b:I

    iget-object p0, p0, Lph;->c:Lcom/perfectcorp/perfectlib/HandApplierTarget;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/WatchVtoApplier;->a(Lcom/perfectcorp/perfectlib/HandApplierTarget;)Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lcom/perfectcorp/perfectlib/RingVtoApplier;->a(Lcom/perfectcorp/perfectlib/HandApplierTarget;)Lcom/perfectcorp/perfectlib/RingVtoApplierImpl;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lcom/perfectcorp/perfectlib/NailVtoApplier;->a(Lcom/perfectcorp/perfectlib/HandApplierTarget;)Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p0}, Lcom/perfectcorp/perfectlib/JewelryVtoApplier;->a(Lcom/perfectcorp/perfectlib/HandApplierTarget;)Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p0}, Lcom/perfectcorp/perfectlib/BraceletVtoApplier;->a(Lcom/perfectcorp/perfectlib/HandApplierTarget;)Lcom/perfectcorp/perfectlib/BraceletVtoApplierImpl;

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
