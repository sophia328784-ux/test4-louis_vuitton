.class public final synthetic Lgr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/credentials/CredentialManagerCallback;

.field public final synthetic d:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Landroidx/credentials/CredentialManagerCallback;Ljava/lang/Exception;I)V
    .locals 0

    iput p3, p0, Lgr;->b:I

    iput-object p1, p0, Lgr;->c:Landroidx/credentials/CredentialManagerCallback;

    iput-object p2, p0, Lgr;->d:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lgr;->b:I

    iget-object v1, p0, Lgr;->d:Ljava/lang/Exception;

    iget-object p0, p0, Lgr;->c:Landroidx/credentials/CredentialManagerCallback;

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroidx/credentials/exceptions/ClearCredentialUnknownException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/credentials/exceptions/ClearCredentialUnknownException;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p0, v0}, Landroidx/credentials/CredentialManagerCallback;->a(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    instance-of v0, v1, Landroidx/credentials/exceptions/NoCredentialException;

    if-eqz v0, :cond_0

    check-cast v1, Landroidx/credentials/exceptions/GetCredentialException;

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/credentials/exceptions/GetCredentialUnknownException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/credentials/exceptions/GetCredentialUnknownException;-><init>(Ljava/lang/CharSequence;)V

    move-object v1, v0

    :goto_0
    invoke-interface {p0, v1}, Landroidx/credentials/CredentialManagerCallback;->a(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    new-instance v0, Landroidx/credentials/exceptions/CreateCredentialUnknownException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/credentials/exceptions/CreateCredentialUnknownException;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p0, v0}, Landroidx/credentials/CredentialManagerCallback;->a(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
