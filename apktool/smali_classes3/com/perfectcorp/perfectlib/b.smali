.class public final synthetic Lcom/perfectcorp/perfectlib/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/perfectcorp/perfectlib/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget p0, p0, Lcom/perfectcorp/perfectlib/b;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl;

    new-instance p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent;

    sget-object p1, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;->WATCH:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent;-><init>(Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->b()V

    return-void

    :pswitch_0
    check-cast p1, Lcom/perfectcorp/perfectlib/RingVtoApplierImpl;

    new-instance p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent;

    sget-object p1, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;->RING:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent;-><init>(Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->b()V

    return-void

    :pswitch_1
    check-cast p1, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;

    new-instance p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent;

    sget-object p1, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;->NAILS:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent;-><init>(Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->b()V

    return-void

    :pswitch_2
    check-cast p1, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;

    sget-object p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;->c:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    return-void

    :pswitch_3
    check-cast p1, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;

    new-instance p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent;

    sget-object p1, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;->JEWELRY:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent;-><init>(Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->b()V

    return-void

    :pswitch_4
    check-cast p1, Lcom/perfectcorp/perfectlib/BraceletVtoApplierImpl;

    new-instance p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent;

    sget-object p1, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;->BRACELET:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent;-><init>(Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->b()V

    return-void

    :pswitch_5
    check-cast p1, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;

    new-instance p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent;

    sget-object p1, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;->NECKLACE:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent;-><init>(Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->b()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
