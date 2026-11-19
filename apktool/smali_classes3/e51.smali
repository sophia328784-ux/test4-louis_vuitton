.class public final synthetic Le51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/sightcall/universal/ui/UniversalLoadingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sightcall/universal/ui/UniversalLoadingActivity;I)V
    .locals 0

    iput p2, p0, Le51;->b:I

    iput-object p1, p0, Le51;->c:Lcom/sightcall/universal/ui/UniversalLoadingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Le51;->b:I

    iget-object p0, p0, Le51;->c:Lcom/sightcall/universal/ui/UniversalLoadingActivity;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->w(Lcom/sightcall/universal/ui/UniversalLoadingActivity;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->D(Lcom/sightcall/universal/ui/UniversalLoadingActivity;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
