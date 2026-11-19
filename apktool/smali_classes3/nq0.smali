.class public final synthetic Lnq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/sightcall/universal/internal/view/ProgressivexImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/sightcall/universal/internal/view/ProgressivexImageView;I)V
    .locals 0

    iput p2, p0, Lnq0;->b:I

    iput-object p1, p0, Lnq0;->c:Lcom/sightcall/universal/internal/view/ProgressivexImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lnq0;->b:I

    iget-object p0, p0, Lnq0;->c:Lcom/sightcall/universal/internal/view/ProgressivexImageView;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->b(Lcom/sightcall/universal/internal/view/ProgressivexImageView;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->d(Lcom/sightcall/universal/internal/view/ProgressivexImageView;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
