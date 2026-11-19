.class public final synthetic Lcom/vuitton/android/presentation/screen/certificates/nfc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/nfc/NfcAdapter$ReaderCallback;


# instance fields
.field public final synthetic a:Lcom/vuitton/android/presentation/screen/certificates/nfc/NfcManager;

.field public final synthetic b:Lkotlin/jvm/functions/Function2;

.field public final synthetic c:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/certificates/nfc/NfcManager;Lkotlin/jvm/functions/Function2;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/b;->a:Lcom/vuitton/android/presentation/screen/certificates/nfc/NfcManager;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/b;->b:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/b;->c:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onTagDiscovered(Landroid/nfc/Tag;)V
    .locals 3

    sget v0, Lcom/vuitton/android/presentation/screen/certificates/nfc/NfcManager;->d:I

    invoke-static {p1}, Landroid/nfc/tech/NfcV;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcV;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/b;->a:Lcom/vuitton/android/presentation/screen/certificates/nfc/NfcManager;

    if-eqz v0, :cond_0

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/certificates/nfc/NfcManager;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p1}, Landroid/nfc/Tag;->getId()[B

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "NFC tag detected - ID: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/b;->b:Lkotlin/jvm/functions/Function2;

    check-cast p1, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl$startScanning$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/b;->c:Landroid/app/Activity;

    invoke-virtual {p1, v0, p0}, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl$startScanning$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object p0, v1, Lcom/vuitton/android/presentation/screen/certificates/nfc/NfcManager;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string p1, "Tag detected but is not NfcV type"

    const/4 v0, 0x0

    const-string v1, "NfcManager"

    invoke-interface {p0, v1, p1, v0}, Lcom/vuitton/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
