.class public abstract Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManagerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroid/content/Context;Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_0

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v0, :cond_2

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager;

    new-instance v1, Landroidx/credentials/CredentialManagerImpl;

    invoke-direct {v1, p0}, Landroidx/credentials/CredentialManagerImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager;-><init>(Landroidx/credentials/CredentialManager;)V

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    move-object v1, p0

    :goto_0
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v1, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager;

    return-object v1
.end method
