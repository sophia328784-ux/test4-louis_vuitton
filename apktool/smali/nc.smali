.class public final synthetic Lnc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/common/util/BackgroundThreadStateHandler;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/util/BackgroundThreadStateHandler;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lnc;->b:I

    iput-object p1, p0, Lnc;->c:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    iput-object p2, p0, Lnc;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lnc;->b:I

    iget-object v1, p0, Lnc;->d:Ljava/lang/Object;

    iget-object p0, p0, Lnc;->c:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->f:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->b(Ljava/lang/Object;)V

    :cond_0
    return-void

    :pswitch_0
    iget v0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->f:I

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->b(Ljava/lang/Object;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
