.class public final synthetic Lcom/sightcall/universal/media/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/sightcall/universal/media/a;->b:I

    iput-object p1, p0, Lcom/sightcall/universal/media/a;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sightcall/universal/media/a;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/sightcall/universal/media/a;->b:I

    iget-object v1, p0, Lcom/sightcall/universal/media/a;->d:Ljava/lang/Object;

    iget-object p0, p0, Lcom/sightcall/universal/media/a;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;

    check-cast v1, Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;

    invoke-static {p0, v1}, Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;->a(Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sightcall/universal/media/GroupClient$GroupCallback;

    check-cast v1, Lcom/sightcall/universal/media/GroupClient$GroupCallback;

    invoke-static {p0, v1}, Lcom/sightcall/universal/media/GroupClient$GroupCallback;->a(Lcom/sightcall/universal/media/GroupClient$GroupCallback;Lcom/sightcall/universal/media/GroupClient$GroupCallback;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
