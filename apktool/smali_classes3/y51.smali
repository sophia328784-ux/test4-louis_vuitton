.class public final synthetic Ly51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/VtoObject$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/VtoObject$Callback;I)V
    .locals 0

    iput p2, p0, Ly51;->b:I

    iput-object p1, p0, Ly51;->c:Lcom/perfectcorp/perfectlib/VtoObject$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Ly51;->b:I

    const-string v1, "[getWearingStyles] empty list"

    const-string v2, "[getPalettes] empty list"

    const/4 v3, 0x3

    iget-object p0, p0, Ly51;->c:Lcom/perfectcorp/perfectlib/VtoObject$Callback;

    packed-switch v0, :pswitch_data_0

    const-string v0, "VtoPatternPatternEarrings"

    invoke-static {v3, v0, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p0, v0}, Lcom/perfectcorp/perfectlib/VtoObject$Callback;->onSuccess(Ljava/util/List;)V

    return-void

    :pswitch_0
    const-string v0, "VtoDetailPatternMajor"

    invoke-static {v3, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p0, v0}, Lcom/perfectcorp/perfectlib/VtoObject$Callback;->onSuccess(Ljava/util/List;)V

    return-void

    :pswitch_1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p0, v0}, Lcom/perfectcorp/perfectlib/VtoObject$Callback;->onSuccess(Ljava/util/List;)V

    return-void

    :pswitch_2
    const-string v0, "VtoDetailPatternEarrings"

    invoke-static {v3, v0, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p0, v0}, Lcom/perfectcorp/perfectlib/VtoObject$Callback;->onSuccess(Ljava/util/List;)V

    return-void

    :pswitch_3
    const-string v0, "VtoDetail$PaletteMajor"

    invoke-static {v3, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p0, v0}, Lcom/perfectcorp/perfectlib/VtoObject$Callback;->onSuccess(Ljava/util/List;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
