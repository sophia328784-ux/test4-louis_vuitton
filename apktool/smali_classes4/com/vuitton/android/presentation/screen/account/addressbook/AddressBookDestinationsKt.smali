.class public abstract Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookDestinationsKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookDestinations$ToAddressEditorPage;Landroidx/fragment/app/FragmentActivity;)Landroid/content/Intent;
    .locals 3

    sget-object v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorActivity;->r:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorActivity$Companion;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookDestinations$ToAddressEditorPage;->a:Z

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookDestinations$ToAddressEditorPage;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "IS_MAIN_ADDRESS"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "ADDRESS_ID"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method
