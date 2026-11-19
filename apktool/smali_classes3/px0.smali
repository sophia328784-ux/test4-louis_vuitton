.class public final synthetic Lpx0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/common/network/ProgressCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/common/network/ProgressCallback;I)V
    .locals 0

    iput p2, p0, Lpx0;->b:I

    iput-object p1, p0, Lpx0;->c:Lcom/perfectcorp/common/network/ProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lpx0;->b:I

    const-wide v1, 0x3fb999999999999aL    # 0.1

    const-wide v3, 0x3fc999999999999aL    # 0.2

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    const-wide/16 v7, 0x0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    iget-object p0, p0, Lpx0;->c:Lcom/perfectcorp/common/network/ProgressCallback;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0, v9, v10}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    return-void

    :pswitch_0
    invoke-interface {p0, v5, v6}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    return-void

    :pswitch_1
    const-wide v0, 0x3fe999999999999aL    # 0.8

    invoke-interface {p0, v0, v1}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    return-void

    :pswitch_2
    invoke-interface {p0, v3, v4}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    return-void

    :pswitch_3
    invoke-interface {p0, v1, v2}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    return-void

    :pswitch_4
    invoke-interface {p0, v9, v10}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    return-void

    :pswitch_5
    invoke-interface {p0, v7, v8}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    return-void

    :pswitch_6
    invoke-interface {p0, v9, v10}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    return-void

    :pswitch_7
    invoke-interface {p0, v7, v8}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    return-void

    :pswitch_8
    invoke-interface {p0, v7, v8}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    return-void

    :pswitch_9
    invoke-interface {p0, v3, v4}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    return-void

    :pswitch_a
    invoke-interface {p0, v9, v10}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    return-void

    :pswitch_b
    invoke-interface {p0, v7, v8}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    return-void

    :pswitch_c
    invoke-interface {p0, v1, v2}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    return-void

    :pswitch_d
    invoke-interface {p0, v5, v6}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    return-void

    :pswitch_e
    invoke-interface {p0, v9, v10}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
