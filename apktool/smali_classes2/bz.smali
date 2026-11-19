.class public final synthetic Lbz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/google/firebase/installations/FirebaseInstallations;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/installations/FirebaseInstallations;I)V
    .locals 0

    iput p2, p0, Lbz;->b:I

    iput-object p1, p0, Lbz;->c:Lcom/google/firebase/installations/FirebaseInstallations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lbz;->b:I

    iget-object p0, p0, Lbz;->c:Lcom/google/firebase/installations/FirebaseInstallations;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/google/firebase/installations/FirebaseInstallations;->m:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->c()V

    return-void

    :pswitch_0
    sget-object v0, Lcom/google/firebase/installations/FirebaseInstallations;->m:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->c()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
