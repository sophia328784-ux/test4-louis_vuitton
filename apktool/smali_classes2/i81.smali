.class public final synthetic Li81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/l1/i;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Li81;->a:I

    iput-object p1, p0, Li81;->b:Ljava/lang/String;

    iput-object p3, p0, Li81;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/batch/android/l1/c;)V
    .locals 1

    iget v0, p0, Li81;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Li81;->c:Ljava/lang/Object;

    check-cast v0, Ljava/net/URI;

    iget-object p0, p0, Li81;->b:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/batch/android/l1/b;->j(Ljava/lang/String;Ljava/net/URI;Lcom/batch/android/l1/c;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Li81;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Date;

    iget-object p0, p0, Li81;->b:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/batch/android/l1/b;->h(Ljava/lang/String;Ljava/util/Date;Lcom/batch/android/l1/c;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
