.class final synthetic Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity$onCreate$1$1$1$4$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;

    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;->x:Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lwk;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lwk;-><init>(Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;I)V

    const-string v1, "application/pdf"

    invoke-static {p0, p1, v1, v0}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->g(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
