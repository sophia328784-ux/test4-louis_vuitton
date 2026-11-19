.class public final synthetic Lcom/sightcall/gpslocation/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;I)V
    .locals 0

    iput p2, p0, Lcom/sightcall/gpslocation/a;->b:I

    iput-object p1, p0, Lcom/sightcall/gpslocation/a;->c:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sightcall/gpslocation/a;->b:I

    iget-object p0, p0, Lcom/sightcall/gpslocation/a;->c:Lkotlinx/coroutines/channels/ProducerScope;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Exception;

    invoke-static {p0, p1}, Lcom/sightcall/gpslocation/GpsRepositoryImpl$locations$1;->d(Lkotlinx/coroutines/channels/ProducerScope;Ljava/lang/Exception;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/location/Location;

    invoke-static {p0, p1}, Lcom/sightcall/gpslocation/GpsRepositoryImpl$locations$1;->e(Lkotlinx/coroutines/channels/ProducerScope;Landroid/location/Location;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
