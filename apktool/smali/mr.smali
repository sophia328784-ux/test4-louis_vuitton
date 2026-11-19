.class public final synthetic Lmr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/credentials/CredentialManagerCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/credentials/CredentialManagerCallback;I)V
    .locals 0

    iput p2, p0, Lmr;->b:I

    iput-object p1, p0, Lmr;->c:Landroidx/credentials/CredentialManagerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lmr;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroidx/credentials/exceptions/GetCredentialProviderConfigurationException;

    const-string v1, "getCredentialAsync no provider dependencies found - please ensure the desired provider dependencies are added"

    invoke-direct {v0, v1}, Landroidx/credentials/exceptions/GetCredentialProviderConfigurationException;-><init>(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lmr;->c:Landroidx/credentials/CredentialManagerCallback;

    invoke-interface {p0, v0}, Landroidx/credentials/CredentialManagerCallback;->a(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    new-instance v0, Landroidx/credentials/exceptions/GetCredentialProviderConfigurationException;

    const-string v1, "this device requires a Google Play Services update for the given feature to be supported"

    invoke-direct {v0, v1}, Landroidx/credentials/exceptions/GetCredentialProviderConfigurationException;-><init>(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lmr;->c:Landroidx/credentials/CredentialManagerCallback;

    invoke-interface {p0, v0}, Landroidx/credentials/CredentialManagerCallback;->a(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    new-instance v0, Landroidx/credentials/exceptions/CreateCredentialProviderConfigurationException;

    const-string v1, "createCredentialAsync no provider dependencies found - please ensure the desired provider dependencies are added"

    invoke-direct {v0, v1}, Landroidx/credentials/exceptions/CreateCredentialProviderConfigurationException;-><init>(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lmr;->c:Landroidx/credentials/CredentialManagerCallback;

    invoke-interface {p0, v0}, Landroidx/credentials/CredentialManagerCallback;->a(Ljava/lang/Object;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lmr;->c:Landroidx/credentials/CredentialManagerCallback;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroidx/credentials/CredentialManagerCallback;->onResult(Ljava/lang/Object;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lmr;->c:Landroidx/credentials/CredentialManagerCallback;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroidx/credentials/CredentialManagerCallback;->onResult(Ljava/lang/Object;)V

    return-void

    :pswitch_4
    new-instance v0, Landroidx/credentials/exceptions/ClearCredentialProviderConfigurationException;

    const-string v1, "clearCredentialStateAsync no provider dependencies found - please ensure the desired provider dependencies are added"

    invoke-direct {v0, v1}, Landroidx/credentials/exceptions/ClearCredentialProviderConfigurationException;-><init>(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lmr;->c:Landroidx/credentials/CredentialManagerCallback;

    invoke-interface {p0, v0}, Landroidx/credentials/CredentialManagerCallback;->a(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
